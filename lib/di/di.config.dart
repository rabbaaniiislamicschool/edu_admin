// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edu_admin/core/utils/hive_helper.dart' as _i198;
import 'package:edu_admin/di/di.dart' as _i509;
import 'package:edu_admin/features/auth/data/local/data_sources/auth_local_data_source.dart'
    as _i668;
import 'package:edu_admin/features/auth/data/local/data_sources/auth_local_data_source_impl.dart'
    as _i186;
import 'package:edu_admin/features/auth/data/remote/data_sources/auth_remote_data_source.dart'
    as _i1011;
import 'package:edu_admin/features/auth/data/remote/data_sources/auth_remote_data_source_impl.dart'
    as _i522;
import 'package:edu_admin/features/auth/data/repositories/auth_repository_impl.dart'
    as _i219;
import 'package:edu_admin/features/auth/domain/repositories/auth_repository.dart'
    as _i815;
import 'package:edu_admin/features/auth/domain/use_cases/check_auth_status_usecase.dart'
    as _i301;
import 'package:edu_admin/features/auth/domain/use_cases/login_usecase.dart'
    as _i177;
import 'package:edu_admin/features/auth/domain/use_cases/logout_usecase.dart'
    as _i1034;
import 'package:edu_admin/features/auth/presentation/manager/auth_bloc.dart'
    as _i795;
import 'package:edu_admin/features/bills/data/data_sources/bill_datasource.dart'
    as _i313;
import 'package:edu_admin/features/bills/data/repositories/bill_repository_impl.dart'
    as _i448;
import 'package:edu_admin/features/bills/domain/repositories/bill_repository.dart'
    as _i111;
import 'package:edu_admin/features/bills/domain/use_cases/create_bill_usecase.dart'
    as _i619;
import 'package:edu_admin/features/bills/domain/use_cases/delete_bill_usecase.dart'
    as _i133;
import 'package:edu_admin/features/bills/domain/use_cases/fetch_all_bills_usecase.dart'
    as _i532;
import 'package:edu_admin/features/bills/domain/use_cases/fetch_bill_usecase.dart'
    as _i454;
import 'package:edu_admin/features/bills/domain/use_cases/update_bill_usecase.dart'
    as _i342;
import 'package:edu_admin/features/bills/presentation/manager/bill_bloc.dart'
    as _i829;
import 'package:edu_admin/features/branchs/data/data_sources/branch_datasource.dart'
    as _i16;
import 'package:edu_admin/features/branchs/data/repositories/branch_repository_impl.dart'
    as _i911;
import 'package:edu_admin/features/branchs/domain/repositories/branch_repository.dart'
    as _i104;
import 'package:edu_admin/features/branchs/domain/use_cases/create_branch_usecase.dart'
    as _i325;
import 'package:edu_admin/features/branchs/domain/use_cases/create_branches_usecase.dart'
    as _i119;
import 'package:edu_admin/features/branchs/domain/use_cases/delete_branch_usecase.dart'
    as _i752;
import 'package:edu_admin/features/branchs/domain/use_cases/fetch_all_branches_usecase.dart'
    as _i392;
import 'package:edu_admin/features/branchs/domain/use_cases/fetch_branch_usecase.dart'
    as _i283;
import 'package:edu_admin/features/branchs/domain/use_cases/update_branch_usecase.dart'
    as _i417;
import 'package:edu_admin/features/branchs/presentation/manager/branch_bloc.dart'
    as _i1022;
import 'package:edu_admin/features/class_fees/data/data_sources/class_fee_datasource.dart'
    as _i963;
import 'package:edu_admin/features/class_fees/data/repositories/class_fee_repository_impl.dart'
    as _i1012;
import 'package:edu_admin/features/class_fees/domain/repositories/class_fee_repository.dart'
    as _i365;
import 'package:edu_admin/features/class_fees/domain/use_cases/create_class_fee_usecase.dart'
    as _i60;
import 'package:edu_admin/features/class_fees/domain/use_cases/delete_class_fee_usecase.dart'
    as _i978;
import 'package:edu_admin/features/class_fees/domain/use_cases/fetch_all_class_fees_usecase.dart'
    as _i384;
import 'package:edu_admin/features/class_fees/domain/use_cases/fetch_class_fee_usecase.dart'
    as _i1020;
import 'package:edu_admin/features/class_fees/domain/use_cases/update_class_fee_usecase.dart'
    as _i816;
import 'package:edu_admin/features/class_fees/presentation/manager/class_fee_bloc.dart'
    as _i98;
import 'package:edu_admin/features/class_teachers/data/data_sources/class_teacher_datasource.dart'
    as _i761;
import 'package:edu_admin/features/class_teachers/data/repositories/class_teacher_repository_impl.dart'
    as _i658;
import 'package:edu_admin/features/class_teachers/domain/repositories/class_teacher_repository.dart'
    as _i30;
import 'package:edu_admin/features/class_teachers/domain/use_cases/create_class_teacher_usecase.dart'
    as _i768;
