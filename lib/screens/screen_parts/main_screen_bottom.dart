import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/colors.dart';
import '../../res/constants.dart';
import '../../res/images.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SvgPicture.asset(logo),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text('Dastur haqida', style: textStyleW500Size14),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text('Reklama', style: textStyleW500Size14),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text('Mahfiylik siyosati', style: textStyleW500Size14),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                        '© 2023 Platina.uz. Barcha huquqlar himoyalangan. «Platina.uz» saytida joylangan maʼlumotlar muallifning shaxsiy fikri. Saytda joylangan har qanday materiallarni yozma ruxsatsiz foydalanish taʼqiqlanadi.',
                        style: textStyleW400Size12)),
                Text(
                  'Oʼzbekiston Respublikasi Prezidenti Аdministratsiyasi huzuridagi Аxborot va ommaviy kommunikatsiyalar agentligi tomonidan 02.12.2022 sanasida №051412 sonli guvohnoma bilan OАV sifatida roʼyxatga olingan',
                  style: textStyleW400Size12,
                ),
                divider,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(telegram, color: blue3),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(instagram, color: blue3),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(facebook, color: blue3),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(youtube, color: blue3),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(twitter, color: blue3),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(tiktok, color: blue3),
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), color: bg),
                      child: Center(
                        child: Text(
                          '18+',
                          style: textStyleW600Size12,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      SvgPicture.asset(redMedia),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'IT-kompaniyasi tomonidan ishlab chiqildi',
                          style: textStyleW400Size12,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
