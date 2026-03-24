 ## Recipe App – Flutter Project Report
## INTRODUCTION
This project was developed as part of Chapter 2 of the Flutter Apprentice course.
The goal was to build a simple recipe application and understand the basic structure of a Flutter app, as well as how to use common widgets such as ListView and Slider.

## Step 1: Project Creation
First, a new Flutter project was created using the Flutter CLI.
The default template was replaced with a custom structure for the recipe application.

## Step 2: Building the Recipe Model
A separate file recipe.dart was created to define the Recipe model.
This model includes:
- title of the recipe
- image path
- list of ingredients
This helps organize data and keep the code clean.

## Step 3: Creating Recipe List Page
The main screen (recipe_list_page.dart) displays a list of recipes using the ListView.builder widget.
Each item contains:
 - an image
- a title
The recipes are hard-coded as required in the assignment.

## Step 4: Navigation Between Screens
Navigation was implemented using Navigator.push().
When a user taps on a recipe, the app opens a detail page (recipe_detail_page.dart) and passes the selected recipe data.

## Step 5: Adding Images (Assets)
Images were added using the assets system in Flutter.

The images were stored in: assets/images/
They were registered in pubspec.yaml and displayed using: Image.asset()

## Step 6: Adding Slider (Dynamic UI)
A Slider widget was added to the recipe detail page.

The slider allows the user to change the number of servings dynamically.
The UI updates in real time using setState().

## Step 7: Custom Theme (Creative Modification)
To improve the design, custom ThemeData was applied:

Material 3 enabled (useMaterial3: true)
Changed primary color
Customized text styles
Improved UI using Cards and spacing

This makes the app more modern and visually appealing.

## CONCLUSION
Conclusion

In this project, I learned:

how to structure a Flutter application
how to use ListView for dynamic lists
how to navigate between screens
how to work with assets
how to update UI using state (Slider)
how to customize app design using ThemeData

The application successfully meets all requirements and runs correctly.
