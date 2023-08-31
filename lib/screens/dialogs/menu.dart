import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/res/colors.dart';
import 'package:platina/res/constants.dart';
import 'package:platina/res/images.dart';

import '../../logic/models/Menu.dart';
import '../../logic/services/menu_response.dart';



class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  List<String> lang = ['Ўзб', 'O’zb', 'Рус', 'Eng'];
  int chooseLang = 0;
  int chooseCate = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: mainColor,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              child: FutureBuilder<List<Menu>?>(
                future: menuResponse(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? ListView.builder(
                          itemCount: snapshot.data?.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final data = snapshot.data?[index];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  chooseCate = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    color: chooseCate == index
                                        ? data!.color?.toColorBG()
                                        : null),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: const EdgeInsets.only(right: 8),
                                      child: SvgPicture.asset(
                                        polygon,
                                        color: chooseCate == index
                                            ? data!.color?.toColor()
                                            : null,
                                      ),
                                    ),
                                    Text((data!.name!),
                                        style: chooseCate == index
                                            ? textStyleW700Size17
                                            : textStyleW500Size17),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      : const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            divider,
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lang.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => setState(
                    () {
                      chooseLang = index;
                    },
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                        color: chooseLang == index ? bg : null,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(lang[index],
                          style: chooseLang == index
                              ? textStyleW700Size14
                              : textStyleW500Size14),
                    ),
                  ),
                ),
              ),
            ),
            divider,
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bg),
                          child: Row(
                            children: [
                              SvgPicture.asset(telegram),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'platinauzb',
                                  style: textStyleW500Size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bg),
                          child: Row(
                            children: [
                              SvgPicture.asset(instagram),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'platinauzb',
                                  style: textStyleW500Size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bg),
                          child: Row(
                            children: [
                              SvgPicture.asset(facebook),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'platinauz',
                                  style: textStyleW500Size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bg),
                          child: Row(
                            children: [
                              SvgPicture.asset(youtube),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'platinauz',
                                  style: textStyleW500Size14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bg),
                          child: Row(
                            children: [
                              SvgPicture.asset(twitter),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'platinauz',
                                  style: textStyleW500Size14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: bg),
                          child: Row(
                            children: [
                              SvgPicture.asset(tiktok),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'platinauz',
                                  style: textStyleW500Size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
