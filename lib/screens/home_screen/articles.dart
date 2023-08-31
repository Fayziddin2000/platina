import 'package:flutter/material.dart';

import '../../logic/models/Popular/Post.dart';
import '../../logic/services/articles_service.dart';
import '../../res/constants.dart';
import '../screen_parts/title.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

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
          title('Maqola'),
          FutureBuilder<Post?>(
            future: articles(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    final data = snapshot.data!.results![index];
                    return Column(
                      children: [
                        if (index != 0) divider,
                        Container(
                          height: 240,
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://cp.dev.platina.uz${snapshot.data!.results![index].image!}',
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
                      ],
                    );
                  },
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          )
        ],
      ),
    );
  }
}
