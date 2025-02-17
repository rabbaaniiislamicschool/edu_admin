import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/res/env.dart';
import '../../../../core/utils/safe_request.dart';
import '../../../auth/data/remote/models/user_model.dart';

abstract class ForgetPasswordRemoteDataSource {
  Future<Either<Failure, UserModel>> validateAndForgetPassword(
    String studentId,
    String dob,
    String? newPassword,
  );

  Future<Either<Failure, void>> updatePassword(String newPassword);
}

@LazySingleton(as: ForgetPasswordRemoteDataSource)
class ForgetPasswordRemoteDataSourceImpl
    implements ForgetPasswordRemoteDataSource {
  final http.Client _httpClient;
  final SupabaseClient _client;

  ForgetPasswordRemoteDataSourceImpl(this._httpClient, this._client);

  @override
  Future<Either<Failure, UserModel>> validateAndForgetPassword(
    String studentId,
    String dob,
    String? newPassword,
  ) async {
    try {
      final response = await _httpClient.post(
        Uri.parse('${Env.apiUrl}forget-password'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'studentNumberId': studentId,
          'dateOfBirth': dob,
          'newPassword': newPassword,
        }),
      );
      final List<dynamic> responseData = json.decode(response.body);
      final List<UserModel> result =
          responseData.map((data) => UserModel.fromJson(data)).toList();

      return Right(result.first);
    } catch (error) {
      return Left(Failure.server(
        'Data tidak ditemukan, silahkan coba kembali',
      ));
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword(String newPassword) async {
    return safeRequest(
      () async {
        await _client.auth.updateUser(
          UserAttributes(password: newPassword),
        );
        return Right(null);
      },
    );
  }
}
