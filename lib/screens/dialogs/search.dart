import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.topCenter,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: const Color.fromRGBO(0, 102, 204, 1), width: 2)),
        child: const TextField(
          decoration: InputDecoration(
            hintTextDirection: TextDirection.ltr,
              border: InputBorder.none,
              hintText: 'Сайт бўйлаб қидирув...',
              hintStyle: TextStyle(
                  color: Color.fromRGBO(115, 124, 152, 1),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
