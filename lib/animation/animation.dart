import 'package:flutter/material.dart';
import 'package:flutter_gestures/animation/animation_router.dart';

import '../utils.dart';
import 'animation_decoration.dart';
import 'animation_frame.dart';
import 'animation_siwtcher_transition.dart';

class AnimationTest extends StatefulWidget {
  AnimationTest({Key key}) : super(key: key);

  @override
  _AnimationTestState createState() {
    return _AnimationTestState();
  }
}

class _AnimationTestState extends State<AnimationTest> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Animation Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_FRAME);
                },
                child: Text("Frame Animation"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_NORMAL);
                },
                child: Text("Animation"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_WIDGET);
                },
                child: Text("Animation Widget"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_BUILDER);
                },
                child: Text("Animation Builder"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_STAGGERED);
                },
                child: Text("Animation Staggered"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, FadeRoute(builder: (context) {
                    return new AnimationStaggeredTest();
                  }));
                },
                child: Text("Animation Router"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_HERO_A);
                },
                child: Text("Animation Hero"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_SWITCHER);
                },
                child: Text("Animation Switcher"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppConstants.ROUTE_ANIMATION_OTHER);
                },
                child: Text("Animation Other"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FrameAnimationTest extends StatefulWidget {
  FrameAnimationTest({Key key}) : super(key: key);

  @override
  _FrameAnimationTestState createState() {
    return _FrameAnimationTestState();
  }
}

class _FrameAnimationTestState extends State<FrameAnimationTest> {
  Widget frameWidget;
  GlobalKey<FrameAnimationImageState> globalKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Animation Frame Test"),
      ),
      body: Center(
        child: FrameAnimationImage(
          globalKey,
          getList(),
          width: 100,
          height: 60,
          interval: 100,
          start: true,
        ),
      ),
    );
  }

  List<String> getList() {
    List<String> list = new List();
    list.add("assets/images/lib_ui_car_loading_waixing_00000.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00001.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00002.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00003.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00004.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00005.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00006.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00007.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00008.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00009.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00010.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00011.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00012.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00013.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00014.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00015.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00016.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00017.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00018.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00019.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00020.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00021.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00022.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00023.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00024.png");
    list.add("assets/images/lib_ui_car_loading_waixing_00025.png");
    return list;
  }
}

class NormalAnimationTest extends StatefulWidget {
  NormalAnimationTest({Key key}) : super(key: key);

  @override
  _NormalAnimationTestState createState() {
    return _NormalAnimationTestState();
  }
}

class _NormalAnimationTestState extends State<NormalAnimationTest>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        duration: new Duration(seconds: 3), vsync: this);
    _animation =
        new CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
//    _animation = new Tween(begin: 0.0, end: 300.0).animate(_controller)
    _animation = new Tween(begin: 0.0, end: 300.0).animate(_animation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        print("state = " + status.toString());
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("NormalAnimationTest"),
      ),
      body: Center(
        child: Image.asset(
          "assets/images/ic_launcher.png",
          width: _animation.value,
          height: _animation.value,
        ),
      ),
    );
  }
}

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: Image.asset("assets/images/ic_launcher.png",
          width: animation.value, height: animation.value),
    );
  }
}

class NormalAnimationWidgetTest extends StatefulWidget {
  NormalAnimationWidgetTest({Key key}) : super(key: key);

  @override
  _NormalAnimationWidgetTestState createState() {
    return _NormalAnimationWidgetTestState();
  }
}

class _NormalAnimationWidgetTestState extends State<NormalAnimationWidgetTest>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        duration: new Duration(seconds: 3), vsync: this);
    _animation =
        new CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    _animation = new Tween(begin: 0.0, end: 300.0).animate(_animation);
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("NormalAnimationWidget Test"),
      ),
      body: Center(
        child: new AnimatedImage(
          animation: _animation,
        ),
      ),
    );
  }
}

class AnimationBuilderTest extends StatefulWidget {
  AnimationBuilderTest({Key key}) : super(key: key);

  @override
  _AnimationBuilderTestState createState() {
    return _AnimationBuilderTestState();
  }
}

class _AnimationBuilderTestState extends State<AnimationBuilderTest>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        duration: new Duration(seconds: 5), vsync: this);
    _animation = new CurvedAnimation(parent: _controller, curve: Curves.ease);
    _animation = new Tween(begin: 0.0, end: 300.0).animate(_animation);
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("AnimationBuilder Test"),
      ),
      body: Center(
        child: new AnimatedBuilder(
          animation: _animation,
          child: Container(
            color: Colors.red,
          ),
          builder: (BuildContext context, Widget child) {
            return new Container(
              height: _animation.value,
              width: _animation.value,
              child: child,
            );
          },
        ),
      ),
    );
  }
}

