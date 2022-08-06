import 'package:flutter/material.dart';


/// A text widget which will be used for options. Since the style is same for
/// all a common widget is made for it.
class OptionTextWidget extends StatelessWidget {
  /// [title]: Title of the widget
  const OptionTextWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: const TextStyle(   
          fontSize: 15
        ),
      );
}
