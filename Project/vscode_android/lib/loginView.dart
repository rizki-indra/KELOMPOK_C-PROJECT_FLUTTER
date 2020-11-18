import 'package:flutter/material.dart';
import 'package:vscode_android/constans.dart';
import 'package:vscode_android/main.dart';


class LoginPage extends StatelessWidget {

 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Form(
                child: Column(
                  children: <Widget>[
                    iconLogin(),
                    titleDescription(),
                    textField(),
                    buttonLogin(context),
                    buttonRegister(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget iconLogin() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 40.0),
      ),
      Image.asset(
        "assets/images/icon_login.png",
        width: 200.0,
        height: 250.0,
      )
    ]);
  }

  Widget titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Yuk Berdonasi",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Bergabung bersama kami dan donasikan harta anda di atas langit. donasi dimulai dari Rp 10.000 Rupiah",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            hintText: "Masukkan Email Anda ..... ",
            hintStyle: TextStyle(color: ColorPalette.hintColor, fontSize: 12.0),
          ),
          style: TextStyle(color: Colors.blue),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            hintText: "Masukkan Password Anda ..... ",
            hintStyle: TextStyle(color: ColorPalette.hintColor, fontSize: 12.0),
          ),
          style: TextStyle(color: Colors.blue),
          obscureText: true,
          autofocus: false,

        ),
      ],
    );
  }
  

  Widget buttonLogin(BuildContext context) {
    return Column(
      
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        RaisedButton(
          color: ColorPalette.buttonColor,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: double.infinity,
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }


  Widget buttonRegister(BuildContext context) {
    return new Row(
      children: <Widget>[
        Text(
          'sudah punya akun ?',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          child: Text(
            'Daftar akun',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 11.0,
            ),
          ),
        ),
      ],
    );
  }
}