import 'package:edu_admin/features/class_teachers/domain/use_cases/delete_class_teacher_usecase.dart'
    as _i632;
import 'package:edu_admin/features/class_teachers/domain/use_cases/fetch_all_class_teachers_usecase.dart'
    as _i723;
import 'package:edu_admin/features/class_teachers/domain/use_cases/fetch_class_teacher_usecase.dart'
    as _i68;
import 'package:edu_admin/features/class_teachers/domain/use_cases/update_class_teacher_usecase.dart'
    as _i797;
import 'package:edu_admin/features/class_teachers/presentation/manager/class_teacher_bloc.dart'
    as _i1055;
import 'package:edu_admin/features/classes/data/data_sources/class_datasource.dart'
    as _i75;
import 'package:edu_admin/features/classes/data/repositories/class_repository_impl.dart'
    as _i205;
import 'package:edu_admin/features/classes/domain/repositories/class_repository.dart'
    as _i292;
import 'package:edu_admin/features/classes/domain/use_cases/create_class_usecase.dart'
    as _i558;
import 'package:edu_admin/features/classes/domain/use_cases/delete_class_usecase.dart'
    as _i339;
import 'package:edu_admin/features/classes/domain/use_cases/fetch_all_classes_usecase.dart'
    as _i1034;
import 'package:edu_admin/features/classes/domain/use_cases/fetch_class_usecase.dart'
    as _i158;
import 'package:edu_admin/features/classes/domain/use_cases/update_class_usecase.dart'
    as _i266;
import 'package:edu_admin/features/classes/presentation/manager/class_bloc.dart'
    as _i40;
import 'package:edu_admin/features/employees/data/remote/data_sources/employee_remote_datasource.dart'
    as _i724;
import 'package:edu_admin/features/employees/data/repositories/employee_repository_impl.dart'
    as _i769;
import 'package:edu_admin/features/employees/domain/repositories/employee_repository.dart'
    as _i707;
import 'package:edu_admin/features/employees/domain/use_cases/create_employee_usecase.dart'
    as _i519;
import 'package:edu_admin/features/employees/domain/use_cases/delete_employee_usecase.dart'
    as _i671;
import 'package:edu_admin/features/employees/domain/use_cases/fetch_all_employees_usecase.dart'
    as _i148;
import 'package:edu_admin/features/employees/domain/use_cases/fetch_employee_usecase.dart'
    as _i137;
import 'package:edu_admin/features/employees/domain/use_cases/import_employee_users_usecase.dart'
    as _i1032;
import 'package:edu_admin/features/employees/domain/use_cases/update_employee_usecase.dart'
    as _i964;
import 'package:edu_admin/features/employees/presentation/manager/employee_bloc.dart'
    as _i208;
import 'package:edu_admin/features/fee_types/data/data_sources/fee_type_datasource.dart'
    as _i1010;
import 'package:edu_admin/features/fee_types/data/repositories/fee_type_repository_impl.dart'
    as _i964;
import 'package:edu_admin/features/fee_types/domain/repositories/fee_type_repository.dart'
    as _i536;
import 'package:edu_admin/features/fee_types/domain/use_cases/create_fee_type_usecase.dart'
    as _i62;
import 'package:edu_admin/features/fee_types/domain/use_cases/delete_fee_type_usecase.dart'
    as _i1028;
import 'package:edu_admin/features/fee_types/domain/use_cases/fetch_all_fee_types_usecase.dart'
    as _i624;
import 'package:edu_admin/features/fee_types/domain/use_cases/fetch_fee_type_usecase.dart'
    as _i733;
import 'package:edu_admin/features/fee_types/domain/use_cases/update_fee_type_usecase.dart'
    as _i383;
import 'package:edu_admin/features/fee_types/presentation/manager/fee_type_bloc.dart'
    as _i162;
import 'package:edu_admin/features/forget_password/data/data_sources/forget_password_remote_datasource.dart'
    as _i730;
import 'package:edu_admin/features/forget_password/data/repositories/forget_password_repository_impl.dart'
    as _i435;
import 'package:edu_admin/features/forget_password/domain/repositories/forget_password_repository.dart'
    as _i984;
import 'package:edu_admin/features/forget_password/domain/use_cases/forget_password_usecase.dart'
    as _i438;
import 'package:edu_admin/features/forget_password/domain/use_cases/update_password_usecase.dart'
    as _i464;
import 'package:edu_admin/features/forget_password/presentation/manager/password_bloc.dart'
    as _i840;
import 'package:edu_admin/features/foundations/data/data_sources/foundation_datasource.dart'
    as _i971;
import 'package:edu_admin/features/foundations/data/repositories/foundation_repository_impl.dart'
    as _i268;
import 'package:edu_admin/features/foundations/domain/repositories/foundation_repository.dart'
    as _i821;
import 'package:edu_admin/features/foundations/domain/use_cases/create_foundation_usecase.dart'
    as _i1049;
