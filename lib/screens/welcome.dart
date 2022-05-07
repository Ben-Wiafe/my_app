import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'login.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:35.0),
              child: Text(
                'Welcome',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromRGBO(33, 150, 243, 1)),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding:EdgeInsets.symmetric(horizontal:35.0),
              child:  Text(
                'Pleae login or sign up to continue using our app',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromARGB(227, 18, 110, 186)),
              ),
            ),
            const SizedBox(height: 30),
            Image.asset('images/welcome.png'),
           const Center(
              child: Text(
                'Enter via Social Networks',
                style: TextStyle(
                  color: Color.fromRGBO(33, 150, 243, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.blueGrey.withOpacity(.2),
                          offset: const Offset(1, 3),
                        ),
                      ] // Make rounded corner of border
                      ),
                  child: const Icon(Icons.facebook_rounded,
                      color: Colors.blueAccent, size: 30),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          color: Colors.blueGrey.withOpacity(.2),
                          offset: const Offset(1, 4),
                        ),
                      ] // Make rounded corner of border
                      ),
                  child: const Icon(Icons.catching_pokemon,
                      color: Colors.blueAccent, size: 30),
                ),
              ],
            ),
            const SizedBox(height: 25),
            //Login with email
           const  Center(
              child: SizedBox(
                width: 100,
                child: Text(
                  'or login with email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(227, 18, 110, 186),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),

            //Sign up Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: size * 0.35, vertical: 20),
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(size * 0.03))),
                child: const Text('Sign Up', style: TextStyle(fontSize: 19)),
              ),
            ),

            //Login sect
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      'You already have an account? ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    GestureDetector(
                         onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()))
                         },
                      child:const Text(
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
    );
  }
}
