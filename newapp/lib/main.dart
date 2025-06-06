// // import 'package:flutter/material.dart';
// // import 'second_page.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // TRY THIS: Try running your application with "flutter run". You'll see
// //         // the application has a purple toolbar. Then, without quitting the app,
// //         // try changing the seedColor in the colorScheme below to Colors.green
// //         // and then invoke "hot reload" (save your changes or press the "hot
// //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// //         // the command line to start the app).
// //         //
// //         // Notice that the counter didn't reset back to zero; the application
// //         // state is not lost during the reload. To reset the state, use hot
// //         // restart instead.
// //         //
// //         // This works for code too, not just values: Most code changes can be
// //         // tested with just a hot reload.
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.

// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // TRY THIS: Try changing the color here to a specific color (to
// //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// //         // change color while the other colors stay the same.
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           // Column is also a layout widget. It takes a list of children and
// //           // arranges them vertically. By default, it sizes itself to fit its
// //           // children horizontally, and tries to be as tall as its parent.
// //           //
// //           // Column has various properties to control how it sizes itself and
// //           // how it positions its children. Here we use mainAxisAlignment to
// //           // center the children vertically; the main axis here is the vertical
// //           // axis because Columns are vertical (the cross axis would be
// //           // horizontal).
// //           //
// //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// //           // action in the IDE, or press "p" in the console), to see the
// //           // wireframe for each widget.
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text('You have pushed the button this many times:'),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: Colors.black,
//         primaryColor: Colors.green,
//         textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
//       ),
//       home: AccountScreen(),
//     );
//   }
// }

// class AccountScreen extends StatefulWidget {
//   @override
//   _AccountScreenState createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'WELCOME',
//               style: TextStyle(
//                 fontSize: 32.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Create Account',
//               style: TextStyle(fontSize: 16.0, color: Colors.white70),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Let\'s get started by filling out the form below.',
//               style: TextStyle(color: Colors.white38),
//             ),
//             SizedBox(height: 30),
//             _buildTextField('Email', _emailController),
//             _buildTextField('Password', _passwordController),
//             _buildTextField('Confirm Password', _confirmPasswordController),
//             SizedBox(height: 20),
//             _buildGetStartedButton(),
//             SizedBox(height: 20),
//             Text(
//               'Or sign up with',
//               style: TextStyle(color: Colors.white60),
//             ),
//             SizedBox(height: 10),
//             _buildSocialMediaButtons(),
//             SizedBox(height: 20),
//             _buildFooter(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label, TextEditingController controller) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//           labelText: label,
//           labelStyle: TextStyle(color: Colors.white70),
//           filled: true,
//           fillColor: Colors.grey[850],
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide.none,
//           ),
//           suffixIcon: Icon(
//             Icons.visibility_off,
//             color: Colors.white70,
//           ),
//         ),
//         style: TextStyle(color: Colors.white),
//         obscureText: label == 'Password' || label == 'Confirm Password',
//       ),
//     );
//   }

//   Widget _buildGetStartedButton() {
//     return ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.green,
//         minimumSize: Size(double.infinity, 50),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//       child: Text(
//         'Get Started',
//         style: TextStyle(fontSize: 18, color: Colors.white),
//       ),
//     );
//   }

//   Widget _buildSocialMediaButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           icon: FaIcon(FontAwesomeIcons.google),
//           onPressed: () {},
//           iconSize: 30,
//           color: Colors.white,
//         ),
//         SizedBox(width: 20),
//         IconButton(
//           icon: FaIcon(FontAwesomeIcons.apple),
//           onPressed: () {},
//           iconSize: 30,
//           color: Colors.white,
//         ),
//       ],
//     );
//   }

//   Widget _buildFooter() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'Create Account',
//           style: TextStyle(color: Colors.white70),
//         ),
//         TextButton(
//           onPressed: () {},
//           child: Text(
//             'Log In',
//             style: TextStyle(color: Colors.green),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
