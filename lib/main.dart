import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //freeze the splash until flutter_native_splash.remove() called
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    runApp(const MyApp());

    // 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GYM HARD',
      theme: ThemeData(
  
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GYM HARD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  int myIndex = 0;

List<Widget> widgetList = const [
  Text('Page 1', style: TextStyle(fontSize: 40)),
  Text('Page 2', style: TextStyle(fontSize: 40)),
  Text('Page 3', style: TextStyle(fontSize: 40)),
  
];
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  // @override 
  // void initState(){
  //   super.initState();
  //   initialisation();
  // }
  // void initialisation() async {
  //   await Future.delayed(const Duration(seconds: 5));
  //   FlutterNativeSplash.remove();
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: const Center(
        child: Text('hello'),
      ),
      
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 112, 171, 249),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        //add more navigation bar features here
        currentIndex: myIndex,
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },

        items: const <BottomNavigationBarItem>[
          
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: 'Workouts',
                backgroundColor: Colors.blueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.blueAccent
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bug_report),
                label: 'Test',
                backgroundColor: Colors.blueAccent
            ),
        ],
  
    ),  
    );
    
  }
}
