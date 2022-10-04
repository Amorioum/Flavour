import 'package:amorium/screens/home/widgets/about_box.dart';
import 'package:amorium/screens/home/widgets/bottom_bar.dart';
import 'package:amorium/screens/home/widgets/swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "AMORE",
          style: TextStyle(
            fontFamily: "Gilroy",
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        leading: const Icon(
          Icons.line_style,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.7,
              child: const Swiper(),
            ),
            AboutBox(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
