import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 60.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Post",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  
                  ),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_, int index){
                return Card(
                  color: Colors.,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),
                  elevation: 5.0,
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                                      child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(child: Text('pic'),),
                            
                          ],
                        ),
                        Spacer(flex: 1,),
                        Column(
                          
                          children: <Widget>[
                            Text('Name'),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('Title'),
                            Padding(padding: EdgeInsets.all(4.0),),
                            Text('Date'),
                          ],
                        ),
                        Spacer(flex: 6,),
                        Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomRight,
                            child: Text('Likes'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            )
          ],
        ),
      ),
    );
}
}