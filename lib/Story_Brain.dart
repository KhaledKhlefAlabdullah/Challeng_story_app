import 'Story.dart';

class Story_Brain {
  final List<Story> _storyData = [
    Story(
        story_title:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice_1: 'I\'ll hop in. Thanks for the help!',
        choice_2: 'Better ask him if he\'s a murderer first.'),
    Story(
        story_title: 'He nods slowly, unphased by the question.',
        choice_1: 'At least he\'s honest. I\'ll climb in.',
        choice_2: 'Wait, I know how to change a tire.'),
    Story(
        story_title:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice_1: 'I love Elton John! Hand him the cassette tape.',
        choice_2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        story_title:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice_1: 'Restart',
        choice_2: ''),
    Story(
        story_title:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice_1: 'Restart',
        choice_2: ''),
    Story(
        story_title:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice_1: 'Restart',
        choice_2: '')
  ];
  int _storyNumber = 0;
  String getStory() {
    return _storyData[_storyNumber].story_title;
  }

  String getChoise1() {
    return _storyData[_storyNumber].choice_1;
  }

  String getChoise2() {
    return _storyData[_storyNumber].choice_2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber == 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    }
    return false;
  }
}
//TODO: Step 1 - Add background.png to this Container as a background image.
//+
//TODO: Step 2 - Create a new class called Story.
//+
//TODO: Step 3 - Create 3 properties for this class, A. storyTitle to store the story text. B. choice1 to store the text for choice 1, C. choice2 to store the text for choice 2.
//+
//TODO: Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.
//+
//TODO: Step 5 - Create a new class called StoryBrain.
//+
//TODO: Step 6 - import the story.dart file into this file.
//+
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
//+
//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
//+
//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.
//+
//TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
//+
//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
//+
//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
//+
//TODO: Step 13 - Use the storyBrain to get the text for choice 1.
//+
//TODO: Step 14 - Use the storyBrain to get the text for choice 2.
//+
//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.
//+
//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
//+
//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
//+
//Choice 1 made by user.
//TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
//+
//Choice 2 made by user.
//TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
//+
//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3
//+
//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
//+
//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
//+
//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.
//+
//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.
//+
//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.
//+
//TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
//+
//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
//+
//TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
//+
//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/

