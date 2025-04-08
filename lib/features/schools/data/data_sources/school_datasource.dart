import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/schools/data/models/school_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';

abstract class SchoolDataSource {
  Future<Either<Failure, void>> createSchool(SchoolModel school);

  Future<Either<Failure, void>> createSchools(List<SchoolModel> school);

  Future<Either<Failure, void>> updateSchool(SchoolModel school);

  Future<Either<Failure, void>> deleteSchool(int schoolId);

  Future<Either<Failure, SchoolModel>> fetchSchool(int schoolId);

  Future<Either<Failure, List<SchoolModel>>> fetchAllSchools();
}

@LazySingleton(as: SchoolDataSource)
class SchoolDataSourceImpl implements SchoolDataSource {
  final SupabaseClient _client;

  SchoolDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createSchool(SchoolModel school) {
    return safeRequest(() async {
      String? imageUrl = await _uploadSchoolImage(school);

      await _client
          .from('schools')
          .insert(school.copyWith(imageUrl: imageUrl).toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteSchool(int schoolId) {
    return safeRequest(() async {
      await _client.from('schools').delete().eq('school_id', schoolId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<SchoolModel>>> fetchAllSchools() {
    return safeRequest(() async {
      final result = await _client
          .from('schools')
          .select('*, branches(*)')
          .withConverter((data) => data.map(SchoolModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, SchoolModel>> fetchSchool(int schoolId) {
    return safeRequest(() async {
      final result = await _client
          .from('schools')
          .select('*, branches(*)')
          .eq('school_id', schoolId)
          .limit(1)
          .single()
          .withConverter(SchoolModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateSchool(SchoolModel school) async {
    String? imageUrl = await _uploadSchoolImage(school, isUpdate: true);

    return safeRequest(() async {
      await _client
          .from('schools')
          .update(school.copyWith(imageUrl: imageUrl).toJson())
          .eq('school_id', '${school.schoolId}');
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> createSchools(List<SchoolModel> schools) {
    return safeRequest(() async {
      final jsonList = schools.map((model) => model.toJson()).toList();
      await _client.from('schools').insert(jsonList); // Batch insert
      return Right(null);
    });
  }

  Future<String?> _uploadSchoolImage(
    SchoolModel school, {
    bool isUpdate = false,
  }) async {
    if (school.uploadStorage == null) return null;
    final bucket = 'schools';
    final fileName = school.uploadStorage?.fileName;
    final path = 'images/$fileName';

    if (isUpdate && school.imageUrl != null) {
      final path =
          school.imageUrl!.split('/storage/v1/object/public/$bucket/').last;
      await _client.storage.from(bucket).remove([path]);
    }

    await _client.storage
        .from(bucket)
        .uploadBinary(path, school.uploadStorage!.bytes);
    final publicUrl = _client.storage.from(bucket).getPublicUrl(path);
    return publicUrl;
  }
}
