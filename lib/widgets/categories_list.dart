import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:second_project/models/category_model.dart';
class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}
List<Category_model> Categories=[];
void _getCategories()
{
  Categories=Category_model.getCategories();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Container(
      height: 140,
      padding:const EdgeInsets.only(left: 20, right: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20);
        },
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            decoration: BoxDecoration(
              color: Categories[index].boxColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60, // Adjust the width to your desired size
                  height: 60,
                  padding: EdgeInsets.all(14),// Adjust the height to your desired size
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(Categories[index].icon_path),
                ),
                Text(
                  Categories[index].name,
                  style:const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
