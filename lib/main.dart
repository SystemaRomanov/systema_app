import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
      color: const Color(0xFFbbbbbb), width: 2));

    return MaterialApp(
      home: Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(children: [
              SizedBox(height: 70,),
              SizedBox(width: 100, height: 100, child: Placeholder(),),
              SizedBox(height: 10,),
              Text('Введите логин (номер телефона/e-mail)',
              style: TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,0.6)),),
              SizedBox(height: 10,),
              const SizedBox(width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон/e-mail',
                  ),
                ),
              ),
                SizedBox(height: 10,),
                const SizedBox(width: 224,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль',
                       ),
                      ),
                    ),
              SizedBox(height: 10,),
              SizedBox(width:160, height: 40,child: ElevatedButton(onPressed: () {},
                  child:Text('Войти'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0079D0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.0),
                ),
              ),
              )
              ),
              SizedBox(height:10),
              InkWell(child: Text('Регистрация'),onTap:() {}),
              SizedBox(height:10),
              InkWell(child: Text('Забыли пароль?'),onTap:() {}),
            ],    ),
          )),
    );
  }
}

