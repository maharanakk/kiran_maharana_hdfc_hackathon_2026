abstract class LoginEvent {}

class PhoneNumberChanged extends LoginEvent {
  final String phoneNumber;

  PhoneNumberChanged(this.phoneNumber);
}

class PinChanged extends LoginEvent {
  final String pin;

  PinChanged(this.pin);
}

class LoginButtonPressed extends LoginEvent {}

class ForgotPinPressed extends LoginEvent {}