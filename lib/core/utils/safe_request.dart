import 'dart:async';

import 'package:edu_admin/core/res/strings.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../error/failure.dart';

Future<Either<Failure, T>> safeRequest<T>(Future<Either<Failure, T>> Function() request) async {
  try {
    final result = await request();
    return result;
  } on SocketException {
    return Left(
      Failure.network(errorNoInternet),
    );
  } on AuthException catch (error) {
    String message = error.message;
    if(error.code == 'invalid_credentials'){
      message = errorCredentials;
    }
    return Left(
      Failure.server(message),
    );
  } on PostgrestException catch (error) {
    return Left(
      Failure.server(error.message),
    );
  } on StorageException catch (error) {
    return Left(
      Failure.server(error.message),
    );
  } catch (error) {
    return Left(
      Failure.unexpected('$errorUnexpected: $error'),
    );
  }
}

Future<Either<Failure, T>> safeLocalOperation<T>(Future<Either<Failure, T>> Function() operation) async {
  try {
    final result = await operation();
    return result;
  } on HiveError catch (e) {
    if (e.message.contains('corrupted')) {
      await Hive.deleteBoxFromDisk('myBox'); // Reset jika corrupt
      return Left(Failure.local('Penyimpanan rusak. Data telah direset.'));
    } else if (e.message.contains('write')) {
      return Left(Failure.local('Gagal menyimpan data. Pastikan perangkat Anda memiliki cukup ruang.'));
    } else if (e.message.contains('File system error')) {
      return Left(Failure.local('Terjadi kesalahan pada sistem file. Silakan restart aplikasi Anda.'));
    } else {
      return Left(Failure.local('Gagal melakukan operasi. Silakan coba lagi.'));
    }
  } on FormatException catch (e) {
    return Left(Failure.local('Format data tidak valid. Silakan periksa data Anda.'));
  } on TimeoutException catch (e) {
    return Left(Failure.local('Operasi melebihi waktu yang ditentukan. Silakan coba lagi.'));
  } catch (e) {
    print(e);
    return Left(Failure.local('Terjadi kesalahan yang tidak diketahui'));
  }
}
