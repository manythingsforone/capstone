import 'package:flutter/material.dart';
import 'package:newsapp_test/components/cal.dart';
import 'package:newsapp_test/components/tiledNewsView.dart';
import 'package:newsapp_test/components/topbar.dart';
import 'package:newsapp_test/components/welcomeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:newsapp_test/components/calendar.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePage createState()=> _HomePage();
}
class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Center(
        child: Container(
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBar(),
                        SizedBox(height: 10),
                        WelcomeWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  //NewsCarousel(),
                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [TiledNewsView()],
                    ),
                  )

                ],
              ),
            )),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new_rounded),
            label: '??????',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '??????',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }
            if (index == 1) {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TableBasicsExample()));
            }
          });
        },
      ),

    );
  }


}