import 'package:flutter/material.dart';
import './on_screen.dart';

class FormScreen extends StatefulWidget {
  static const routeName = './formscreen';

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
            SizedBox(height: deviceSize.height * 0.1),
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
                '회원가입',
                style: TextStyle(color: Colors.black),
              )),
            ),
            SizedBox(height: deviceSize.height * 0.02),
            Center(
              child: SizedBox(
                width: deviceSize.width * 0.85,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please input your Email';
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
                          labelText: '이름',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB7B7B7),
                          ),
                          hintText: '이채민',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                      ),
                      SizedBox(height: deviceSize.height * 0.01),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please input your Email';
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
                          labelText: '휴대폰 번호',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB7B7B7),
                          ),
                          hintText: '+82 111 1111111',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                      ),
                      SizedBox(height: deviceSize.height * 0.01),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please input your Email';
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
                          labelText: '생년월일',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB7B7B7),
                          ),
                          hintText: ' mm - dd-yyyy',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                      ),
                      SizedBox(height: deviceSize.height * 0.01),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please input your Email';
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
                          labelText: ' Email',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFB7B7B7),
                          ),
                          hintText: 'john.doe@alphametics.com',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                      ),
                      SizedBox(height: deviceSize.height * 0.01),
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
                          hintText: "...........",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (value) async {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please input your Password';
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
                      SizedBox(height: deviceSize.height * 0.01),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: '비밀번호 확인',
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
                          hintText: "..........",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (value) async {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please input your Password';
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
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.indigo[800],
                                    ),
                                    SizedBox(width: 10),
                                    Text('최소 8자 이상',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 10),
                                    Text('최소 하나의 대문자',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: deviceSize.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 10),
                                    Text('최소 하나의 숫자',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 10),
                                    Text('최소 하나의 특수문자',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                      SizedBox(height: deviceSize.height * 0.05),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_box,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('이용약관에 동의합니다',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: deviceSize.height * 0.05),
                      SizedBox(
                        width: deviceSize.width * 0.75,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          color: Color(0xFF3B286D),
                          height: 44,
                          child: Text('가입하기',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          onPressed: () {
                            Navigator.of(context).pushNamed(OnScreen.routeName);
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
}
