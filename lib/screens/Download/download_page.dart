import 'package:flutter/material.dart';
import 'package:prime_video/assests/assests.dart';
import 'package:prime_video/assests/text.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';

import 'components/app_bar_content.dart';
import 'components/coustom_download_page_text_icon_button.dart';

class DownloadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              'Downloads',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            bottom: PreferredSize(
                child: AppBarContent(), preferredSize: Size.fromHeight(20))),
        body: ListView(
          children: [
            Container(
              height: ScreenSize.height! * 0.15,
              width: ScreenSize.width,
              color: kDownloadCardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    Assets.alta,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            kDownloadCardTextName,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: white,
                            ),
                          ),
                          Text(
                            '120 min   156MB',
                            style: TextStyle(color: kSecondarytextColor),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: ScreenSize.height! * 0.3,
                                color: kDownloadCardColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: crossStart,
                                    children: [
                                      SizedBox(
                                        height: ScreenSize.height!*0.03,
                                      ),
                                      Text(
                                        kDownloadCardTextName,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: white,
                                        ),
                                      ),
                                      Text(
                                        '2021    Quality:Data Saver',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kSecondarytextColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: ScreenSize.height! * 0.03,
                                      ),
                                      CoustomDownloadPageIconTextButton(
                                        icon: Icons.pause_circle_outline,
                                        text: 'pouse download',
                                      ),
                                      CoustomDownloadPageIconTextButton(
                                        icon: Icons.file_download_off_outlined,
                                        text: 'cancel download',
                                      ),
                                      CoustomDownloadPageIconTextButton(
                                        icon: Icons.error_outline,
                                        text: 'View Details',
                                      ),
                                     

                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: kDownloadButtonColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

