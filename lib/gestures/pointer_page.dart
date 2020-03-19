import 'package:flutter/material.dart';

class TestPointers extends StatefulWidget {
  TestPointers({Key key}) : super(key: key);

  @override
  _TestPointersState createState() {
    return _TestPointersState();
  }
}

class _TestPointersState extends State<TestPointers> with SingleTickerProviderStateMixin{
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
          title: Text("Pointers"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Listener(
                child: Container(
                  color: Colors.black12,
                  alignment: Alignment.center,
                  width: 400,
                  height: 50,
                  child: Text(
                    "Test Pointer by Listener",
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                onPointerDown: (event) {
                  _onListener(event, "listener");
                },
                onPointerCancel: (event) {
                  _onListener(event, "listener");
                },
                onPointerMove: (event) {
                  _onListener(event, "listener");
                },
                onPointerUp: (event) {
                  _onListener(event, "listener");
                },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black26,
                        width: 400,
                        height: 100,
                      ),
                      Listener(
//                          behavior: HitTestBehavior.opaque,
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(Size(400.0, 100.0)),
                            child: Center(
                                child: Text(
                              "behavior deferToChild",
                              style: new TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )),
                          ),
                          onPointerDown: (event) =>
                              print("behavior deferToChild down")),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black26,
                        width: 400,
                        height: 100,
                      ),
                      Listener(
                          behavior: HitTestBehavior.opaque,
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(Size(400.0, 100.0)),
                            child: Center(
                                child: Text(
                              "behavior opaque",
                              style: new TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )),
                          ),
                          onPointerDown: (event) =>
                              print("behavior opaque down")),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Listener(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(Size(400.0, 200.0)),
                        child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.blue)),
                      ),
                      onPointerDown: (event) => print("under down"),
                    ),
                    Listener(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                        child: Center(
                          child: Text("这个文本边框200*100大",
                              style: new TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      onPointerDown: (event) => print("above down"),
                      behavior: HitTestBehavior.translucent,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Listener(
                      child: AbsorbPointer(
                        child: Listener(
                          child: Container(
                            color: Colors.red,
                            width: 150,
                            height: 100,
                            child: Center(
                              child: Text("AbsorbPointer",
                                  style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          onPointerDown: (event) => print("inside down"),
                        ),
                      ),
                      onPointerDown: (event) => print("outside down"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Listener(
                        child: IgnorePointer(
                          child: Listener(
                            child: Container(
                              color: Colors.green,
                              width: 150,
                              height: 100,
                              child: Center(
                                child: Text("IgnorePointer",
                                    style: new TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            onPointerDown: (event) => print("inside down"),
                          ),
                        ),
                        onPointerDown: (event) => print("outside down"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void _onListener(PointerEvent event, String source) {
    if (event is PointerDownEvent) {
      print("pointers:${source} ==> down");
    } else if (event is PointerUpEvent) {
      print("pointers ${source} ==> up");
    } else if (event is PointerMoveEvent) {
      print("pointers ${source} ==> move");
    } else if (event is PointerCancelEvent) {
      print("pointers ${source} ==> cancel");
    }
  }
}