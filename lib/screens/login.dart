import 'package:flutter/material.dart';

import 'home.dart';
import 'sign_up.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
 bool password = true;
    
  return SafeArea(
      
      child: Scaffold(
        
        backgroundColor: const Color.fromARGB(255, 234, 239, 244),
        // appBar: AppBar(
        //   title:const Text('Login Page')
        // ),
        // resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: size,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size * 0.15),
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 17),
                  Padding(
                    padding: EdgeInsets.only(left: size * 0.15),
                    child: const Text(
                      'Please Sign In with your details to continue using the app. Thank You!',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 9, 93, 162)),
                    ),
                  ),
                  const SizedBox(height: 60, width: 411.4),
                  const Center(
                    child: Text('Enter Via Social Networks',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(height: 26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      PhysicalModel(
                        color: Colors.white,
                        elevation: 10.0,
                        shape: BoxShape.circle,
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(Icons.facebook, color:Colors.blue),
                        ),
                      ),
                      SizedBox(width: 18),
                      PhysicalModel(
                        color: Colors.white,
                        elevation: 10.0,
                        shape: BoxShape.circle,
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.beach_access,
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Center(
                    child: Column(
                      children: const [
                        Text(
                          'or Login with',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(227, 18, 110, 186),
                          ),
                        ),
                        Text(
                          'email and password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(227, 18, 110, 186),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height:35),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal:size * 0.11),
                     child: PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      elevation: 8.0,
                      shadowColor: Colors.blue,
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.none),
                          ),
                          border: InputBorder.none,
                          // labelText:'Email',
                          hintText: 'azaygenius@gmail.com',
                          hintStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                  ),
                   ),
                  const SizedBox(height: 30),
        
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:size * 0.11),
                    child: PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      elevation: 8.0,
                      shadowColor: Colors.blue,
                      child: TextField(
                        obscureText: password,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(20.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.none),
                          ),
                          border: InputBorder.none,
                          // labelText:'Password',
                          suffixIcon: Icon(Icons.remove_red_eye,
                              size: 17), //conditonal rendering
                          hintText: 'Enter password',
                          hintStyle: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(height:25),
                Container(
                  margin: EdgeInsets.only(right: size * 0.11),
                  alignment: Alignment.centerRight,
                  child: const Text('Forgot Password?',
                        style: TextStyle(fontSize:16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 9, 93, 162)),
                      ),
                ),
                const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: size * 0.35, vertical: 24),
                        primary: const Color.fromARGB(255, 5, 133, 238),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(size * 0.03)),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()))
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromRGBO(
                                  33,
                                  150,
                                  243,
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ]),
              )],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
