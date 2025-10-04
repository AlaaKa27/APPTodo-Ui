import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tadrib_app/colos.dart';
import 'package:tadrib_app/loginPage/taadi.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: ChooseColors.whtiteColor,
          ),
        ),
        backgroundColor: ChooseColors.backgroundcokor,
      ),
      backgroundColor: ChooseColors.backgroundcokor,
      body: SingleChildScrollView(
        child: Column(
          spacing: 40,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: ChooseColors.whtiteColor,
                ),
              ),
            ),
            // colum to text failed
            Column(
              children: List.generate(textfailed.length, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        textfailed[index],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: textfailed[index],
                          hintStyle: TextStyle(
                            color: ChooseColors.hinttextfiled,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),

            //padding for login button
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ChooseColors.elevtedcolor,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: ChooseColors.whtiteColor,
                    ),
                  ),
                ),
              ),
            ),
            //for the or end line
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
            // for the google end apple
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                textbutton.length,
                (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      height: 48,
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: BorderSide(
                            color: ChooseColors.bordersidebutton,
                          ),
                        ),
                        onPressed: () {},
                        label: Text(
                          textbutton[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        icon: Icon(
                          index == 0
                              ? Icons.g_mobiledata_outlined
                              : Icons.apple,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // for text rich
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Don’t have an account ? ',
                style: TextStyle(
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: 'Register',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ChooseColors.bordersidebutton,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
