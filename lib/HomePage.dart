import 'package:flutter/material.dart';
import 'Story_Brain.dart';

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

Story_Brain storyBrain = Story_Brain();

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(// add back ground image
                image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),// view the Story text 
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FlatButton(// first button 
                minWidth: 400.0,
                height: 40.0,
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(1);// move to another Story text
                  });
                },
                color: Colors.red,
                child: Text(
                  storyBrain.getChoise1(),// view the choice 1 text
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                child: FlatButton(
                  minWidth: 400.0,
                  height: 40.0,
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);// move to the another Story
                    });
                  },
                  color: Colors.blue,
                  child: Text(
                    storyBrain.getChoise2(),// view the choice 2 text
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                visible: storyBrain.buttonShouldBeVisible(),// hiaed button choice 2 when the story Number equal 3 or 4 or 5
              ),
            ),
          ],
        )),
      ),
    );
  }
}
