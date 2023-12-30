import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40,left: 20,right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 0.1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  SvgPicture.asset('assets/icons/filter_icon.svg'),
                ],
              ),
            ),
          ),
          prefixIcon:Icon(Icons.search_rounded) ,
          hintText: 'Search breakfast..',
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3),fontWeight: FontWeight.bold,),
          contentPadding: EdgeInsets.all(15),
          border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(15.0),
              borderSide: BorderSide.none
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
