import 'dart:convert';

import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/di/di.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';

import '../models/user_model.dart';
import 'auth_remote_data_source.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient client;

  AuthRemoteDataSourceImpl(this.client);

  @override
  Future<Either<Failure, UserModel>> login(
    String phoneNumber,
    String password,
  ) async {
    return safeRequest(
      () async {
        final response = await client.auth.signInWithPassword(
          phone: phoneNumber,
          password: password,
        );
        if (response.user == null) {
          return Left(Failure.server('NIS atau password salah'));
        }
        final userId = response.user!.id;
        final user = await fetchUser(userId);
        return user;
      },
    );
  }

  @override
  Future<Either<Failure, UserModel>> fetchUser(String userId) async {
    return safeRequest(
      () async {
        final user = await client
            .from('users')
            .select('*')
            .eq('user_id', userId)
            .withConverter(
              (data) => data.map(UserModel.fromJson).toList(),
            );
        if (user.isEmpty) {
          return Left(Failure.server('Data user tidak ditemukan'));
        }
        return Right(user.first);
      },
    );
  }

  @override
  Future<Either<Failure, void>> logout() async {
    return safeRequest(
      () async {
        await client.auth.signOut();
        return Right(null);
      },
    );
  }
}
