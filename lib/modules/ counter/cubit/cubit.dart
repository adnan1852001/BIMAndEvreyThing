import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testoop/modules/%20counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>            //< بدو states>
{
  CounterCubit(): super(CounterInitialState());
   static CounterCubit get(context)=>BlocProvider.of(context);
  int counter=5;
  void minus(){
    counter--;
    emit(CounterAddState(counter));
  }
  void add(){
    counter++;
    emit(CounterMinusState(counter));
  }
}