import 'package:edu_admin/features/foundations/domain/use_cases/create_foundations_usecase.dart'
    as _i542;
import 'package:edu_admin/features/foundations/domain/use_cases/delete_foundation_usecase.dart'
    as _i316;
import 'package:edu_admin/features/foundations/domain/use_cases/fetch_all_foundations_usecase.dart'
    as _i271;
import 'package:edu_admin/features/foundations/domain/use_cases/fetch_foundation_usecase.dart'
    as _i74;
import 'package:edu_admin/features/foundations/domain/use_cases/update_foundation_usecase.dart'
    as _i772;
import 'package:edu_admin/features/foundations/presentation/manager/foundation_bloc.dart'
    as _i685;
import 'package:edu_admin/features/home/domain/use_cases/get_all_users_usecase.dart'
    as _i1044;
import 'package:edu_admin/features/home/domain/use_cases/get_current_user_usecase.dart'
    as _i293;
import 'package:edu_admin/features/home/domain/use_cases/logout_usecase.dart'
    as _i3;
import 'package:edu_admin/features/rooms/data/data_sources/room_datasource.dart'
    as _i806;
import 'package:edu_admin/features/rooms/data/repositories/room_repository_impl.dart'
    as _i298;
import 'package:edu_admin/features/rooms/domain/repositories/school_repository.dart'
    as _i838;
import 'package:edu_admin/features/rooms/domain/use_cases/create_room_usecase.dart'
    as _i667;
import 'package:edu_admin/features/rooms/domain/use_cases/delete_room_usecase.dart'
    as _i959;
import 'package:edu_admin/features/rooms/domain/use_cases/fetch_all_rooms_usecase.dart'
    as _i1070;
import 'package:edu_admin/features/rooms/domain/use_cases/fetch_room_usecase.dart'
    as _i304;
import 'package:edu_admin/features/rooms/domain/use_cases/update_room_usecase.dart'
    as _i842;
import 'package:edu_admin/features/rooms/presentation/manager/room_bloc.dart'
    as _i614;
import 'package:edu_admin/features/schools/data/data_sources/school_datasource.dart'
    as _i976;
import 'package:edu_admin/features/schools/data/repositories/school_repository_impl.dart'
    as _i773;
import 'package:edu_admin/features/schools/domain/repositories/school_repository.dart'
    as _i749;
import 'package:edu_admin/features/schools/domain/use_cases/create_school_usecase.dart'
    as _i70;
import 'package:edu_admin/features/schools/domain/use_cases/delete_school_usecase.dart'
    as _i15;
import 'package:edu_admin/features/schools/domain/use_cases/fetch_all_schools_usecase.dart'
    as _i472;
import 'package:edu_admin/features/schools/domain/use_cases/fetch_school_usecase.dart'
    as _i502;
import 'package:edu_admin/features/schools/domain/use_cases/update_school_usecase.dart'
    as _i346;
import 'package:edu_admin/features/schools/presentation/manager/school_bloc.dart'
    as _i621;
import 'package:edu_admin/features/student_classes/data/data_sources/student_class_datasource.dart'
    as _i899;
import 'package:edu_admin/features/student_classes/data/repositories/student_class_repository_impl.dart'
    as _i993;
import 'package:edu_admin/features/student_classes/domain/repositories/student_class_repository.dart'
    as _i917;
import 'package:edu_admin/features/student_classes/domain/use_cases/create_student_class_usecase.dart'
    as _i649;
import 'package:edu_admin/features/student_classes/domain/use_cases/delete_student_class_usecase.dart'
    as _i792;
import 'package:edu_admin/features/student_classes/domain/use_cases/fetch_all_student_classes_usecase.dart'
    as _i835;
import 'package:edu_admin/features/student_classes/domain/use_cases/fetch_student_class_usecase.dart'
    as _i703;
import 'package:edu_admin/features/student_classes/domain/use_cases/update_student_class_usecase.dart'
    as _i888;
import 'package:edu_admin/features/student_classes/presentation/manager/student_class_bloc.dart'
    as _i222;
import 'package:edu_admin/features/student_fees/data/data_sources/student_fee_datasource.dart'
    as _i350;
import 'package:edu_admin/features/student_fees/data/repositories/student_fee_repository_impl.dart'
    as _i871;
import 'package:edu_admin/features/student_fees/domain/repositories/student_fee_repository.dart'
    as _i156;
import 'package:edu_admin/features/student_fees/domain/use_cases/create_student_fee_usecase.dart'
    as _i56;
import 'package:edu_admin/features/student_fees/domain/use_cases/delete_student_fee_usecase.dart'
    as _i62;
import 'package:edu_admin/features/student_fees/domain/use_cases/fetch_all_student_fees_usecase.dart'
    as _i90;
import 'package:edu_admin/features/student_fees/domain/use_cases/fetch_student_fee_usecase.dart'
    as _i179;
import 'package:edu_admin/features/student_fees/domain/use_cases/update_student_fee_usecase.dart'
    as _i514;
