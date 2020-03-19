import 'package:flutter/material.dart';
import 'package:flutter_gestures/gestures/gesture_page.dart';
import 'package:flutter_gestures/gestures/pointer_page.dart';
import 'package:flutter_gestures/utils.dart';

import 'animation/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        AppConstants.ROUTE_POINTER: (context) => new TestPointers(),
        AppConstants.ROUTE_GESTURE: (context) => new TestGestures(),
        AppConstants.ROUTE_DRAG: (context) => new Drag(),
        AppConstants.ROUTE_ARENA:(context) => new ArenaTest(),
        AppConstants.ROUTE_RECOGNIZER:(context) => new GestureRecognizerTest(),
        AppConstants.ROUTE_ANIMATION:(context) => new AnimationTest(),
        AppConstants.ROUTE_ANIMATION_FRAME:(context) => new FrameAnimationTest(),
        AppConstants.ROUTE_ANIMATION_NORMAL:(context) => new NormalAnimationTest(),
        AppConstants.ROUTE_ANIMATION_WIDGET:(context) => new NormalAnimationWidgetTest(),
        AppConstants.ROUTE_ANIMATION_BUILDER:(context) => new AnimationBuilderTest(),
        AppConstants.ROUTE_ANIMATION_STAGGERED:(context) => new AnimationStaggeredTest(),
        AppConstants.ROUTE_ANIMATION_HERO_A:(context) => new AnimationHeroATest(),
        AppConstants.ROUTE_ANIMATION_HERO_B:(context) => new AnimationHeroBTest(),
        AppConstants.ROUTE_ANIMATION_SWITCHER:(context) => new AnimationSwitcherTest(),
        AppConstants.ROUTE_ANIMATION_OTHER:(context) => new AnimationOtherTest(),

      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
//      home: MyHomePage(title: 'Flutter Share Gestures'),
      home: MyHomePage(title: 'Flutter Share Gestures'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "Pointers",
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: _onPointerPressed,
              ),
              RaisedButton(
                child: Text(
                  "Gestures",
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: _onGesturesPressed,
              ),
              RaisedButton(
                child: Text(
                  "Animations",
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: _onAnimationsPressed,
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  _onPointerPressed() {
    Navigator.of(context).pushNamed(AppConstants.ROUTE_POINTER);
  }

  _onGesturesPressed() {
    Navigator.of(context).pushNamed(AppConstants.ROUTE_GESTURE);
  }

  void _onAnimationsPressed() {
    Navigator.of(context).pushNamed(AppConstants.ROUTE_ANIMATION);
  }
}
