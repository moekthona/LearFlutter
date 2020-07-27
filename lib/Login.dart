import 'package:TestFlutter/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:TestFlutter/MainPage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            body: BodyLogin()));
  }
}

class BodyLogin extends StatelessWidget {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final FocusNode _focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              child: Image.asset("prasac_logo.png"),
            ),
            SizedBox(height: 50),
            Column(
              children: <Widget>[
                TextField(
                    controller: txtUsername,
                    decoration: InputDecoration(
                        labelText: "Username",
                        focusColor: PrimaryColor,
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:PrimaryColor,width: 1)))),
                SizedBox(height: 15),
                TextField(
                    focusNode: _focusNode,
                    controller: txtPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:PrimaryColor,width: 1))
                    )),
                SizedBox(height: 15),
                RaisedButton(
                  color: PrimaryColor,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Text("Login",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  onPressed: () => {
                    navigateToSubPage(context),
                    print("Username = " +
                        txtUsername.text +
                        "Password = " +
                        txtPassword.text)
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
  }
  Color _getInputTextColor() {
    return _focusNode.hasFocus ? Colors.white : Colors.pink;
  }

}

