import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:second_project/models/diet_model.dart';
class DietList extends StatefulWidget {
  const DietList({super.key});

  @override
  State<DietList> createState() => _DietListState();
}
List<DietModel> recommendedDiet=[];
void _getDiet()
{
  recommendedDiet = DietModel.getRecommendedDiet();
}
class _DietListState extends State<DietList> {
  @override
  Widget build(BuildContext context) {
    _getDiet();
    return Container(
      height: 250,
      padding:const EdgeInsets.only(left: 20, right: 20),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context,index){
            return SizedBox(width: 20,);
          },
          itemCount: recommendedDiet.length,
          itemBuilder: (context, index){
            return Container(
              width: 220,
              decoration: BoxDecoration(
                color: recommendedDiet[index].box_color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //
                    // margin: EdgeInsets.only(bottom: 25,top: 20),
                    width: 90, // Adjust the width to your desired size
                    height: 90,
                    padding: EdgeInsets.all(14),// Adjust the height to your desired size
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(recommendedDiet[index].icon_path),
                  ),
                  Column(
                    children: [
                      Text(
                        recommendedDiet[index].name,
                        style:const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      Text(recommendedDiet[index].level + ' | ' +
                          recommendedDiet[index].time + ' | ' +
                          recommendedDiet[index].Calories),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          recommendedDiet[index].isSelected?Color(0xff9DCEFF): Colors.transparent,
                          recommendedDiet[index].isSelected?Color(0xff9DCEFF): Colors.transparent]
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'View',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: recommendedDiet[index].isSelected?Colors.white:Color(0xff9DCEFF)
                      ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },

      ),
    );
  }
}
