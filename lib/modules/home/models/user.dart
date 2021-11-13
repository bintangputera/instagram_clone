import 'package:instagram_clone/constants/image_url.dart';

class User {

  final String username;
  final String imageUrl;

  User({
    required this.username,
    required this.imageUrl
  });

}

var userList = [
  User(
    username: "bintangpoetra",
    imageUrl: imageUrlList[0]
  ),
  User(
    username: "annemarion",
    imageUrl: imageUrlList[1]
  ),
  User(
    username: "davidcho",
    imageUrl: imageUrlList[2]
  ),
  User(
    username: "belleloui",
    imageUrl: imageUrlList[3]
  ),
  User(
    username: "nathaliayeu",
    imageUrl: imageUrlList[4]
  ),
];