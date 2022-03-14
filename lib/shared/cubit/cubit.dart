import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:testoop/modules/Archived_Tasks/archeved_tasks.dart';
import 'package:testoop/modules/Done_Tasks/DoneTasks.dart';
import 'package:testoop/modules/NewMenu_Tasks/menu_tasks.dart';
import 'package:testoop/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit(): super(AppIitialState());
  static AppCubit get(context)=>BlocProvider.of(context);   // هاددد عششان تعمل getل كل الميثووود والعناصرررر لكل البرنامج
  int currnetindex = 0;
  var dataBase;
  List<Widget> screens = [
    const MenuTasks(),
    ArchivedTasks(),
    DoneTasks(),
  ];

  List<String>nameAppar = [
    'Menu',
    'Archived',
    'Done'
  ];
  List<Map> tasks= [];
  //******************************************************************************

void changeIndex(int index) {
  currnetindex=index;
  emit(AppChangeBtnState());
}
  void createDataBase() {
    dataBase= openDatabase(
      'todo.db',
      version: 1,
      onCreate:(daeaBase,version){
        print ('on create database');
        daeaBase.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY,title TEXT, date TEXT, time TEXT, stutus TEXT)').then((value){
          print ('on create database');}
        ).catchError((error){
          print ('catchError database${error.tostring()}');
        });
      },
      onOpen:(dataBase){

        getDataFromDataBase(dataBase);
      print('database opend');
      },
    ).then((value){
      dataBase=value;
      emit(AppCreateDataBaseState());
    });
  }
  ////create database

  Future insertToDatabase(
      {
        required String title,             //// هدووووول الي  مااااااخدهمممم
        required String time,
        required String date,
      }) async{
    await dataBase.transaction((Transaction txn) async
    {
     await txn.rawInsert(
          'INSERT INTO tasks(title,date,time,stutus)VALUES("$title","$time","$date","adkgkdk")')
          .then((value) {
        print('$value Insert Successfully');
        emit(AppInsertDataBaseState());
        getDataFromDataBase(dataBase);
      })
          .catchError((error) {
        print('Error Inserting New Record ${error.toString()}');
      });
      return null;
    });
  }
  void getDataFromDataBase(dataBase)async {
   dataBase.rawQuery('SELECT*FROM tasks').then((value) {
     emit(AppGetDateDataBaseState());
   });

  }
  bool isBottomShoown = false;
  IconData IconSheet = Icons.edit;

  void ChangeBotSheetState
  ({
    required bool isBottomShown,
    required IconData icon,
  })
  {
    isBottomShoown =isBottomShown;
    IconSheet=icon;
    emit(AppChangeBtnSheetState());
  }


}






