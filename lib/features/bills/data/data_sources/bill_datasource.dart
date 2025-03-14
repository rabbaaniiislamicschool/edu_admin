import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/bills/data/models/bill_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';

abstract class BillDataSource {
  Future<Either<Failure, void>> createBill(BillModel bill);

  Future<Either<Failure, void>> updateBill(BillModel bill);

  Future<Either<Failure, void>> deleteBill(int billId);

  Future<Either<Failure, BillModel>> fetchBill(int billId);

  Future<Either<Failure, List<BillModel>>> fetchAllBills();
}

@LazySingleton(as: BillDataSource)
class BillDataSourceImpl implements BillDataSource {
  final SupabaseClient _client;

  BillDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createBill(BillModel bill) {
    return safeRequest(() async {
      await _client.from('bills').insert(bill.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteBill(int billId) {
    return safeRequest(() async {
      await _client
          .from('bills')
          .delete()
          .eq('bill_id', billId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<BillModel>>> fetchAllBills() {
    return safeRequest(() async {
      final result = await _client
          .from('bills')
          .select('*')
          .withConverter((data) => data.map(BillModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, BillModel>> fetchBill(int billId) {
    return safeRequest(() async {
      final result = await _client
          .from('bills')
          .select('*')
          .eq('bill_id', billId)
          .limit(1)
          .single()
          .withConverter(BillModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateBill(BillModel bill) {
    return safeRequest(() async {
      await _client
          .from('bills')
          .update(bill.toJson())
          .eq('bill_id', '${bill.billId}');
      return Right(null);
    });
  }
}
