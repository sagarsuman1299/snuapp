import 'package:flutter/material.dart';
import 'package:snuapp/constants.dart';

/////////Container how app looks overall//////////
class TextFieldContainer extends StatelessWidget {
  final Widget children;
  const TextFieldContainer({
    Key key,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: children,
    );
  }
}
