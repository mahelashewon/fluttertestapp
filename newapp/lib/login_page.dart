// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   void _login() {
//     if (emailController.text == "test@example.com" &&
//         passwordController.text == "password123") {
//       Navigator.pushReplacementNamed(context, '/home');
//     } else {
//       // Show error message
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Invalid credentials'),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Login', style: TextStyle(fontSize: 32)),
//             SizedBox(height: 30),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _login,
//               child: Text('Log In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
//         textTheme: TextTheme(
//           bodyMedium: TextStyle(color: Colors.white),  // Updated from bodyText2 to bodyMedium
//         ),
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LoginPage(),
//         '/account': (context) => AccountScreen(),
//       },
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   void _login() {
//     if (_emailController.text == "test@example.com" &&
//         _passwordController.text == "password123") {
//       // Redirect to account creation page after successful login
//       Navigator.pushReplacementNamed(context, '/account');
//     } else {
//       // Show error message
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Invalid credentials'),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Login',
//               style: TextStyle(
//                 fontSize: 32.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 30),
//             _buildTextField('Email', _emailController),
//             _buildTextField('Password', _passwordController),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _login,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//               child: Text(
//                 'Log In',
//                 style: TextStyle(fontSize: 18, color: Colors.white),
//               ),
//             ),
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
//         ),
//         style: TextStyle(color: Colors.white),
//         obscureText: label == 'Password',
//       ),
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
//         primaryColor: Colors.blue,
//         textTheme: TextTheme(
//           bodyMedium: TextStyle(color: Colors.white),  // Updated bodyText2 to bodyMedium
//         ),
//       ),
//       home: LoginPage(),  // Set login page as the initial route
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   // Login function to validate email and password
//   void _login() {
//     if (_emailController.text == "test@example.com" &&
//         _passwordController.text == "password123") {
//       // Navigate to the Account screen upon successful login
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => AccountScreen()),
//       );
//     } else {
//       // Show error message if credentials are invalid
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Invalid credentials'),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Login',
//               style: TextStyle(
//                 fontSize: 32.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 30),
//             _buildTextField('Email', _emailController),
//             _buildTextField('Password', _passwordController),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _login,  // Trigger login logic
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//               child: Text(
//                 'Log In',
//                 style: TextStyle(fontSize: 18, color: Colors.white),
//               ),
//             ),
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
//         ),
//         style: TextStyle(color: Colors.white),
//         obscureText: label == 'Password',
//       ),
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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newapp/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,  // Ensuring dark background for the whole app
        primaryColor: Colors.green,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),  // Set text color to white
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green,  // Set button color to green
        ),
      ),
      home: LoginPage(),  // Set login page as the initial route
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Login function to validate email and password
  void _login() {
    if (_emailController.text == "test@example.com" &&
        _passwordController.text == "password123") {
      // Navigate to the Account screen upon successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Show error message if credentials are invalid
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid credentials'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,  // Explicitly set the background to black
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            _buildTextField('Email', _emailController),
            _buildTextField('Password', _passwordController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,  // Trigger login logic
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,  // Button color
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            _buildSocialMediaButton(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  Widget _buildSocialMediaButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.google),
          onPressed: () {},
          iconSize: 30,
          color: Colors.white,
        ),
        
      ],
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.grey[850],  // Darker input field background
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: label == 'Password',
      ),
    );
  }
}

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,  // Explicitly set the background to black
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Create Account',
              style: TextStyle(fontSize: 16.0, color: Colors.white70),
            ),
            SizedBox(height: 10),
            Text(
              'Let\'s get started by filling out the form below.',
              style: TextStyle(color: Colors.white38),
            ),
            SizedBox(height: 30),
            _buildTextField('Email', _emailController),
            _buildTextField('Password', _passwordController),
            _buildTextField('Confirm Password', _confirmPasswordController),
            SizedBox(height: 20),
            _buildGetStartedButton(),
            SizedBox(height: 20),
            Text(
              'Or sign up with',
              style: TextStyle(color: Colors.white60),
            ),
            SizedBox(height: 10),
            _buildSocialMediaButtons(),
            SizedBox(height: 20),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.grey[850],  // Darker input field background
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(
            Icons.visibility_off,
            color: Colors.white70,
          ),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: label == 'Password' || label == 'Confirm Password',
      ),
    );
  }

  Widget _buildGetStartedButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        'Get Started',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _buildSocialMediaButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.google),
          onPressed: () {},
          iconSize: 30,
          color: Colors.white,
        ),
        SizedBox(width: 20),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.apple),
          onPressed: () {},
          iconSize: 30,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Create Account',
          style: TextStyle(color: Colors.white70),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// // ignore: depend_on_referenced_packages
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
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
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