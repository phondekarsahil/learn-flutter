# Flutter

## Flutter Overview

* __Widgets:__ 
    
    Widgets are the bedrock of flutter applications. Everything inside a flutter app is essentially a widget. But surrounding them all first of all would be what's known as a ___root widget___. So that surrounds everything in the entire app.
    
    Not many applications that you create using flutter are going to be this simple and just contain a handful of widgets like this but you can see this general idea of what's known as a __widget tree__ in flutter. 
    
    So a __widget tree__ just describes the structure of widgets inside your app now there's loads and loads of different kinds of widgets pre-built into the flutter framework that we can use out-of-the-box.
    
    So things like a __text widget__ or a __button widget__ to create buttons, a __row widget__ which is to do with the layout of different widgets in a row likewise we have a __column widget__ for laying out different widgets in a column and also __image widgets__ plus loads loads loads more. And these are also fully customizable and we can pass through different properties to these widgets to alter how they display on the screen

    So all of these different flutter widgets, they contain all those different properties that we can define values for which is going to determine how they actually look and behave on the screen 
    
    Now at the end of the day all widgets in flutter are classes. Each widget has its own programmatic class which defines its behavior and also how it looks on the screen.
    
    Now the way we implement this kind of widget treestructure in flutter is by using a programming language called __dart__. 
    
    Now that is a language developed by Google to build mobile, desktop and web applications. Similar to other object-oriented programming languages it uses classes functions types etc.

* __Dart:__

    Flutter uses darts as the programming language to create apps.
    
    Sample dart code:
    ```dart
    void main() {
        print("Hello");
    }
    ```
    __Variables:__ So dart use variables like any other programming language would use variables. We can store values inside variables and then we can use those values at a later point in time.
    
    __Dart__ is also known as a __statically typed programming language__ and what that basically means is that once we declare a variable and we give that variable a type for example a string we then can't change the type of that variable in the future. So if I was to create a string variable called name and set that value equal to "hello" then I then can't change the value of that variable to something like 30 an integer in the future.

    ```dart
    void main() {
        int age = 30; // integer variable
        String name = "Sahil"; // String variable
        bool isNight = false; // boolean variable
        dynamic firstName = "Suraj"; // dynamic variable
        firstName = 30; //Allowed
        name = 30 // not allowed
    }
    ```

    __Functions:__ 

    ```dart
    // Functions
    String greet() {
        return "Hello";
    }

    int getAge() {
        return 25;
    }

    // Arrow Functions
    String greet() => "Hello";
    int getAge() => 25;
    ```

    __Lists:__

    ```dart
    void main() {
        List names = ["sahil", "suraj", "viki"]; // Lists
        //add item to list
        names.add("Ashish");
        // remove item from list
        names.remove("Suraj");
        //add any data type 
        names.add(30); //allowed

        print(names);

        // Strict Type List
        // Only String list
        List<String> newNames = ["sahil", "suraj", "viki"];
        List<int> ages = [1,2,3];
    }
    ```

    __Classes:__ Class is like a blueprint for an object. 

    ```dart
    class User {
        String userName;
        int age;

        //Constructor: Same name as class
        User(String userName, int age) {
            this.userName = userName;
            this.age = age;
        }

        void login() {
            print("User logged in..");
        }
    }

    // Inheritance
    class SuperUser extends User {

        // Construstor calls parent constructor
        SuperUser(String userName, int age): super(userName, age);

        void publish() {
            print("published update");
        }
    }


    void main() {
        User user1 = User("Sahil", 25);
        User user2 = User("Viki", 26);
        SuperUser superUser = SuperUser("Ashish", 26);

        print(user1.userName);
        print(user2.userName);
        superUser.publish();
    }
    ```

## Creating flutter project

```
flutter create <app-name>
```
```
cd <app-name>
```
```
flutter run
```

## Stateless vs Stateful

* In flutter we can either have stateless or stateful widgets
* __Stateless Widgets:__ The state of the widget cannot change over time.
* __Stateful Widgets:__ The state of the widget can change over time.

## Common Widgets

* Images, Buttons and Icons

## Containers, Margins and Padding

    One of the simplest layout widgets that flutter has to offer is the container widget. It acts as a container to another widget or wraps around it. It's basically a convenience widget and it comes along with some properties like margin and padding and color etc.
    
    If we don't have a child inside a container, it takes up the whole scrren space available. But if we have a child for example a text widget then the container restricts itself to the size of that child widget.

    Now one of the good things about containers is that we can add padding and margin to our child

## Rows and Columns

