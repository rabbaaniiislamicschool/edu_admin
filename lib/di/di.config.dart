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
import 'package:edu_admin/features/home/data/remote/data_sources/student_class_remote_datasource.dart'
    as _i895;
import 'package:edu_admin/features/home/data/repositories/student_repository_impl.dart'
    as _i458;
import 'package:edu_admin/features/home/domain/repositories/student_class_repository.dart'
    as _i4;
import 'package:edu_admin/features/home/domain/use_cases/get_all_users_usecase.dart'
    as _i1044;
import 'package:edu_admin/features/home/domain/use_cases/get_current_user_usecase.dart'
    as _i293;
import 'package:edu_admin/features/home/domain/use_cases/get_student_class_usecase.dart'
    as _i354;
import 'package:edu_admin/features/home/domain/use_cases/logout_usecase.dart'
    as _i3;
import 'package:edu_admin/features/home/presentation/manager/student_class_bloc.dart'
    as _i671;
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
    gh.lazySingleton<_i895.StudentClassRemoteDataSource>(
      () => _i895.StudentClassRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i730.ForgetPasswordRemoteDataSource>(
      () => _i730.ForgetPasswordRemoteDataSourceImpl(
        gh<_i519.Client>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i1011.AuthRemoteDataSource>(
      () => _i522.AuthRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i984.ForgetPasswordRepository>(
      () => _i435.ForgetPasswordRepositoryImpl(
        gh<_i730.ForgetPasswordRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i4.StudentClassRepository>(
      () => _i458.StudentClassRepositoryImpl(
        gh<_i895.StudentClassRemoteDataSource>(),
        gh<_i668.AuthLocalDataSource>(),
      ),
    );
    gh.factory<_i354.GetStudentClassUseCase>(
      () => _i354.GetStudentClassUseCase(gh<_i4.StudentClassRepository>()),
    );
    gh.lazySingleton<_i815.AuthRepository>(
      () => _i219.AuthRepositoryImpl(
        gh<_i668.AuthLocalDataSource>(),
        gh<_i1011.AuthRemoteDataSource>(),
      ),
    );
    gh.factory<_i438.ForgetPasswordUseCase>(
      () => _i438.ForgetPasswordUseCase(gh<_i984.ForgetPasswordRepository>()),
    );
    gh.factory<_i464.UpdatePasswordUseCase>(
      () => _i464.UpdatePasswordUseCase(gh<_i984.ForgetPasswordRepository>()),
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
    gh.factory<_i671.StudentClassBloc>(
      () => _i671.StudentClassBloc(
        gh<_i354.GetStudentClassUseCase>(),
        gh<_i293.GetCurrentUserUsecase>(),
        gh<_i1044.GetAllUsersUseCase>(),
      ),
    );
    gh.factory<_i840.PasswordBloc>(
      () => _i840.PasswordBloc(
        gh<_i438.ForgetPasswordUseCase>(),
        gh<_i464.UpdatePasswordUseCase>(),
      ),
    );
    gh.factory<_i795.AuthBloc>(
      () => _i795.AuthBloc(
        gh<_i301.CheckAuthStatusUseCase>(),
        gh<_i177.LoginUseCase>(),
        gh<_i1034.LogoutUseCase>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i509.AppModule {}
