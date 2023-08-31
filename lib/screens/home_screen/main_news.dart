import 'package:flutter/material.dart';
import 'package:platina/res/colors.dart';
import 'package:platina/screens/screen_parts/title.dart';

import '../../logic/models/Popular/Post.dart';
import '../../logic/services/popular_post_service.dart';
import '../../logic/services/posts_service.dart';
import '../../res/constants.dart';

class MainNews extends StatelessWidget {
  const MainNews({super.key});

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
          title('Muhim yangiliklar'),
          FutureBuilder<Post?>(
            future: popularPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data?.count == 1) {
                  final data = snapshot.data!.results!.first;
                  return Column(
                    children: [
                      Container(
                        height: 240,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://cp.dev.platina.uz${data.image!}',
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          data.title!,
                          style: textStyleW700Size18,
                        ),
                      ),
                      Text(
                        data.shortDescription!,
                        style: shortDescriptionStyle,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'davomini o`qish',
                            style: forwardStyle,
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Text(data.category!.name!,
                                  style: categoryStyle(
                                      data.category!.color!.toColor())),
                            ),
                            Text(
                              '20 daqiqa avval',
                              style: timeStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          FutureBuilder<Post?>(
            future: post(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const PageScrollPhysics(),
                      itemBuilder: (context, index) {
                        final data = snapshot.data!.results;
                        return Column(
                          children: [
                            divider,
                            SizedBox(
                              height: 88,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(data![index].title!,
                                              maxLines: 5,
                                              style: textStyleW700Size16),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Text(
                                                data[index].category!.name!,
                                                style: categoryStyle(data[index]
                                                    .category!
                                                    .color!
                                                    .toColor()),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 128,
                                    height: 88,
                                    margin: const EdgeInsets.only(left: 16),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://cp.dev.platina.uz${snapshot.data!.results![index].image!}',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ],
      ),
    );
  }
}
