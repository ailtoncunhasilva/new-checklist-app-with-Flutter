import 'package:check_list/app/core/const.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String image;

  AvatarWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kSpacing),
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
