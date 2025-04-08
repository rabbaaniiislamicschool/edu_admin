import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/divisions/data/models/division_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';

abstract class DivisionDataSource {
  Future<Either<Failure, void>> createDivision(DivisionModel division);

  Future<Either<Failure, void>> createDivisions(List<DivisionModel> division);

  Future<Either<Failure, void>> updateDivision(DivisionModel division);

  Future<Either<Failure, void>> deleteDivision(int divisionId);

  Future<Either<Failure, DivisionModel>> fetchDivision(int divisionId);

  Future<Either<Failure, List<DivisionModel>>> fetchAllDivisions();
}

@LazySingleton(as: DivisionDataSource)
class DivisionDataSourceImpl implements DivisionDataSource {
  final SupabaseClient _client;

  DivisionDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createDivision(DivisionModel division) {
    return safeRequest(() async {
      await _client.from('divisions').insert(division.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteDivision(int divisionId) {
    return safeRequest(() async {
      await _client.from('divisions').delete().eq('division_id', divisionId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<DivisionModel>>> fetchAllDivisions() {
    return safeRequest(() async {
      final result = await _client
          .from('divisions')
          .select('*')
          .withConverter((data) => data.map(DivisionModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, DivisionModel>> fetchDivision(int divisionId) {
    return safeRequest(() async {
      final result = await _client
          .from('divisions')
          .select('*')
          .eq('division_id', divisionId)
          .limit(1)
          .single()
          .withConverter(DivisionModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateDivision(DivisionModel division) async {
    return safeRequest(() async {
      await _client
          .from('divisions')
          .update(division.toJson())
          .eq('division_id', '${division.divisionId}');
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> createDivisions(List<DivisionModel> divisions) {
    return safeRequest(() async {
      final jsonList = divisions.map((model) => model.toJson()).toList();
      await _client.from('divisions').insert(jsonList); // Batch insert
      return Right(null);
    });
  }
}
