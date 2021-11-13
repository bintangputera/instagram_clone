import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/widgets/feeds/feeds_item.dart';
import 'package:instagram_clone/widgets/stories/stories_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          SvgPicture.asset(
            "assets/add-circle-outline.svg",
            width: 28,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SvgPicture.asset(
              "assets/heart-outline.svg",
              width: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SvgPicture.asset(
              "assets/paper-plane-outline.svg",
              width: 28,
            ),
          ),
        ],
        title: Text(
          "Instagram",
          style: TextStyle(
              fontFamily: 'Billabong', color: Colors.black, fontSize: 32),
        ),
      ),
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        SizedBox(height: 8,),
        storiesList(),
        Divider(),
        feedsItem(context),
      ],
    );
  }
}
