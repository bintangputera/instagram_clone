import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/modules/home/models/feeds.dart';
import 'package:readmore/readmore.dart';

Widget feedsItem(BuildContext context) {
  return Container(
    height: 2500,
    width: double.infinity,
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: feedsList.length,
      itemBuilder: (BuildContext context, int index) {
        Feeds feeds = feedsList[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                feeds.user.username,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              trailing: SvgPicture.asset("assets/ellipsis-vertical.svg",
                  width: 20, color: Colors.black),
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  feeds.user.imageUrl,
                ),
              ),
            ),
            ClipRRect(
              child: Image(
                image: NetworkImage(feeds.imageUrl),
              ),
            ),
            ListTile(
              minLeadingWidth: 100,
              leading: SizedBox(
                width: 120,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/heart-outline.svg",
                      width: 30,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      "assets/chatbubble-outline.svg",
                      width: 28,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/paper-plane-outline.svg",
                      width: 28,
                    ),
                  ],
                ),
              ),
              trailing: SvgPicture.asset(
                "assets/bookmark-outline.svg",
                width: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${feeds.likeCount.toString()} suka",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      feeds.user.username,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    ReadMoreText(
                      feeds.caption,
                      style: TextStyle(color: Colors.black),
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "lainnya",
                      trimExpandedText: "sedikit",
                      colorClickableText: Colors.grey,
                    ),
                    SizedBox(height: 8,),
                    Text("Lihat semua ${feeds.commentCount} komentar", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 8,),
                    Text("${feeds.hour} jam yang lalu", style: TextStyle(color: Colors.grey, fontSize: 10),),
                  ],
                ),
              ),
            )
          ],
        );
      },
    ),
  );
}
