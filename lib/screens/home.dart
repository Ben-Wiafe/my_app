import 'package:flutter/material.dart';

import 'welcome.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:GestureDetector(
            onTap:() => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePage()))
            },
            child: Container(
              color:Colors.pink,
              child:const Center(
                  child:Text('Home Screen'),
                ),
            ),
          )),
    );
  }
}
