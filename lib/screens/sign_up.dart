import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    bool password = true;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size * 0.13, vertical: size * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 14),
                  child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue)),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                      'Please Register with email and sign up to continue using our app',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 10, 61, 103))),
                ),
                const Center(
                  child: Text(
                    'Enter via Social Networks',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    PhysicalModel(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      elevation: 8.0,
                      shadowColor: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child:
                            Icon(Icons.facebook, color: Colors.blue, size: 30.0),
                      ),
                    ),
                    SizedBox(width: 20),
                    PhysicalModel(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.circle,
                      elevation: 8.0,
                      shadowColor: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child:
                            Icon(Icons.favorite, color: Colors.blue, size: 30.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                //Login with email
                const Center(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'or login with emails',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(227, 18, 110, 186),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                PhysicalModel(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  elevation: 8.0,
                  shadowColor: Colors.blue,
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none),
                      ),
                      border: InputBorder.none,
                      // labelText:'Email',
                      hintText: 'Full Name',
                      hintStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
        
                PhysicalModel(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  elevation: 8.0,
                  shadowColor: Colors.blue,
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18.0),
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
                const SizedBox(height: 30),
        
                PhysicalModel(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  elevation: 12.0,
                  shadowColor: Colors.blue,
                  child: TextField(
                    obscureText: password,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(18.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none),
                      ),
                      border: InputBorder.none,
                      // labelText:'Password',
                      suffixIcon: Icon(Icons.remove_red_eye,
                          size: 17), //conditonal rendering
                      hintText: 'Enter password',
                      hintStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(children: const <Widget>[
                    Icon(Icons.gpp_good_rounded,
                        color: Colors.blue), //conditional rendering
                    Text('I agree to the terms and conditions',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ]),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: size * 0.31, vertical: 20),
                      primary: const Color.fromARGB(255, 5, 133, 238),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(size * 0.03)),
                    ),
                    child: const Text('Sign up'),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text(
                      'You already have an account? ',
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
                                builder: (context) => const Login()))
                      },
                      child: const Text(
                        'Login',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
