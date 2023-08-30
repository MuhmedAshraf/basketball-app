import 'package:basketball_counter_app/Cubit/counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{


  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void counterIncrement({required String team, required int number}){
    if(team == 'A'){
      teamAPoints +=number;
      emit(CounterAIncrementState());
    }
    else{
      teamBPoints +=number;
      emit(CounterBIncrementState());
    }


  }




}