import 'package:edu_admin/features/student_fees/presentation/manager/student_fee_bloc.dart'
    as _i934;
import 'package:edu_admin/features/transactions/data/data_sources/transaction_datasource.dart'
    as _i696;
import 'package:edu_admin/features/transactions/data/repositories/transaction_repository_impl.dart'
    as _i76;
import 'package:edu_admin/features/transactions/domain/repositories/transaction_repository.dart'
    as _i249;
import 'package:edu_admin/features/transactions/domain/use_cases/create_transaction_usecase.dart'
    as _i339;
import 'package:edu_admin/features/transactions/domain/use_cases/delete_transaction_usecase.dart'
    as _i224;
import 'package:edu_admin/features/transactions/domain/use_cases/fetch_all_transactions_usecase.dart'
    as _i946;
import 'package:edu_admin/features/transactions/domain/use_cases/fetch_transaction_usecase.dart'
    as _i236;
import 'package:edu_admin/features/transactions/domain/use_cases/update_transaction_usecase.dart'
    as _i117;
import 'package:edu_admin/features/transactions/presentation/manager/transaction_bloc.dart'
    as _i752;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.singleton<_i974.Logger>(() => appModule.provideLogger());
    gh.singleton<_i519.Client>(() => appModule.provideHttp());
    await gh.lazySingletonAsync<_i198.HiveHelper>(
      () => appModule.provideHive(),
      preResolve: true,
    );
    gh.lazySingleton<_i583.GoRouter>(() => appModule.provideGoRouter());
    gh.lazySingleton<_i668.AuthLocalDataSource>(
      () => _i186.AuthLocalDataSourceImpl(gh<_i198.HiveHelper>()),
    );
    await gh.lazySingletonAsync<_i454.SupabaseClient>(
      () => appModule.provideSupabase(gh<_i519.Client>()),
      preResolve: true,
    );
    gh.lazySingleton<_i75.ClassDataSource>(
      () => _i75.ClassDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i724.EmployeeRemoteDataSource>(
      () => _i724.EmployeeRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i696.TransactionDataSource>(
      () => _i696.TransactionDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i313.BillDataSource>(
      () => _i313.BillDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i249.TransactionRepository>(
      () => _i76.TransactionRepositoryImpl(gh<_i696.TransactionDataSource>()),
    );
    gh.lazySingleton<_i350.StudentFeeDataSource>(
      () => _i350.StudentFeeDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i976.SchoolDataSource>(
      () => _i976.SchoolDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i899.StudentClassDataSource>(
      () => _i899.StudentClassDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i1010.FeeTypeDataSource>(
      () => _i1010.FeeTypeDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i536.FeeTypeRepository>(
      () => _i964.FeeTypeRepositoryImpl(gh<_i1010.FeeTypeDataSource>()),
    );
    gh.lazySingleton<_i806.RoomDataSource>(
      () => _i806.RoomDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i707.EmployeeRepository>(
      () => _i769.EmployeeRepositoryImpl(gh<_i724.EmployeeRemoteDataSource>()),
    );
    gh.lazySingleton<_i749.SchoolRepository>(
      () => _i773.SchoolRepositoryImpl(gh<_i976.SchoolDataSource>()),
    );
    gh.factory<_i236.FetchTransactionUseCase>(
      () => _i236.FetchTransactionUseCase(gh<_i249.TransactionRepository>()),
    );
    gh.factory<_i339.CreateTransactionUseCase>(
      () => _i339.CreateTransactionUseCase(gh<_i249.TransactionRepository>()),
    );
    gh.factory<_i117.UpdateTransactionUseCase>(
      () => _i117.UpdateTransactionUseCase(gh<_i249.TransactionRepository>()),
    );
    gh.factory<_i224.DeleteTransactionUseCase>(
      () => _i224.DeleteTransactionUseCase(gh<_i249.TransactionRepository>()),
    );
    gh.factory<_i946.FetchAllTransactionsUseCase>(
      () =>
          _i946.FetchAllTransactionsUseCase(gh<_i249.TransactionRepository>()),
    );
    gh.lazySingleton<_i156.StudentFeeRepository>(
      () => _i871.StudentFeeRepositoryImpl(gh<_i350.StudentFeeDataSource>()),
    );
    gh.lazySingleton<_i730.ForgetPasswordRemoteDataSource>(
      () => _i730.ForgetPasswordRemoteDataSourceImpl(
        gh<_i519.Client>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i111.BillRepository>(
      () => _i448.BillRepositoryImpl(gh<_i313.BillDataSource>()),
    );
    gh.lazySingleton<_i1011.AuthRemoteDataSource>(
      () => _i522.AuthRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i761.ClassTeacherDataSource>(
      () => _i761.ClassTeacherDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i971.FoundationDataSource>(
      () => _i971.FoundationDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i292.ClassRepository>(
      () => _i205.ClassRepositoryImpl(gh<_i75.ClassDataSource>()),
    );
    gh.lazySingleton<_i963.ClassFeeDataSource>(
      () => _i963.ClassFeeDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i16.BranchDataSource>(
      () => _i16.BranchDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i365.ClassFeeRepository>(
      () => _i1012.ClassFeeRepositoryImpl(gh<_i963.ClassFeeDataSource>()),
    );
    gh.factory<_i532.FetchAllBillsUseCase>(
      () => _i532.FetchAllBillsUseCase(gh<_i111.BillRepository>()),
    );
    gh.factory<_i619.CreateBillUseCase>(
      () => _i619.CreateBillUseCase(gh<_i111.BillRepository>()),
    );
    gh.factory<_i454.FetchBillUseCase>(
      () => _i454.FetchBillUseCase(gh<_i111.BillRepository>()),
    );
    gh.factory<_i342.UpdateBillUseCase>(
      () => _i342.UpdateBillUseCase(gh<_i111.BillRepository>()),
    );
    gh.factory<_i133.DeleteBillUseCase>(
      () => _i133.DeleteBillUseCase(gh<_i111.BillRepository>()),
    );
    gh.lazySingleton<_i984.ForgetPasswordRepository>(
      () => _i435.ForgetPasswordRepositoryImpl(
        gh<_i730.ForgetPasswordRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i917.StudentClassRepository>(
      () =>
          _i993.StudentClassRepositoryImpl(gh<_i899.StudentClassDataSource>()),
    );
    gh.factory<_i671.DeleteEmployeeUseCase>(
      () => _i671.DeleteEmployeeUseCase(gh<_i707.EmployeeRepository>()),
    );
    gh.factory<_i148.FetchAllEmployeesUseCase>(
      () => _i148.FetchAllEmployeesUseCase(gh<_i707.EmployeeRepository>()),
    );
    gh.factory<_i519.CreateEmployeeUseCase>(
      () => _i519.CreateEmployeeUseCase(gh<_i707.EmployeeRepository>()),
    );
    gh.factory<_i137.FetchEmployeeUseCase>(
      () => _i137.FetchEmployeeUseCase(gh<_i707.EmployeeRepository>()),
    );
    gh.factory<_i1032.ImportEmployeeUsersUseCase>(
      () => _i1032.ImportEmployeeUsersUseCase(gh<_i707.EmployeeRepository>()),
    );
    gh.factory<_i964.UpdateEmployeeUseCase>(
      () => _i964.UpdateEmployeeUseCase(gh<_i707.EmployeeRepository>()),
    );
    gh.factory<_i266.UpdateClassUseCase>(
      () => _i266.UpdateClassUseCase(gh<_i292.ClassRepository>()),
    );
    gh.factory<_i339.DeleteClassUseCase>(
      () => _i339.DeleteClassUseCase(gh<_i292.ClassRepository>()),
    );
    gh.factory<_i558.CreateClassUseCase>(
      () => _i558.CreateClassUseCase(gh<_i292.ClassRepository>()),
    );
    gh.factory<_i158.FetchClassUseCase>(
      () => _i158.FetchClassUseCase(gh<_i292.ClassRepository>()),
    );
    gh.factory<_i1034.FetchAllClassUseCase>(
      () => _i1034.FetchAllClassUseCase(gh<_i292.ClassRepository>()),
    );
    gh.factory<_i62.CreateFeeTypeUseCase>(
      () => _i62.CreateFeeTypeUseCase(gh<_i536.FeeTypeRepository>()),
    );
    gh.factory<_i733.FetchFeeTypeUseCase>(
      () => _i733.FetchFeeTypeUseCase(gh<_i536.FeeTypeRepository>()),
    );
    gh.factory<_i383.UpdateFeeTypeUseCase>(
      () => _i383.UpdateFeeTypeUseCase(gh<_i536.FeeTypeRepository>()),
    );
    gh.factory<_i624.FetchAllFeeTypesUseCase>(
      () => _i624.FetchAllFeeTypesUseCase(gh<_i536.FeeTypeRepository>()),
    );
    gh.factory<_i1028.DeleteFeeTypeUseCase>(
      () => _i1028.DeleteFeeTypeUseCase(gh<_i536.FeeTypeRepository>()),
    );
    gh.factory<_i752.TransactionBloc>(
      () => _i752.TransactionBloc(
        gh<_i236.FetchTransactionUseCase>(),
        gh<_i946.FetchAllTransactionsUseCase>(),
        gh<_i339.CreateTransactionUseCase>(),
        gh<_i224.DeleteTransactionUseCase>(),
        gh<_i117.UpdateTransactionUseCase>(),
      ),
    );
    gh.factory<_i888.UpdateStudentClassUseCase>(
      () => _i888.UpdateStudentClassUseCase(gh<_i917.StudentClassRepository>()),
    );
    gh.factory<_i835.FetchAllStudentClasssUseCase>(
      () => _i835.FetchAllStudentClasssUseCase(
        gh<_i917.StudentClassRepository>(),
      ),
    );
    gh.factory<_i649.CreateStudentClassUseCase>(
      () => _i649.CreateStudentClassUseCase(gh<_i917.StudentClassRepository>()),
    );
    gh.factory<_i703.FetchStudentClassUseCase>(
      () => _i703.FetchStudentClassUseCase(gh<_i917.StudentClassRepository>()),
    );
    gh.factory<_i792.DeleteStudentClassUseCase>(
      () => _i792.DeleteStudentClassUseCase(gh<_i917.StudentClassRepository>()),
    );
    gh.factory<_i222.StudentClassBloc>(
      () => _i222.StudentClassBloc(
        gh<_i703.FetchStudentClassUseCase>(),
        gh<_i835.FetchAllStudentClasssUseCase>(),
        gh<_i649.CreateStudentClassUseCase>(),
        gh<_i792.DeleteStudentClassUseCase>(),
        gh<_i888.UpdateStudentClassUseCase>(),
      ),
    );
    gh.lazySingleton<_i838.RoomRepository>(
      () => _i298.RoomRepositoryImpl(gh<_i806.RoomDataSource>()),
    );
    gh.factory<_i502.FetchSchoolUseCase>(
      () => _i502.FetchSchoolUseCase(gh<_i749.SchoolRepository>()),
    );
    gh.factory<_i15.DeleteSchoolUseCase>(
      () => _i15.DeleteSchoolUseCase(gh<_i749.SchoolRepository>()),
    );
    gh.factory<_i70.CreateSchoolUseCase>(
      () => _i70.CreateSchoolUseCase(gh<_i749.SchoolRepository>()),
    );
    gh.factory<_i346.UpdateSchoolUseCase>(
      () => _i346.UpdateSchoolUseCase(gh<_i749.SchoolRepository>()),
    );
    gh.factory<_i472.FetchAllSchoolsUseCase>(
      () => _i472.FetchAllSchoolsUseCase(gh<_i749.SchoolRepository>()),
    );
    gh.lazySingleton<_i30.ClassTeacherRepository>(
      () =>
          _i658.ClassTeacherRepositoryImpl(gh<_i761.ClassTeacherDataSource>()),
    );
    gh.lazySingleton<_i104.BranchRepository>(
      () => _i911.BranchRepositoryImpl(gh<_i16.BranchDataSource>()),
    );
    gh.factory<_i90.FetchAllStudentFeesUseCase>(
      () => _i90.FetchAllStudentFeesUseCase(gh<_i156.StudentFeeRepository>()),
    );
    gh.factory<_i179.FetchStudentFeeUseCase>(
      () => _i179.FetchStudentFeeUseCase(gh<_i156.StudentFeeRepository>()),
    );
    gh.factory<_i56.CreateStudentFeeUseCase>(
      () => _i56.CreateStudentFeeUseCase(gh<_i156.StudentFeeRepository>()),
    );
    gh.factory<_i514.UpdateStudentFeeUseCase>(
      () => _i514.UpdateStudentFeeUseCase(gh<_i156.StudentFeeRepository>()),
    );
    gh.factory<_i62.DeleteStudentFeeUseCase>(
      () => _i62.DeleteStudentFeeUseCase(gh<_i156.StudentFeeRepository>()),
    );
    gh.lazySingleton<_i815.AuthRepository>(
      () => _i219.AuthRepositoryImpl(
        gh<_i668.AuthLocalDataSource>(),
        gh<_i1011.AuthRemoteDataSource>(),
      ),
    );
    gh.factory<_i621.SchoolBloc>(
      () => _i621.SchoolBloc(
        gh<_i502.FetchSchoolUseCase>(),
        gh<_i472.FetchAllSchoolsUseCase>(),
        gh<_i70.CreateSchoolUseCase>(),
        gh<_i15.DeleteSchoolUseCase>(),
        gh<_i346.UpdateSchoolUseCase>(),
      ),
    );
    gh.factory<_i829.BillBloc>(
      () => _i829.BillBloc(
        gh<_i454.FetchBillUseCase>(),
        gh<_i532.FetchAllBillsUseCase>(),
        gh<_i619.CreateBillUseCase>(),
        gh<_i133.DeleteBillUseCase>(),
        gh<_i342.UpdateBillUseCase>(),
      ),
    );
    gh.factory<_i40.ClassBloc>(
      () => _i40.ClassBloc(
        gh<_i158.FetchClassUseCase>(),
        gh<_i1034.FetchAllClassUseCase>(),
        gh<_i558.CreateClassUseCase>(),
        gh<_i339.DeleteClassUseCase>(),
        gh<_i266.UpdateClassUseCase>(),
      ),
    );
    gh.lazySingleton<_i821.FoundationRepository>(
      () => _i268.FoundationRepositoryImpl(gh<_i971.FoundationDataSource>()),
    );
    gh.factory<_i119.CreateBranchesUseCase>(
      () => _i119.CreateBranchesUseCase(gh<_i104.BranchRepository>()),
    );
    gh.factory<_i417.UpdateBranchUseCase>(
      () => _i417.UpdateBranchUseCase(gh<_i104.BranchRepository>()),
    );
    gh.factory<_i392.FetchAllBranchesUseCase>(
      () => _i392.FetchAllBranchesUseCase(gh<_i104.BranchRepository>()),
    );
    gh.factory<_i325.CreateBranchUseCase>(
      () => _i325.CreateBranchUseCase(gh<_i104.BranchRepository>()),
    );
    gh.factory<_i283.FetchBranchUseCase>(
      () => _i283.FetchBranchUseCase(gh<_i104.BranchRepository>()),
    );
    gh.factory<_i752.DeleteBranchUseCase>(
      () => _i752.DeleteBranchUseCase(gh<_i104.BranchRepository>()),
    );
    gh.factory<_i162.FeeTypeBloc>(
      () => _i162.FeeTypeBloc(
        gh<_i733.FetchFeeTypeUseCase>(),
        gh<_i624.FetchAllFeeTypesUseCase>(),
        gh<_i62.CreateFeeTypeUseCase>(),
        gh<_i1028.DeleteFeeTypeUseCase>(),
        gh<_i383.UpdateFeeTypeUseCase>(),
      ),
    );
    gh.factory<_i384.FetchAllClassFeesUseCase>(
      () => _i384.FetchAllClassFeesUseCase(gh<_i365.ClassFeeRepository>()),
    );
    gh.factory<_i978.DeleteClassFeeUseCase>(
      () => _i978.DeleteClassFeeUseCase(gh<_i365.ClassFeeRepository>()),
    );
    gh.factory<_i1020.FetchClassFeeUseCase>(
      () => _i1020.FetchClassFeeUseCase(gh<_i365.ClassFeeRepository>()),
    );
    gh.factory<_i816.UpdateClassFeeUseCase>(
      () => _i816.UpdateClassFeeUseCase(gh<_i365.ClassFeeRepository>()),
    );
    gh.factory<_i60.CreateClassFeeUseCase>(
      () => _i60.CreateClassFeeUseCase(gh<_i365.ClassFeeRepository>()),
    );
    gh.factory<_i1022.BranchBloc>(
      () => _i1022.BranchBloc(
        gh<_i283.FetchBranchUseCase>(),
        gh<_i392.FetchAllBranchesUseCase>(),
        gh<_i325.CreateBranchUseCase>(),
        gh<_i119.CreateBranchesUseCase>(),
        gh<_i752.DeleteBranchUseCase>(),
        gh<_i417.UpdateBranchUseCase>(),
      ),
    );
    gh.factory<_i438.ForgetPasswordUseCase>(
      () => _i438.ForgetPasswordUseCase(gh<_i984.ForgetPasswordRepository>()),
    );
    gh.factory<_i464.UpdatePasswordUseCase>(
      () => _i464.UpdatePasswordUseCase(gh<_i984.ForgetPasswordRepository>()),
    );
    gh.factory<_i797.UpdateClassTeacherUseCase>(
      () => _i797.UpdateClassTeacherUseCase(gh<_i30.ClassTeacherRepository>()),
    );
    gh.factory<_i768.CreateClassTeacherUseCase>(
      () => _i768.CreateClassTeacherUseCase(gh<_i30.ClassTeacherRepository>()),
    );
    gh.factory<_i68.FetchClassTeacherUseCase>(
      () => _i68.FetchClassTeacherUseCase(gh<_i30.ClassTeacherRepository>()),
    );
    gh.factory<_i632.DeleteClassTeacherUseCase>(
      () => _i632.DeleteClassTeacherUseCase(gh<_i30.ClassTeacherRepository>()),
    );
    gh.factory<_i723.FetchAllClassTeachersUseCase>(
      () =>
          _i723.FetchAllClassTeachersUseCase(gh<_i30.ClassTeacherRepository>()),
    );
    gh.factory<_i934.StudentFeeBloc>(
      () => _i934.StudentFeeBloc(
        gh<_i179.FetchStudentFeeUseCase>(),
        gh<_i90.FetchAllStudentFeesUseCase>(),
        gh<_i56.CreateStudentFeeUseCase>(),
        gh<_i62.DeleteStudentFeeUseCase>(),
        gh<_i514.UpdateStudentFeeUseCase>(),
      ),
    );
    gh.factory<_i293.GetCurrentUserUsecase>(
      () => _i293.GetCurrentUserUsecase(gh<_i815.AuthRepository>()),
    );
    gh.factory<_i1044.GetAllUsersUseCase>(
      () => _i1044.GetAllUsersUseCase(gh<_i815.AuthRepository>()),
    );
    gh.factory<_i3.LogoutUseCase>(
      () => _i3.LogoutUseCase(gh<_i815.AuthRepository>()),
    );
    gh.factory<_i177.LoginUseCase>(
      () => _i177.LoginUseCase(gh<_i815.AuthRepository>()),
    );
    gh.factory<_i1034.LogoutUseCase>(
      () => _i1034.LogoutUseCase(gh<_i815.AuthRepository>()),
    );
    gh.factory<_i301.CheckAuthStatusUseCase>(
      () => _i301.CheckAuthStatusUseCase(gh<_i815.AuthRepository>()),
    );
    gh.factory<_i208.EmployeeBloc>(
      () => _i208.EmployeeBloc(
        gh<_i137.FetchEmployeeUseCase>(),
        gh<_i148.FetchAllEmployeesUseCase>(),
        gh<_i519.CreateEmployeeUseCase>(),
        gh<_i671.DeleteEmployeeUseCase>(),
        gh<_i964.UpdateEmployeeUseCase>(),
        gh<_i1032.ImportEmployeeUsersUseCase>(),
      ),
    );
    gh.factory<_i840.PasswordBloc>(
      () => _i840.PasswordBloc(
        gh<_i438.ForgetPasswordUseCase>(),
        gh<_i464.UpdatePasswordUseCase>(),
      ),
    );
    gh.factory<_i842.UpdateRoomUseCase>(
      () => _i842.UpdateRoomUseCase(gh<_i838.RoomRepository>()),
    );
    gh.factory<_i304.FetchRoomUseCase>(
      () => _i304.FetchRoomUseCase(gh<_i838.RoomRepository>()),
    );
    gh.factory<_i959.DeleteRoomUseCase>(
      () => _i959.DeleteRoomUseCase(gh<_i838.RoomRepository>()),
    );
    gh.factory<_i667.CreateRoomUseCase>(
      () => _i667.CreateRoomUseCase(gh<_i838.RoomRepository>()),
    );
    gh.factory<_i1070.FetchAllRoomsUseCase>(
      () => _i1070.FetchAllRoomsUseCase(gh<_i838.RoomRepository>()),
    );
    gh.factory<_i98.ClassFeeBloc>(
      () => _i98.ClassFeeBloc(
        gh<_i1020.FetchClassFeeUseCase>(),
        gh<_i384.FetchAllClassFeesUseCase>(),
        gh<_i60.CreateClassFeeUseCase>(),
        gh<_i978.DeleteClassFeeUseCase>(),
        gh<_i816.UpdateClassFeeUseCase>(),
      ),
    );
    gh.factory<_i772.UpdateFoundationUseCase>(
      () => _i772.UpdateFoundationUseCase(gh<_i821.FoundationRepository>()),
    );
    gh.factory<_i271.FetchAllFoundationsUseCase>(
      () => _i271.FetchAllFoundationsUseCase(gh<_i821.FoundationRepository>()),
    );
    gh.factory<_i1049.CreateFoundationUseCase>(
      () => _i1049.CreateFoundationUseCase(gh<_i821.FoundationRepository>()),
    );
    gh.factory<_i316.DeleteFoundationUseCase>(
      () => _i316.DeleteFoundationUseCase(gh<_i821.FoundationRepository>()),
    );
    gh.factory<_i74.FetchFoundationUseCase>(
      () => _i74.FetchFoundationUseCase(gh<_i821.FoundationRepository>()),
    );
    gh.factory<_i542.CreateFoundationsUseCase>(
      () => _i542.CreateFoundationsUseCase(gh<_i821.FoundationRepository>()),
    );
    gh.factory<_i795.AuthBloc>(
      () => _i795.AuthBloc(
        gh<_i301.CheckAuthStatusUseCase>(),
        gh<_i177.LoginUseCase>(),
        gh<_i1034.LogoutUseCase>(),
      ),
    );
    gh.factory<_i614.RoomBloc>(
      () => _i614.RoomBloc(
        gh<_i304.FetchRoomUseCase>(),
        gh<_i1070.FetchAllRoomsUseCase>(),
        gh<_i667.CreateRoomUseCase>(),
        gh<_i959.DeleteRoomUseCase>(),
        gh<_i842.UpdateRoomUseCase>(),
      ),
    );
    gh.factory<_i1055.ClassTeacherBloc>(
      () => _i1055.ClassTeacherBloc(
        gh<_i68.FetchClassTeacherUseCase>(),
        gh<_i723.FetchAllClassTeachersUseCase>(),
        gh<_i768.CreateClassTeacherUseCase>(),
        gh<_i632.DeleteClassTeacherUseCase>(),
        gh<_i797.UpdateClassTeacherUseCase>(),
      ),
    );
    gh.factory<_i685.FoundationBloc>(
      () => _i685.FoundationBloc(
        gh<_i74.FetchFoundationUseCase>(),
        gh<_i271.FetchAllFoundationsUseCase>(),
        gh<_i1049.CreateFoundationUseCase>(),
        gh<_i542.CreateFoundationsUseCase>(),
        gh<_i316.DeleteFoundationUseCase>(),
        gh<_i772.UpdateFoundationUseCase>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i509.AppModule {}
