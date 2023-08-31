import 'package:flutter/material.dart';
import 'package:platina/screens/home_screen/articles.dart';
import 'package:platina/screens/home_screen/author_offered.dart';
import 'package:platina/screens/home_screen/business.dart';
import 'package:platina/screens/home_screen/course_wather.dart';
import 'package:platina/screens/home_screen/main_news.dart';
import 'package:platina/screens/screen_parts/main_screen_bottom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const PageScrollPhysics(),
          children: const [
            CourseWeather(),
            MainNews(),
            AuthorOffered(),
            Articles(),
            BusinessScreen(),
            Bottom(),
          ],
        ),
      ),
    );
  }
}
