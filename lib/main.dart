import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invezto_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/login.jpeg',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  '     LOGIN TO\nYOUR ACCOUNT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 570,
                width: 400,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Enter your login information',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: TextField(
                        controller: email,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'cliveross@gmail.com',
                            hintStyle: TextStyle(color: Colors.white70),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.4)),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.4)),
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.white70,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, top: 7, bottom: 11),
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: password,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white70),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.4)),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.4)),
                            ),
                            prefixIcon: Icon(
                              Icons.lock_open_rounded,
                              color: Colors.white70,
                            ),
                            suffixIcon: Image.asset(
                              'assets/images/eye.png',
                              color: Colors.white70,
                              scale: 4,
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 6, right: 4, bottom: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Colors.white70, width: 2),
                                )),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18),
                                ))
                          ]),
                    ),
                    Container(
                        height: 60,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Color(0xff4169e1)),
                        child: Center(
                            child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ))),
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon.png',
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Or',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/icon.png',
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),

                            // color: Colors.grey.withOpacity(0.5),

                            color: Color(0xFF212121),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/googli.png',
                                scale: 4,
                              ),
                              Text(
                                'GOOGLE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),

                            // color: Colors.grey.withOpacity(0.5),

                            color: Color(0xFF212121),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.apple,
                                color: Colors.white,
                              ),
                              Text(
                                'APPLE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have an account?',
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
