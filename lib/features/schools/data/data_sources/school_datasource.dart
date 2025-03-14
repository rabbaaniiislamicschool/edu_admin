import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/schools/data/models/school_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';

abstract class SchoolDataSource {
  Future<Either<Failure, void>> createSchool(SchoolModel school);

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
      await _client.from('schools').insert(school.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteSchool(int schoolId) {
    return safeRequest(() async {
      await _client
          .from('schools')
          .delete()
          .eq('school_id', schoolId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<SchoolModel>>> fetchAllSchools() {
    return safeRequest(() async {
      final result = await _client
          .from('schools')
          .select('*')
          .withConverter((data) => data.map(SchoolModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, SchoolModel>> fetchSchool(int schoolId) {
    return safeRequest(() async {
      final result = await _client
          .from('schools')
          .select('*')
          .eq('school_id', schoolId)
          .limit(1)
          .single()
          .withConverter(SchoolModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateSchool(SchoolModel school) {
    return safeRequest(() async {
      await _client
          .from('schools')
          .update(school.toJson())
          .eq('school_id', '${school.schoolId}');
      return Right(null);
    });
  }
}
