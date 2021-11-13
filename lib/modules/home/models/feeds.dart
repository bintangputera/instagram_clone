import 'package:instagram_clone/constants/image_url.dart';
import 'package:instagram_clone/modules/home/models/user.dart';

class Feeds {
  final User user;
  final String imageUrl;
  final int likeCount;
  final String caption;
  final int commentCount;
  final int hour;

  Feeds(
      {required this.user,
      required this.imageUrl,
      required this.likeCount,
      required this.caption,
      required this.commentCount,
      required this.hour});
}

var feedsList = [
  Feeds(
    user: userList[0],
    imageUrl: feedsImageUrl[0],
    likeCount: 482,
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper semper orci, id fringilla dui hendrerit viverra. Quisque vel nisl a nulla aliquet hendrerit eu vitae justo. Integer cursus pulvinar sodales. Cras finibus magna nec enim iaculis malesuada. Vivamus mollis vel urna a convallis.",
    commentCount: 14,
    hour: 4,
  ),
  Feeds(
    user: userList[1],
    imageUrl: feedsImageUrl[1],
    likeCount: 126,
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper semper orci, id fringilla dui hendrerit viverra. Quisque vel nisl a nulla aliquet hendrerit eu vitae justo. Integer cursus pulvinar sodales. Cras finibus magna nec enim iaculis malesuada. Vivamus mollis vel urna a convallis.",
    commentCount: 24,
    hour: 11,
  ),
  Feeds(
    user: userList[3],
    imageUrl: feedsImageUrl[3],
    likeCount: 81,
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper semper orci, id fringilla dui hendrerit viverra. Quisque vel nisl a nulla aliquet hendrerit eu vitae justo. Integer cursus pulvinar sodales. Cras finibus magna nec enim iaculis malesuada. Vivamus mollis vel urna a convallis.",
    commentCount: 8,
    hour: 13,
  ),
  Feeds(
    user: userList[2],
    imageUrl: feedsImageUrl[2],
    likeCount: 1204,
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper semper orci, id fringilla dui hendrerit viverra. Quisque vel nisl a nulla aliquet hendrerit eu vitae justo. Integer cursus pulvinar sodales. Cras finibus magna nec enim iaculis malesuada. Vivamus mollis vel urna a convallis.",
    commentCount: 112,
    hour: 15,
  ),
  Feeds(
    user: userList[4],
    imageUrl: feedsImageUrl[4],
    likeCount: 891,
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper semper orci, id fringilla dui hendrerit viverra. Quisque vel nisl a nulla aliquet hendrerit eu vitae justo. Integer cursus pulvinar sodales. Cras finibus magna nec enim iaculis malesuada. Vivamus mollis vel urna a convallis.",
    commentCount: 82,
    hour: 18,
  ),
];
