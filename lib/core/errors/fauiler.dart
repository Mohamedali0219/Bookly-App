import 'package:dio/dio.dart';

abstract class Fauiler {
  final String? message;
  const Fauiler(this.message);
}

class ServerFailure extends Fauiler {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            'Connection timeout with ApiServer. Please try again!');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer. Please try again!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            'Receive timeout with ApiServer. Please try again!');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate. Please try again!');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled!');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection. Please try again!');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection. Please try again!');
        }
        return ServerFailure('Unknown error. Please try again!');

      default:
        return ServerFailure('Opps something went wrong. Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found. Please try again!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error. Please try again!');
    } else {
      return ServerFailure('Something went wrong. Please try again!');
    }
  }
}
