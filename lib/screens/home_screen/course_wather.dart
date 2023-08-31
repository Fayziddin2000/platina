import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/logic/models/Weather/Weather.dart';
import 'package:platina/logic/services/course_weather_service.dart';

import '../../logic/models/Course.dart';
import '../../res/colors.dart';
import '../../res/constants.dart';
import '../../res/images.dart';

class CourseWeather extends StatefulWidget {
  const CourseWeather({super.key});

  @override
  State<CourseWeather> createState() => _CourseWeatherState();
}

class _CourseWeatherState extends State<CourseWeather> {
  bool visibleTag = false;

  String? tag;

  List<Course>? courseData;
  Weather? weatherData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: bg,
          height: 48,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder<List<Course>?>(
                  future: courseService(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      courseData = snapshot.data;
                      return GestureDetector(
                        onTap: () {
                          if (tag == 'money' && visibleTag == true) {
                            setState(() {
                              tag = null;
                              visibleTag = false;
                            });
                          } else {
                            setState(() {
                              tag = 'money';
                              visibleTag = true;
                            });
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16),
                          child: Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: SvgPicture.asset(moneyUsa)),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Text(courseData!.first.ccy!,
                                            style: TextStyle(
                                                color: mainColor,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      Text(courseData!.first.rate!,
                                          style: TextStyle(
                                              color: double.parse(courseData!.first.diff!) < 0 ? Colors.red :Colors.green,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                  Transform.scale(
                                    scaleY: double.parse(courseData!.first.diff!) > 0
                                        ? -1
                                        : 1,
                                    child: SvgPicture.asset(
                                      dropOff,
                                      color:
                                      double.parse(courseData!.first.diff!) > 0
                                          ? Colors.green
                                          : null,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  }),
              GestureDetector(
                onTap: () {
                  if (tag == 'weather' && visibleTag == true) {
                    setState(() {
                      tag = null;
                      visibleTag = false;
                    });
                  } else {
                    setState(() {
                      tag = 'weather';
                      visibleTag = true;
                    });
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: SvgPicture.asset(
                            weather,
                          )),
                      Text(
                        '+9°C',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: visibleTag,
          child: tag == 'money'
              ? Container(
                  color: Colors.white,
                  height: 48,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: SvgPicture.asset(moneyEuro)),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: Text(courseData![1].ccy!,
                                          style: TextStyle(
                                              color: mainColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Text(courseData![1].rate!,
                                        style: TextStyle(
                                            color: double.parse(courseData![1].diff!) < 0 ? Colors.red :Colors.green,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Transform.scale(
                                  scaleY: double.parse(courseData![1].diff!) > 0
                                      ? -1
                                      : 1,
                                  child: SvgPicture.asset(
                                    dropOff,
                                    color:
                                    double.parse(courseData![1].diff!) > 0
                                        ? Colors.green
                                        : null,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: SvgPicture.asset(moneyRus)),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: Text(courseData![2].ccy!,
                                          style: textStyleW500Size17),
                                    ),
                                    Text(courseData![2].rate!,
                                        style: TextStyle(
                                            color: double.parse(courseData![2].diff!) < 0 ? Colors.red :Colors.green,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Transform.scale(
                                  scaleY: double.parse(courseData![2].diff!) > 0
                                      ? -1
                                      : 1,
                                  child: SvgPicture.asset(
                                    dropOff,
                                    color:
                                        double.parse(courseData![2].diff!) > 0
                                            ? Colors.green
                                            : null,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  height: 132,
                  width: MediaQuery.of(context).size.width,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.white, Colors.white.withOpacity(0.05)],
                        stops: const [0.7, 1],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '18 янв',
                              style: textStyleW500Size12,
                            ),
                            Text(
                              'Пайшанба',
                              style: textStyleW500Size14,
                            ),
                            SvgPicture.asset(sunny),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '-7°',
                                  style: textStyleW500Size14,
                                ),
                                Text(
                                  '-18°',
                                  style: textStyleW500Size14,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
