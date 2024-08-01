import 'package:flutter/material.dart';
import 'package:flutterweb/utils/constants.dart';
import 'package:flutterweb/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        child: Column(
          children: [
            Navbar()
          ],
        ),
      )),
    );
  }
}
