abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final String phoneNumber;
  final String pin;

  LoginButtonPressed({required this.phoneNumber, required this.pin});
}
