import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/text_themes.dart';
import 'package:prime_video/screens/Movies/movies.dart';
import 'package:prime_video/widgets/coustom_box.dart';

import 'components/coustom_catagory_button.dart';
import 'components/coustom_divider.dart';
import 'components/coustom_text_button.dart';
import 'components/search_text_field.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Search_text_feild(controller: _controller),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CoustomTextButton(title1: 'Browse', title2: 'By'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CoustomBox(title: 'Movies'),
                CoustomBox(title: 'Netflix Orginals'),
              ],
            ),
            SizedBox(
              height: ScreenSize.height! * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CoustomBox(title: 'TV'),
                CoustomBox(title: 'Kids'),
              ],
            ),
            SizedBox(height: ScreenSize.height! * 0.05),
            Text('Genres', style: textStyleGenre),
            CoustomDivider(),
            CoustomCatagoryButton(
              title: 'Drama',
              widget: Movies(),
            ),
            CoustomDivider(),
            CoustomCatagoryButton(
                title: 'Action and Adventure', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Romance', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Comedy', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Thriller', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Horror', widget: Movies()),
            SizedBox(height: ScreenSize.height! * 0.05),
            Text('Languages', style: textStyleGenre),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'English', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Hindi', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Telugu', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Tamil', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Kannada', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Malayam', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Punjabi', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Marathi', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Bengali', widget: Movies()),
            CoustomDivider(),
            CoustomCatagoryButton(title: 'Gujarati', widget: Movies()),
          ],
        ),
      ),
    );
  }
}
