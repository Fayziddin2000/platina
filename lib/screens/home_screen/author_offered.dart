import 'package:flutter/material.dart';
import 'package:platina/res/colors.dart';

import '../../logic/models/Popular/Post.dart';
import '../../logic/services/author_offered.dart';
import '../../res/constants.dart';
import '../screen_parts/title.dart';

class AuthorOffered extends StatelessWidget {
  const AuthorOffered({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 382,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: title('Muharir tanlovi')),
          FutureBuilder<Post?>(
            future: authorOffered(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.results!.length,
                        itemBuilder: (context, index) {
                          final data = snapshot.data!.results;
                          return Container(
                            width: 292,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                Container(
                                  height: 190,
                                  margin: const EdgeInsets.only(bottom: 16),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://cp.dev.platina.uz${snapshot.data!.results![index].image!}',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          data![index].title!,
                                          style: textStyleW700Size16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: const EdgeInsets.only(
                                                right: 14, top: 16),
                                            child: Text(
                                              data[index].category!.name!,
                                              style: categoryStyle(data[index]
                                                  .category!
                                                  .color!
                                                  .toColor()),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          )
        ],
      ),
    );
  }
}
