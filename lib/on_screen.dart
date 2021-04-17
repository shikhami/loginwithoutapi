import 'package:flutter/material.dart';
import './main.dart';

class OnScreen extends StatelessWidget {
  static const routeName = './onscreen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: deviceSize.height * 0.2),
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
          SizedBox(height: deviceSize.height * 0.05),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    width: 12,
                    child: FlatButton(
                      child: Text(''),
                      height: 40,
                      color: Colors.blue[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 9,
                    width: 14,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[200]),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Stack(alignment: Alignment.topCenter, children: [
                SizedBox(
                  width: 12,
                  child: FlatButton(
                    child: Text(''),
                    height: 60,
                    color: Colors.indigo[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 9,
                  width: 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.indigo[400]),
                ),
              ]),
              SizedBox(
                width: 8,
              ),
              Stack(alignment: Alignment.topCenter, children: [
                SizedBox(
                  width: 12,
                  child: FlatButton(
                    child: Text(''),
                    height: 70,
                    color: Colors.indigo[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 9,
                  width: 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.indigo[500]),
                ),
              ]),
              SizedBox(
                width: 8,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    width: 12,
                    child: FlatButton(
                      child: Text(''),
                      height: 50,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 9,
                    width: 14,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[400]),
                  ),
                ],
              ),
            ],
          )),
          SizedBox(height: deviceSize.height * 0.05),
          Text('Stay on the top of your finance',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              )),
          SizedBox(height: deviceSize.height * 0.03),
          Container(
            alignment: Alignment.bottomRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                '                                          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
                maxLines: 1,
              ),
            ),
          ),
          SizedBox(height: deviceSize.height * 0.2),
          SizedBox(
            width: deviceSize.width * 0.75,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              color: Color(0xFF3B286D),
              height: 45,
              child: Text('가입하기',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.of(context).pushNamed(MyHomePage.routeName);
              },
            ),
          ),
          SizedBox(height: deviceSize.height * 0.02),
          Container(
              alignment: Alignment.center,
              child: Text('로그인', style: TextStyle(color: Color(0xFFB7B7B7)))),
        ],
      ),
    );
  }
}
