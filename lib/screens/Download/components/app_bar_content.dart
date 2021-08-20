import 'package:flutter/material.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Text(
              '4 Videos  -',
              style: TextStyle(fontSize: 15, color: kSecondarytextColor),
            ),
            Divider(
              color: grey,
              thickness: 2,
              height: 5,
            ),
            Text(
              '128 min  -',
              style: TextStyle(fontSize: 15, color: kSecondarytextColor),
            ),
            Divider(
              color: grey,
              thickness: 5,
              height: 5,
            ),
            Text(
              '156 MB  -',
              style: TextStyle(fontSize: 15, color: kSecondarytextColor),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Edit',
            style: TextStyle(color: white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kThirdColor)),
        )
      ],
    );
  }
}
