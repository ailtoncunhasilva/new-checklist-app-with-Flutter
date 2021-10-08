import 'package:check_list/app/core/const.dart';
import 'package:flutter/material.dart';

class PersonalizedTitleWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  PersonalizedTitleWidget({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            color: Theme.of(context).primaryColor,
          ),
          Positioned(
            top: 10,
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: kSpacing),
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 0,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Container(
                  //   margin: EdgeInsets.only(right: 12),
                  //   width: 2,
                  //   height: 20,
                  //   color: Colors.white,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: kSpacing / 2),
                    child: Icon(icon, color: Colors.white),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}