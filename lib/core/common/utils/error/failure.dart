import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;
  final Object? object;

  const Failure({
    this.message,
    this.object,
  });

  @override
  List<Object?> get props => [
        message,
        object,
      ];
}

class ServerFailure extends Failure {
  const ServerFailure({
    super.message,
    super.object,
  });

  factory ServerFailure.fromDioException({
    DioException? dioException,
    Object? object,
  }) {
    switch (dioException?.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(message: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return const ServerFailure(message: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(message: 'Receive Timeout');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: dioException?.response!.statusCode!,
          response: dioException?.response,
        );
      case DioExceptionType.connectionError:
        return const ServerFailure(message: 'Connection Error');
      case DioExceptionType.badCertificate:
        return const ServerFailure(message: 'Bad Certificate');
      case DioExceptionType.cancel:
        return const ServerFailure(message: 'Request To Api Server Cancelled');
      case DioExceptionType.unknown:
        {
          if (dioException!.message!.contains('SocketException')) {
            return const ServerFailure(
              message: 'Check Your Internet Connection',
            );
          } else {
            return const ServerFailure(message: 'Unknown Error');
          }
        }
      default:
        return ServerFailure(object: object);
    }
  }

  factory ServerFailure.fromResponse({
    int? statusCode,
    dynamic response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else if (statusCode == 404) {
      return const ServerFailure(
        message: 'Your request not found, Please try later',
      );
    } else if (statusCode == 500) {
      return const ServerFailure(
        message: 'Internal server error, please try later',
      );
    } else {
      return const ServerFailure(
        message: 'Oops there was an error, Please try later',
      );
    }
  }
}
