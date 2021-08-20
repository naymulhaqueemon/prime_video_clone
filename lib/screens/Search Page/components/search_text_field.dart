import 'package:flutter/material.dart';
import 'package:prime_video/helpers/themes/themes.dart';

// ignore: camel_case_types
class Search_text_feild extends StatelessWidget {
  const Search_text_feild({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enableSuggestions: true,
      autofocus: false,
      cursorColor: white,
      style: TextStyle(
        color: white,
        fontSize: 10,
      ),
      controller: _controller,
      enabled: true,
      decoration: InputDecoration(
          focusColor: white,
          fillColor: kThirdColor,
          alignLabelWithHint: true,
          prefixIcon: Icon(
            Icons.search_outlined,
            color: white,
          ),
          hintText: 'Search by actor , titile ...',
          hintStyle: TextStyle(color: white, fontSize: 15),
          suffixIcon: IconButton(
            onPressed: _controller.clear,
            icon: Icon(Icons.clear),
            color: white,
            splashRadius: 15,
          )),
    );
  }
}
