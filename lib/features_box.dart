import 'package:flutter/material.dart';
import 'package:va/Colors.dart';
class FeatureBox extends StatelessWidget {
  final Color color;
  final String headertext;
  final String DescText;
   FeatureBox({super.key, required this.color,required this.headertext,required this.DescText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 35,
      ),
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(
          left: 15
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(headertext,style: TextStyle(
                fontFamily: "Cera Pro",
                color: Pallete.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(DescText,style: TextStyle(
                  fontFamily: "Cera Pro",
                  color: Pallete.blackColor,
                  fontSize: 18
              ),),
            ),
          ],
        ),
      ),

    );
  }
}
