part of 'signup_cubit.dart';

@immutable
abstract class SignupState extends Equatable {
  const SignupState();
}

/// unknown state, when app loads for first time
class UserLoginInitial extends SignupState {
  @override
  List<Object?> get props => [];
}

/// Loading indicator, for user engagement untill the response is available
class Authenticating extends SignupState {
  @override
  List<Object?> get props => [];
}

/// Successful response from server
class UserAuthenticated extends SignupState {
  final SignupResponse signupResponse;
  const UserAuthenticated({required this.signupResponse});
  @override
  List<Object?> get props => [signupResponse];
}

/// Failure response, invalid creds, server failure
class UserUnauthenticated extends SignupState {
  final String message;
  const UserUnauthenticated(this.message);
  @override
  List<Object?> get props => [message];

  /// invalid credentials or failure
}