class AnimationStaggeredTest extends StatefulWidget {
  AnimationStaggeredTest({Key key}) : super(key: key);

  @override
  _AnimationStaggeredTestState createState() {
    return _AnimationStaggeredTestState();
  }
}

class _AnimationStaggeredTestState extends State<AnimationStaggeredTest>
    with SingleTickerProviderStateMixin {
  Animation<double> _heightAnimation;
  Animation<Color> _colorAnimation;
  Animation<EdgeInsets> _horizontalTranslationAnimation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        duration: new Duration(seconds: 5), vsync: this);
    _heightAnimation = new Tween(begin: .0, end: 300.0).animate(
        new CurvedAnimation(
            parent: _controller,
            curve: Interval(.0, .6, curve: Curves.easeInOut)));
    _horizontalTranslationAnimation = new Tween<EdgeInsets>(
            begin: EdgeInsets.only(left: 0.0),
            end: EdgeInsets.only(left: 150.0))
        .animate(new CurvedAnimation(
            parent: _controller,
            curve: Interval(.6, 1.0, curve: Curves.bounceIn)));
    _colorAnimation =
        new ColorTween(begin: Colors.lightBlueAccent, end: Colors.red).animate(
            new CurvedAnimation(
                parent: _controller,
                curve: Interval(.0, .6, curve: Curves.ease)));
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("AnimationStaggered Test"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          alignment: Alignment.bottomLeft,
          child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Container(
                  padding: _horizontalTranslationAnimation.value,
                  child: Container(
                    color: _colorAnimation.value,
                    height: _heightAnimation.value,
                    width: 50,
                  ),
                );
              }),
        ));
  }
}

class AnimationHeroATest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationHero Test'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.asset("assets/images/ic_launcher.png"),
        ),
        onTap: () {
          Navigator.pushNamed(context, AppConstants.ROUTE_ANIMATION_HERO_B);
        },
      ),
    );
  }
}

class AnimationHeroBTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset("assets/images/ic_launcher.png"),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class AnimationSwitcherTest extends StatefulWidget {
  AnimationSwitcherTest({Key key}) : super(key: key);

  @override
  _AnimationSwitcherTestState createState() {
    return _AnimationSwitcherTestState();
  }
}

class _AnimationSwitcherTestState extends State<AnimationSwitcherTest> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationSwitcher Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                //执行缩放动画
//                return RotationTransition(child: child, turns : animation);
                //执行平移动画
//                var tween=Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
//                return SlideTransition(
//                  child: child,
//                  position: tween.animate(animation),
//                );
                return SlideTransitionX(
                  child: child,
                  direction: AxisDirection.left, //左出右进
                  position: animation,
                );
              },
              child: Text(
                '$_count',
                //显示指定key，不同的key会被认为是不同的Text，这样才能执行动画
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            RaisedButton(
              child: const Text(
                'increase',
              ),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AnimationOtherTest extends StatefulWidget {
  AnimationOtherTest({Key key}) : super(key: key);

  @override
  _AnimationOtherTestState createState() {
    return _AnimationOtherTestState();
  }
}

class _AnimationOtherTestState extends State<AnimationOtherTest> {
  double _padding = 10;
  var _align = Alignment.topRight;
  double _height = 100;
  double _left = 0;
  Color _color = Colors.red;
  TextStyle _style = TextStyle(color: Colors.black);
  Color _decorationColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    var duration = Duration(seconds: 5);
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationOther Test"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  _padding = 20;
                });
              },
              child: AnimatedPadding(
                duration: duration,
                padding: EdgeInsets.all(_padding),
                child: Text("AnimatedPadding"),
              ),
            ),
            SizedBox(
              height: 50,
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    duration: duration,
                    left: _left,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _left = 100;
                        });
                      },
                      child: Text("AnimatedPositioned"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.grey,
              child: AnimatedAlign(
                duration: duration,
                alignment: _align,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _align = Alignment.center;
                    });
                  },
                  child: Text("AnimatedAlign"),
                ),
              ),
            ),
            AnimatedContainer(
              duration: duration,
              height: _height,
              color: _color,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _height = 150;
                    _color = Colors.blue;
                  });
                },
                child: Text(
                  "AnimatedContainer",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            AnimatedDefaultTextStyle(
              child: GestureDetector(
                child: Text("hello world"),
                onTap: () {
                  setState(() {
                    _style = TextStyle(
                      color: Colors.blue,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Colors.blue,
                    );
                  });
                },
              ),
              style: _style,
              duration: duration,
            ),
            AnimatedDecoratedBox1(
              duration: duration,
              decoration: BoxDecoration(color: _decorationColor),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _decorationColor = Colors.red;
                  });
                },
                child: Text(
                  "AnimatedDecoratedBox",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ].map((e) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: e,
            );
          }).toList(),
        ),
      ),
    );
  }
}
