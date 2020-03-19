import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gestures/utils.dart';

class TestGestures extends StatefulWidget {
  TestGestures({Key key}) : super(key: key);

  @override
  _TestGesturesState createState() {
    return _TestGesturesState();
  }
}

class _TestGesturesState extends State<TestGestures> {
  String _operation = "no";

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
          title: Text("Gestures"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: double.infinity, minHeight: double.infinity),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.lightBlue,
                  width: 150,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    _operation,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onTapDown: (details) {
                  print("gestures => onTapDown");
                },
                onTapUp: (details) {
                  print("gestures => onTapUp");
                },
                onTapCancel: () {
                  print("gestures => onTapCancel");
                },
                onTap: () {
                  _updateTxt("onTab");
                  print("gestures => onTap");
                },
                onDoubleTap: () {
                  _updateTxt("onDoubleTap");
                  print("gestures => onDoubleTap");
                },
                onLongPress: () {
                  _updateTxt("onLongPress");
                  print("gestures => onLongPress");
                },
                onLongPressStart: (details) {
                  print("gestures => onLongPressStart");
                },
                onLongPressEnd: (details) {
                  print("gestures => onLongPressEnd");
                },
                onLongPressUp: () {
                  print("gestures => onLongPressUp");
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppConstants.ROUTE_DRAG);
                  },
                  child: Text("Drag"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppConstants.ROUTE_RECOGNIZER);
                  },
                  child: Text("GestureRecognizer"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppConstants.ROUTE_ARENA);
                  },
                  child: Text("Arena"),
                ),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void _updateTxt(String s) {
    setState(() {
      _operation = s;
    });
  }
}

class Drag extends StatefulWidget {
  @override
  _DragState createState() => new _DragState();
}

class _DragState extends State<Drag> with SingleTickerProviderStateMixin {
  double _top = 10.0; //距顶部的偏移
  double _verticalDragTop = 50.0; //距顶部的偏移
  double _left = 0.0; //距左边的偏移
  double _horizontalTop = 100.0; //距左边的偏移
  double _horizontalLeft = 0.0; //距左边的偏移
  double _width = 200.0;
  double _height = 200.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector Drag"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text("A")),
              //手指按下时会触发此回调
              onPanDown: (DragDownDetails e) {
                //打印手指按下的位置(相对于屏幕)
                print("用户手指按下：${e.globalPosition}");
              },
              //手指滑动时会触发此回调
              onPanUpdate: (DragUpdateDetails e) {
                //用户手指滑动时，更新偏移，重新构建
                setState(() {
                  _left += e.delta.dx;
                  _top += e.delta.dy;
                });
              },
              onPanEnd: (DragEndDetails e) {
                //打印滑动结束时在x、y轴上的速度
                print(e.velocity);
              },
            ),
          ),
          Positioned(
            top: _verticalDragTop,
            left: 100,
            child: GestureDetector(
                child: CircleAvatar(child: Text("B")),
                //垂直方向拖动事件
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _verticalDragTop += details.delta.dy;
                  });
                }),
          ),
          Positioned(
            top: _horizontalTop,
            left: _horizontalLeft,
            child: GestureDetector(
                child: CircleAvatar(child: Text("C")),
                //水平方向拖动事件
                onHorizontalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _horizontalLeft += details.delta.dx;
                  });
                }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 400),
            child: GestureDetector(
              //指定宽度，高度自适应
              child: Image.asset(
                "assets/images/logo.jpeg",
                width: _width,
                height: _height,
              ),
              onScaleUpdate: (ScaleUpdateDetails details) {
                setState(() {
                  //缩放倍数在0.8到10倍之间
                  _width = 200 * details.horizontalScale.clamp(.1, 10.0);
                  _height = 200 * details.verticalScale.clamp(.1, 10.0);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ArenaTest extends StatefulWidget {
  @override
  ArenaTestState createState() => new ArenaTestState();
}

class ArenaTestState extends State<ArenaTest> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BothDirectionTest"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: Listener(
//              onPointerUp: (event){
//                print("Arena Test Listener onPointerUp");
//              },
              child: GestureDetector(
                child: CircleAvatar(child: Text("VH")),
                //垂直方向拖动事件
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _top += details.delta.dy;
                  });
                },
                onVerticalDragEnd: (details) {
                  print("Arena Test onVerticalDragEnd");
                },
                onHorizontalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _left += details.delta.dx;
                  });
                },
                onHorizontalDragEnd: (details) {
                  print("Arena Test onHorizontalDragEnd");
                },
                onTapDown: (details) {
                  print("Arena Test onTapDown");
                },
                onTapUp: (details) {
                  print("Arena Test onTapUp");
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GestureRecognizerTest extends StatefulWidget {
  @override
  GestureRecognizerTestState createState() => new GestureRecognizerTestState();
}

class GestureRecognizerTestState extends State<GestureRecognizerTest> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  MultiTapGestureRecognizer multiTapGestureRecognizer =
      new MultiTapGestureRecognizer();
  DoubleTapGestureRecognizer doubleTapGestureRecognizer =
      new DoubleTapGestureRecognizer();
  LongPressGestureRecognizer _oneSequenceGestureRecognizer =
      new LongPressGestureRecognizer();
  PanGestureRecognizer dragGestureRecognizer = new PanGestureRecognizer();
  VerticalDragGestureRecognizer verticalDragGestureRecognizer =
      new VerticalDragGestureRecognizer();
  HorizontalDragGestureRecognizer horizontalDragGestureRecognizer =
      new HorizontalDragGestureRecognizer();
  bool _toggle = false; //变色开关
  @override
  void dispose() {
    super.dispose();
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureRecognizerTest"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text.rich(TextSpan(children: [
          TextSpan(text: "hello word"),
          TextSpan(
            text: "click change color",
            style: TextStyle(
                fontSize: 30.0, color: _toggle ? Colors.blue : Colors.red),
            recognizer: _tapGestureRecognizer
              ..onTap = () {
                print("gestureRecognizer onTab");
                setState(() {
                  _toggle = !_toggle;
                });
              }
              ..onTapDown = (event) {
                print("gestureRecognizer onTapDown");
              }
              ..onTapUp = (event) {
                print("gestureRecognizer onTapUp");
              },
          ),
          TextSpan(text: "hello word"),
        ])),
      ),
    );
  }
}