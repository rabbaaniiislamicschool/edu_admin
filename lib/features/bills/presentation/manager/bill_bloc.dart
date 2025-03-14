import 'dart:async';

import 'package:edu_admin/features/bills/domain/use_cases/fetch_bill_usecase.dart';
import 'package:edu_admin/features/bills/presentation/manager/bill_event.dart';
import 'package:edu_admin/features/bills/presentation/manager/bill_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/create_bill_usecase.dart';
import '../../domain/use_cases/delete_bill_usecase.dart';
import '../../domain/use_cases/fetch_all_bills_usecase.dart';
import '../../domain/use_cases/update_bill_usecase.dart';


@injectable
class BillBloc extends Bloc<BillEvent, BillState> {
  final CreateBillUseCase _createBillUseCase;
  final DeleteBillUseCase _deleteBillUseCase;
  final UpdateBillUseCase _updateBillUseCase;
  final FetchBillUseCase _fetchBillUseCase;
  final FetchAllBillsUseCase _fetchAllBillsUseCase;

  BillBloc(
    this._fetchBillUseCase,
    this._fetchAllBillsUseCase,
    this._createBillUseCase,
    this._deleteBillUseCase,
    this._updateBillUseCase,
  ) : super(BillState.initial()) {
    on<FetchBills>(_onFetchBills);
    on<GetBillById>(_onGetBillById);
    on<DeleteBill>(_onDeleteBill);
    on<UpdateBill>(_onUpdateBill);
    on<CreateBill>(_onCreateBill);
  }

  Future<void> _onFetchBills(
    FetchBills event,
    Emitter<BillState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BillStatus.loading,
        errorMessage: null,
        successMessage: null,
      ),
    );
    final result = await _fetchAllBillsUseCase.execute(null);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BillStatus.failure,
        ),
      ),
      (bills) => emit(
        state.copyWith(
          status: BillStatus.success,
          bills: bills,
        ),
      ),
    );
  }

  Future<void> _onGetBillById(
    GetBillById event,
    Emitter<BillState> emit,
  ) async {
    emit(state.copyWith(status: BillStatus.loading));
    final result = await _fetchBillUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BillStatus.failure,
        ),
      ),
      (bill) => emit(
        state.copyWith(
          status: BillStatus.success,
          bill: bill,
        ),
      ),
    );
  }

  Future<void> _onDeleteBill(
    DeleteBill event,
    Emitter<BillState> emit,
  ) async {
    emit(state.copyWith(status: BillStatus.loading));
    final result = await _deleteBillUseCase.execute(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BillStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: BillStatus.success,
        ),
      ),
    );
  }

  Future<void> _onUpdateBill(
    UpdateBill event,
    Emitter<BillState> emit,
  ) async {
    emit(state.copyWith(status: BillStatus.loading));
    final result = await _updateBillUseCase.execute(event.bill);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BillStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: BillStatus.success,
        ),
      ),
    );
  }

  Future<void> _onCreateBill(
    CreateBill event,
    Emitter<BillState> emit,
  ) async {
    emit(state.copyWith(status: BillStatus.loading));
    final result = await _createBillUseCase.execute(event.bill);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: BillStatus.failure,
        ),
      ),
      (_) => emit(
        state.copyWith(
          successMessage: 'Success',
          status: BillStatus.success,
        ),
      ),
    );
  }
}
