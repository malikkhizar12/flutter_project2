import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_project/models/category_model.dart';
import 'package:second_project/widgets/Appbar.dart';
import 'package:second_project/widgets/categories_list.dart';
import 'package:second_project/widgets/diet_list.dart';
import 'package:second_project/widgets/searchbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(), // Use the CustomAppBar widget here
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Searchbar(),
           const SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),
                  ),
                ),
               const SizedBox(height: 15,),
                CategoriesList(),
              ],
            ),
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Recommendations\nfor Diet',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                DietList()
        
              ],
            )
          ],
        ),
      ),
    );
  }
}
