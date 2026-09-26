import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_event.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(LoginSuccess());
  }

}