part of 'verify_otp_cubit.dart';

@immutable
abstract class VerifyOtpState extends Equatable {
  const VerifyOtpState();
}

/// unknown state, when app loads for first time
class UserLoginInitial extends VerifyOtpState {
  @override
  List<Object?> get props => [];
}

/// Loading indicator, for user engagement untill the response is available
class Authenticating extends VerifyOtpState {
  @override
  List<Object?> get props => [];
}

/// Successful response from server
class UserAuthenticated extends VerifyOtpState {
  final   VerifyOtpResponse verifyOtpStateResponse;
  const UserAuthenticated({required this.verifyOtpStateResponse});
  @override
  List<Object?> get props => [verifyOtpStateResponse];
}

/// Failure response, invalid creds, server failure
class UserUnauthenticated extends VerifyOtpState {
  final String message;
  const UserUnauthenticated(this.message);
  @override
  List<Object?> get props => [message];

  /// invalid credentials or failure
}
