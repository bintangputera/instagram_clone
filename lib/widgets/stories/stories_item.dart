import 'package:flutter/material.dart';
import 'package:instagram_clone/modules/home/models/user.dart';

Widget storiesList() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      height: 100,
      child: ListView.builder(
        itemCount: userList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          User user = userList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 33,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user.imageUrl),
                    radius: 30.0,
                  ),
                ),
              ),
              Text(user.username, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12),),
            ],
          );
        },
      ),
    ),
  );
}
