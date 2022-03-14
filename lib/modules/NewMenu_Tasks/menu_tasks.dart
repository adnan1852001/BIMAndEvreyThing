// ignore: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testoop/shared/component/componts.dart';
import 'package:testoop/shared/cubit/cubit.dart';
import 'package:testoop/shared/cubit/states.dart';

class MenuTasks extends StatelessWidget {
  const MenuTasks({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

       return BlocConsumer<AppCubit,AppStates>(
       listener: (context, state) {},
       builder: (context, state) {
         var tasks=AppCubit.get(context).tasks;
         return ListView.separated(

           itemBuilder: (context, index) => bulidTaskItem(

           title: tasks[index]['title'],
           date: tasks[index]['date'],
           time: tasks[index]['time'],
         ),
           separatorBuilder: (context, index) => Padding(
             padding: const EdgeInsets.symmetric(
               horizontal: 20.0,
             ),
             child: Container(
               height: 1.0,
               width: double.infinity,
               color: Colors.black12,
             ),
           ),
           itemCount:tasks.length,
         );
       },
       );
      }
  }


