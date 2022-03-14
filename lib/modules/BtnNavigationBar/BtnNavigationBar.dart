// ignore: file_names
// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';  //create database مكتبة
import 'package:testoop/modules/Archived_Tasks/archeved_tasks.dart';
import 'package:testoop/modules/Done_Tasks/DoneTasks.dart';
import 'package:testoop/modules/NewMenu_Tasks/menu_tasks.dart';
import 'package:testoop/shared/component/componts.dart';
import 'package:testoop/shared/component/constants.dart';
import 'package:testoop/shared/cubit/cubit.dart';
import 'package:testoop/shared/cubit/states.dart';

class BtnNavigationBar extends StatelessWidget {

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var titleTextController = TextEditingController();
  var timeTextController = TextEditingController();
  var dateTextController = TextEditingController();

//**********************************************************************************************************************************
  Future <String> nameget() async {
    return 'Adnan khella0';
  }

  @override
// void initState() {
//  super.initState();
//   createDataBase();
// }///// استدعاء الميثود  create database
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDataBase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {
        },
        builder: (BuildContext context, AppStates state) {
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                AppCubit
                    .get(context)
                    .nameAppar[ AppCubit
                    .get(context)
                    .currnetindex],
              ),
            ),
            floatingActionButton: FloatingActionButton(

              onPressed: () {
                if (AppCubit.get(context).isBottomShoown) {
                  if (formKey.currentState!.validate()) {
                    Navigator.pop(context);                       //سكرتتتت
                    AppCubit.get(context).insertToDatabase(
                        title: titleTextController.text,
                        time:timeTextController.text,
                        date: dateTextController.text

                    );

                    // insertToDatabase(
                    //   date: dateTextController.text,
                    //   time: timeTextController.text,
                    //   title: timeTextController.text,
                    // ).then((value) {          /////////////هدوووووول استدعاااااء للميثود
                    //   Navigator.pop(context);
                    //   isBottomShown=false;
                    //   // setState(() {
                    //   //   IconSheet=Icons.edit;
                    //   // });
                    // });

                  }
                } else {
                  scaffoldKey.currentState!.showBottomSheet((context) =>
                      Container(
                        color: Colors.white,

                        child: Padding(

                          padding: const EdgeInsets.all(30.0),
                          child: Form(

                            key: formKey,
                            child: Column(

                              mainAxisSize: MainAxisSize.min,
                              children:
                              [
                                defaultTextFelid(
                                    readOnly: false,

                                    onnTap: () {},

                                    label: 'Task Title',
                                    type: TextInputType.text,
                                    prefix: Icons.title,
                                    textErrorValidate: 'Please Enter task title.',
                                    controller: titleTextController,
                                    borderRadiusDouble: 10.0

                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                defaultTextFelid(
                                  readOnly: true,
                                    onnTap: () {
                                      showTimePicker( ////////Time bakerrrrrrr
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      ).then((value) {
                                        timeTextController.text =
                                            value!.format(context).toString();
                                        print(value.format(context).toString());
                                      });
                                    },
                                    label: 'Task Time',
                                    type: TextInputType.text,
                                    prefix: Icons.access_time_rounded,
                                    textErrorValidate: 'Please Enter task Time.',
                                    controller: timeTextController,
                                    borderRadiusDouble: 10.0

                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                defaultTextFelid(
                                    readOnly: true,

                                    onnTap: () {
                                      showDatePicker(context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.parse("2025-11-25")
                                      ).then((value) {
                                        dateTextController.text =
                                            DateFormat.yMMMd().format(value!);
                                        print(DateFormat.yMMMd().format(value));
                                      });
                                    },
                                    label: 'Task Date',
                                    type: TextInputType.datetime,
                                    prefix: Icons.date_range,
                                    textErrorValidate: 'Please Enter task Date.',
                                    controller: dateTextController,
                                    borderRadiusDouble: 10.0


                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    elevation: 100.0,
                  ).closed.then((value) {
                    AppCubit.get(context).ChangeBotSheetState(isBottomShown: false,icon:Icons.edit );

                  });
                  AppCubit.get(context).ChangeBotSheetState(isBottomShown: true,icon:Icons.add );


                }
              },
              child: Icon(AppCubit.get(context).IconSheet),

            ),
            bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
              elevation: 10.0,
              currentIndex: AppCubit
                  .get(context)
                  .currnetindex, // تتحكم في لون الضغط علي btn
              onTap: (index) {
                AppCubit.get(context).changeIndex(index);
              },
              items:
              [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu,),
                  label: 'Menu',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.archive_outlined,),
                  label: 'Archived',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline,),
                  label: 'Done',
                ),

              ],
            ),
            body: AppCubit
                .get(context)
                .screens[ AppCubit
                .get(context)
                .currnetindex],

          );
        },
      ),
    );
  }
}

//-----------------------------------------------------------------------------------------------------------------------------


