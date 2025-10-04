import 'package:flutter/material.dart';
import 'package:tadrib_app/colos.dart';
import 'package:tadrib_app/loginPage/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tadrib app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ChooseColors.backgroundcokor,
      appBar: AppBar(
        backgroundColor: ChooseColors.backgroundcokor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                'Welcome to UpTodo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: ChooseColors.whtiteColor,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Please login to your account or create\n new account to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ChooseColors.whtiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              buttontext.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: index == 0
                              ? ChooseColors.transportcolor
                              : ChooseColors.elevtedbuttoncolor,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        backgroundColor: index == 0
                            ? ChooseColors.elevtedbuttoncolor
                            : ChooseColors.transportcolor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyWidget(),
                          ),
                        );
                      },
                      child: Text(
                        buttontext[index],
                        style: TextStyle(
                          color: ChooseColors.whtiteColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
