import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipesapp/components/my_bottom_navigation_bar.dart';
import 'package:recipesapp/components/page_receipe_list.dart';
import 'package:recipesapp/components/popular_receiplist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe7eefb),
      body: SafeArea(
          child: ListView(
        primary: true,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.5, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Receipes",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0E0E2D)),
                ),
                SizedBox(
                  width: 36,
                  child: SvgPicture.asset("assets/svg/icon-nav.svg"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.53,
          ),
          const PageViewRecipeList(),
          SizedBox(
            height: 42,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                SvgPicture.asset("assets/svg/icon-popular.svg"),
                SizedBox(
                  width: 4.65,
                ),
                Text(
                  "Popular",
                  style: TextStyle(color: Color(0xffF9AE89)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          const PopularReceipeList()
        ],
      )),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
