import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tadrib_app/colos.dart';
import 'package:tadrib_app/navbar/navbar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            color: Colors.white,
          ),
        ),
        backgroundColor: ChooseColors.backgroundcokor,
      ),
      backgroundColor: ChooseColors.backgroundcokor,
      //home page
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 30,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'Register',
                style: TextStyle(
                  color: ChooseColors.whtiteColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // for the text felid
            Column(
              children: List.generate(
                textRegister.length,
                (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          textRegister[index],
                          style: TextStyle(
                            color: ChooseColors.whtiteColor,
                          ),
                        ),
                      ),
                      // textfelid
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintText: textRegister[index],
                              hintStyle: TextStyle(
                                color: ChooseColors.hinttextfiled,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // elevion
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ChooseColors.elevtedcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Navbar(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
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
                ))
              ],
            ),
            //divider
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(RegisterButtom.length, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
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
                        RegisterButtom[index],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      icon: Icon(
                        index == 0 ? Icons.g_mobiledata_sharp : Icons.apple,
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                  ),
                );
              }),
            ),
            //
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: 'Login',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
                      },
                    style: TextStyle(
                      color: ChooseColors.elevtedbuttoncolor,
                      fontWeight: FontWeight.bold,
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
