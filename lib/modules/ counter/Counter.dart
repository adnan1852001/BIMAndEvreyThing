import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testoop/modules/%20counter/cubit/cubit.dart';

import 'cubit/states.dart';

class  Counter extends StatelessWidget {
  int count=0;
  @override

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context, state){
          if (state is CounterAddState)
          {
            print('Minuse${state.counter}');  /////// البرنتاتتتت للفحصصصصصص
          }
          if (state is CounterMinusState)
          {
            print('ADD${state.counter}');
          }
        },
        builder: (context, state)
        {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                  'Counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                    CounterCubit.get(context).add();

                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),


                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),


                  ),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}


