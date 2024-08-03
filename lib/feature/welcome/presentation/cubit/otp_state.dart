part of 'otp_cubit.dart';

@immutable
abstract class OtpState extends Equatable {
  const OtpState();
}

/// unknown state, when app loads for first time
class UserLoginInitial extends OtpState {
  @override
  List<Object?> get props => [];
}

/// Loading indicator, for user engagement untill the response is available
class Authenticating extends OtpState {
  @override
  List<Object?> get props => [];
}

/// Successful response from server
class UserAuthenticated extends OtpState {
  final dynamic otpResponse;
  const UserAuthenticated({required this.otpResponse});
  @override
  List<Object?> get props => [otpResponse];
}

/// Failure response, invalid creds, server failure
class UserUnauthenticated extends OtpState {
  final String message;
  const UserUnauthenticated(this.message);
  @override
  List<Object?> get props => [message];

  /// invalid credentials or failure
}