## Expanded Widget 

    This works very similar to flexbox as in web

## Stateful Widgets

    A stateless which is one that doesn't really change after it's been created. It doesn't contain any kind of state of data that changes over time or in reaction to some interaction. 
    
    A stateful widget is one which can change state over time or it can contain dynamic data which changes. 
    
    So the data that changes over time is going to be stored in what's known as a state object.

    So it's going to contain values which can change such as a number that we output on the screen or maybe a color which changes the background color.
    
    So when the state changes it means that obviously something has changed in the widget and therefore the UI over here is going to need to update to reflect that.

```dart
class TestWidget extends StatefulWidget {
    TestWidget({Key? key}) : super(key: key);

    @override
    State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
    @override
    Widget build(BuildContext context) {
        return Container();
    }
}    
```
    There are actually two classes in above example, the first one is this stateful widget class so this extends stateful widget
    
    Inside here we have this function `createState` which is then returning the function. 
    
    Now this is instantiating this second class that it creates for us and this is a state object so it's building a state object for this stateful widget which we just created and it's linking this state object to this widget.
    
    So now inside this state object right here which is just another class we can actually define data and we can change that state over time now also inside this state object we have this build function again and we return a widget.

## Routing and Maps

    Maps in darts are a bit like object literals in JavaScript or dictionaries in Python.
    
    They're basically just a set of key and value pairs 
    
    So what we're going to do is create a simple map here to see how we set them up and use them

    And then we're going to take what we learn and apply them to create some routes inside our flutter app
    
```dart
void main() {
    Map student = { 'name': 'chun-li', 'age': 25 };
    print(student['name']); // chun-li
}
```

    So this is pretty much how a routing is going to work we're going to have some kind of route (key) and then whatever widget (value) we want to load up for that route using a map.

## Widget Lifecycles

    There are basically two types of widget a stateless one and a stateful one.
    
    Now a stateless widget is that which cannot have a state and none of the data changes inside that and also the build function only runs once inside that widget when it's created 
    
    So if we were to try and change something over time that's not going to be updated in the screen to reflect that because it's completely stateless once it's built.
    
    It doesn't then rebuild itself when things change and if we wanted something to update in a stateless widget what we'd have to do is destroy the widget completely and then create a new instance of it with some different data
    
    Now a stateful widget that can have state which changes over time 
    
    So for example say we had some kind of counter widget and that counter variable inside it changed over time. Now to change that what we do is call the `setState` method. And when we change the data inside that method it triggers the build function to rebuild that widget so that we see that updated on the screen 
    
    Now stateful widgets also have a couple of different life cycle methods that we can tap into 
    
    `initstate` method:
    * It is the first method to be called once our state object has been created 
    * This method is only called once when the widget is first created and it's probably a good place to subscribe to streams or any kind of object that's going to change our widget data in the future

    `build` method:
    * This actually builds the widget tree and it runs quite a lot in a stateful widget because it's triggered every time we use setState 
    * So we use setState to change the data and that triggers the build function to rebuild the widget tree so that we see that change on the screen
    
    `dispose` method:
    * This is triggered when the widget or the state object is completely removed

## Asychronous code

    Asynchronous code represents an action that starts now and finishes sometime in the future. 
    
    An example of this could be interacting with an API endpoint or a database or something to get some data 
    
    So we start the request but it doesn't finish straight away because it might take a second or two to complete that request to go out and get the data.
     
    So it finishes some time after the initial request is made and once we get that data back in the meantime our code should not stop until that request is complete and the data comes back 
    
    Asynchronous code should be non-blocking so that while the request is being made the rest of the code in our file could carry on 
    
    So to handle asynchronous code in flutter we're going to use a combination of asynchronous functions, the await keyword and something called futures.
    
    Now `async` in a way a very similar to `async` `await` in JavaScript 
    
    `Futures` are a type of data very similar to `Promises` in JavaScript

## Flutter Packages

    Occasionally when we're creating flutter apps we're going to need to add in some complex functionality.
    
    Now that could be to implement some form of animation or maybe to work with files and folders on the device or something else that is going to require us to write a fair amount of code and logic 
    
    Now I suppose we could do all of this ourselves from scratch or we could make use of flutter packages
    
    Now lots of packages are basically just bundles of code and logic that other developers have already kindly written and which can normally be used to implement some kind of specialized functionality inside our own apps like a sliding menu or a date picker or some kind of file upload or something like that.
    
    Now we can use as many different packages as we want in our apps to do different things for us the one that we're going to be using

    https://pub.dev/