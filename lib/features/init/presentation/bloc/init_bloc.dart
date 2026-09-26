import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/bloc/init_event.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/bloc/init_state.dart';

class InitialBloc extends Bloc<InitialEvent, InitialState> {
  InitialBloc() : super(InitialStateInitial()) {

    on<LoginClicked>((event, emit) {
      emit(LoginPageState());
    });

    on<SignUpClicked>((event, emit) {
      emit(SignUpPageState());
    });
  }
}