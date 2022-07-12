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