import 'package:flutter/material.dart';
import 'package:prime_video/assests/assests.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/models/content_model.dart';

import 'Tab Bar Pages/Home Screen/tab_home_screen.dart';
import 'Tab Bar Pages/Kids/tab_kids_screen.dart';
import 'Tab Bar Pages/Movies/tab_movies_screen.dart';
import 'Tab Bar Pages/TVShow Screen/tab_tvshowscreen.dart';

class HomePage extends StatelessWidget {
  final List<Content> contentList;
  const HomePage({Key? key, required this.contentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: kPrimaryColor,
          appBar: AppBar(
            elevation: 5.0,
            leading: null,
            backwardsCompatibility: false,
            centerTitle: true,
             backgroundColor: kPrimaryColor,
            title: Container(
                height: ScreenSize.height! * 0.1,
                width: ScreenSize.width * 0.5,
                child: Image.network(Assets.logo)),
            bottom: TabBar(
              indicatorColor: white,
              tabs: [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'TV Show',
                ),
                Tab(
                  text: 'Movies',
                ),
                Tab(
                  text: 'Kids',
                ),
              ],
            ),
          ),
          body: TabBarView(
            
            children: [
              TabHomeScreen(),
              TabTVShowsScreen(),
              TabMoviesScreen(),
              TabKidsScreen(),
            ],
          )),
    );
  }
}
