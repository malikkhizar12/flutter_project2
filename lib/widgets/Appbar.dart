import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Breakfasts',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          // Handle leading icon tap
        },
        child: Container(
          margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset('assets/icons/left_arrow.svg', width: 16, height: 16),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Handle actions icon tap
          },
          child: Container(
            margin: EdgeInsets.only(right: 20,top: 10,bottom: 10),
            alignment: Alignment.center,
            padding: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset('assets/icons/two_dots.svg', width: 16, height: 16),
          ),
        ),
      ],
    );
  }
}
