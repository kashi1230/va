
import 'package:flutter/material.dart';
import 'package:va/Colors.dart';
import 'package:va/features_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.whiteColor,
        title: Text("Allen"),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Profile assestent
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Container(
                  height: 123,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/virtualAssistant.png")
                    )
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
              ),
              margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30).copyWith(
                top: 30,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
                borderRadius: BorderRadius.circular(40).copyWith(
                  topLeft: Radius.zero
                )
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text("Good Morning , what task can I do for you?",style: TextStyle(
                  color: Pallete.mainFontColor,fontSize: 25,fontFamily: "Cera Pro"
                ),),
              ),
            ),

            //Suggestions list
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 22),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Here are a few features",
                  style: TextStyle(
                    fontFamily: "Cera pro",
                    fontSize: 20,
                    color: Pallete.mainFontColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            //Features List,

            SingleChildScrollView(
              child: Column(
                children: [
                  FeatureBox(color: Pallete.firstSuggestionBoxColor,
                    headertext: "ChatGpt",
                    DescText: "A smarter way to stay organized and informed with chatGPT",),
                  FeatureBox(color: Pallete.secondSuggestionBoxColor,
                    headertext: "dall-E",
                    DescText: "Get inspierd and stay creative with your personal assistant powered By Dall-E ",),
                  FeatureBox(color: Pallete.thirdSuggestionBoxColor,
                    headertext: "Smart Voice Assistant",
                    DescText: "Get the best of both worlds with a voice assistant powered by Dall-E and chatGPT ",)
                ],
              ),
            )
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){},
        child: Icon(Icons.mic),

      ),
    );
  }
}
