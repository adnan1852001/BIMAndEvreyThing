

import 'package:flutter/material.dart';
import 'package:testoop/shared/cubit/cubit.dart';

Widget defaultButton({
  //هدول بارميتر
  double width = double.infinity,
  Color background = Colors.cyan,
  required Function() function, // تنساااااااااااااش ()
  required String text,
  double radues = 10.0,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radues),
      ),
    );

Widget defaultTextFelid({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefix,
  required String textErrorValidate,
  required double borderRadiusDouble,
  required Function() onnTap,
  required bool readOnly,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (val) {
        print(val);
      },
      onChanged: (val) {
        print(val);
      },
      onTap: onnTap,
      readOnly: readOnly,
      validator: (val) {
        if (val!.isEmpty) {
          return textErrorValidate;
        }
      },
      decoration: InputDecoration(
        // hintText: 'Email',
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadiusDouble),
          gapPadding: 5,
        ),
        prefixIcon: Icon(prefix),
      ),
    );

Widget bulidTaskItem(
    {
      required String title,
      required String time,
      required String date
    }
    ) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
               CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.cyan,
            child: Text(
             date,
              style:const  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        const  SizedBox(
            width: 10.0,
          ),
                Expanded(
                  child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:  CrossAxisAlignment.start,
            children:  [
              Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  ),
              ),
              const SizedBox(
                  height: 5.0,
              ),
              Text(
                  time,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
              ),
            ],
          ),
                ),
        const  SizedBox(
            width: 5.0,
          ),
               IconButton(
            onPressed: (){},
            icon: Icon( Icons.delete_rounded),
            color: Colors.red,

          ),
        const  SizedBox(
            width: 5.0,
          ),
               IconButton(
              onPressed: (){

              },
                 icon: Icon( Icons.archive_outlined ),
                 color: Colors.green,

               ),
        const  SizedBox(
            width: 5.0,
          ),
               IconButton(
            onPressed: (){

            },
                 icon: Icon( Icons.check_circle_outline ),
                 color: Colors.green,
          )

        ],
      ),
    );
