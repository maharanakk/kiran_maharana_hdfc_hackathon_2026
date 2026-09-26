import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_event.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String phoneNumber = '';
  String pin = '';

  LoginBloc() : super(LoginInitial()) {
    on<PhoneNumberChanged>((event, emit) {
      phoneNumber = event.phoneNumber;
    });

    on<PinChanged>((event, emit) {
      pin = event.pin;
    });

    on<LoginButtonPressed>((event, emit) async {
      if (phoneNumber.isEmpty) {
        emit(LoginFailure('Please enter phone number'));
        return;
      }

      if (pin.isEmpty) {
        emit(LoginFailure('Please enter PIN'));
        return;
      }

      emit(LoginLoading());

      // API call can be added here.

      await Future.delayed(const Duration(seconds: 1));

      emit(LoginSuccess());
    });

    on<ForgotPinPressed>((event, emit) {
      emit(NavigateToForgotPin());
    });
  }
}