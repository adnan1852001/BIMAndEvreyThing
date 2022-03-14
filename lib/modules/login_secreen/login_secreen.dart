// ignore: file_names
import 'package:flutter/material.dart';
import 'package:testoop/shared/component/componts.dart';

class LoginSecreen extends StatefulWidget {
  @override
  State<LoginSecreen> createState() => _LoginSecreenState();
}

class _LoginSecreenState extends State<LoginSecreen> {
  var  emailControlar= TextEditingController();

  var  passwordControlar= TextEditingController();

  var formkey=GlobalKey<FormState>();

  bool onpassedPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,


                        ),

                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      defaultTextFelid(
                        readOnly: false,
                        onnTap: (){},
                        label: 'email',
                        controller: emailControlar,
                        prefix: Icons.email_outlined,
                        type: TextInputType.emailAddress,
                        textErrorValidate: "Please Enter the Email",
                        borderRadiusDouble: 25.0
                      ),

                      SizedBox(
                        height:20.0,
                      ),
                      TextFormField(
                        controller: passwordControlar,
                       obscureText: onpassedPassword,   // هاد للكملة السر (*******
                        keyboardType:TextInputType.visiblePassword ,
                        onFieldSubmitted: (val){
                          print(val);
                        },
                        validator: (val){
                          if (val!.isEmpty){
                            return 'Please enter the password';
                          }
                          return null;
                        },
                        onChanged: (val){
                          print(val);
                        },
                        decoration:InputDecoration(
                          // hintText: 'Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            gapPadding: 5,
                          ),
                          prefixIcon:Icon(
                            Icons.vpn_key_outlined,

                          ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                onpassedPassword= !onpassedPassword;
                              });
                            },
                            icon: Icon(
                              onpassedPassword?Icons.visibility:Icons.visibility_off,

                            ),
                          ),


                        ) ,
                      ),
                      SizedBox(
                        height:20.0,
                      ),
                      defaultButton(
                        text: 'login',
                        function:(){
                          if (formkey.currentState!.validate()){
                            print(emailControlar.text);
                            print (passwordControlar.text);
                          }

                        }

                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children:
                        [
                          Text(
                              'Don\'t have an accout?',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              'Sign up.',

                            ),
                          )
                        ],

                      ),

                    ],
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
