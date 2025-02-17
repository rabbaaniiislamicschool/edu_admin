import 'package:edu_admin/core/utils/hive_registrar.g.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_admin/core/res/strings.dart';
import 'package:edu_admin/core/routes/nested_routes.dart';
import 'package:edu_admin/core/utils/hive_helper.dart';
import 'package:edu_admin/di/di.config.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../core/res/env.dart';
import '../core/usecase/usecase.dart';
import '../features/auth/data/local/models/user_login_data.dart';
import '../features/auth/domain/use_cases/check_auth_status_usecase.dart';
import 'package:logger/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;


final getIt = GetIt.asNewInstance();

@injectableInit
Future<void> configureDependencies(String environment) async => getIt.init(environment: environment);

@module
abstract class AppModule {

  @lazySingleton
  @preResolve
  Future<SupabaseClient> provideSupabase(http.Client client) async {
    await Supabase.initialize(url: Env.baseUrl, anonKey: Env.apiKey, httpClient: client);
    return Supabase.instance.client;
  }

  @lazySingleton
  @preResolve
  Future<HiveHelper> provideHive() async {
    await Hive.initFlutter();
    Hive.registerAdapters();
    Hive.openBox<String?>(userIdBox);
    Hive.openBox<UserLoginData?>(userBox);
    return HiveHelper();
  }

  @singleton
  Logger provideLogger() {
    return Logger();
  }

  @singleton
  http.Client provideHttp() {
    return http.Client();
  }

  @lazySingleton
  GoRouter provideGoRouter() {
    return GoRouter(
      routes: $appRoutes,
      initialLocation: '/login',
      redirect: (context, state) async {
        final useCase = getIt<CheckAuthStatusUseCase>();
        final authResult = await useCase.execute(NoParams());
        final isAuthenticated = authResult.getOrElse((l) => false);
        // final authState = context.read<AuthBloc>().state;
        // final isAuthenticated = authState.status == AuthStatus.authenticated;
        final isLoggingIn = state.matchedLocation == '/login';
        final goingToForgetPassword = state.matchedLocation == '/lupa-password';
        getIt<Logger>().d('isAuthenticated: $isAuthenticated');
        if (!isAuthenticated && !isLoggingIn) {
          if(goingToForgetPassword){
            return '/lupa-password';
          }
          return '/login';
        } else if (isAuthenticated && isLoggingIn) {
          return '/';
        }
        return null;
      },
    );
  }
}
