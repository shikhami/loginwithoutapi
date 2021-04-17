import 'package:flutter/material.dart';
import './on_screen.dart';
import './form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        OnScreen.routeName: (ctx) => OnScreen(),
        MyHomePage.routeName: (ctx) => MyHomePage(),
        FormScreen.routeName: (ctx) => FormScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const routeName = './homescreen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  Map<String, String> credentials = {'Email': '', 'Password': ''};
  final FocusNode _password = FocusNode();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: deviceSize.height * 0.18),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'anph',
                  style: TextStyle(color: Colors.blue[200], fontSize: 18),
                ),
                Text(
                  'amet',
                  style: TextStyle(color: Colors.blue[800], fontSize: 18),
                ),
                Text(
                  'rica',
                  style: TextStyle(color: Colors.deepPurple[900], fontSize: 18),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                  child: Text(
                '로그인',
                style: TextStyle(color: Colors.black),
              )),
            ),
            SizedBox(height: deviceSize.height * 0.08),
            Center(
              child: SizedBox(
                width: deviceSize.width * 0.9,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return '';
                          }
                          if (!value.contains('test@luxpmsoft.com')) {
                            return 'Invalid email';
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(_password);
                        },
                        onSaved: (newValue) {
                          credentials['Email'] = newValue;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB7B7B7),
                          ),
                          hintText: 'Sabahat@gmail.com',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFB7B7B7),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                      ),
                      SizedBox(height: deviceSize.height * 0.02),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: '비밀번호',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB7B7B7),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color(0xff373941),
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFFB7B7B7),
                          ),
                          hintText: "**********",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (value) async {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return '';
                          }
                          if (!value.contains('test1234')) {
                            return 'Wrong Password';
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          credentials['Password'] = newValue;
                        },
                        maxLines: 1,
                        obscureText: !_passwordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _pass,
                      ),
                      SizedBox(height: deviceSize.height * 0.02),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '비밀번호 찾기',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      SizedBox(height: deviceSize.height * 0.2),
                      SizedBox(
                        width: deviceSize.width * 0.75,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          color: Color(0xFF3B286D),
                          height: 45,
                          child: Text('로그인',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          onPressed: () {
                            login();
                          },
                        ),
                      ),
                      SizedBox(height: deviceSize.height * 0.02),
                      Container(
                          alignment: Alignment.center,
                          child: Text('계정이 없으신가요?   가입하기',
                              style: TextStyle(color: Color(0xFFB7B7B7)))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  login() async {
    if (!_formKey.currentState.validate()) {
      return;
    }

    _formKey.currentState.save();
    Navigator.of(context).pushNamed(FormScreen.routeName);
  }
}
