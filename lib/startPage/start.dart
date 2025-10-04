import 'package:flutter/material.dart';
import 'package:tadrib_app/colos.dart';

class Start_p extends StatefulWidget {
  const Start_p({super.key});

  @override
  State<Start_p> createState() => _Start_pState();
}

class _Start_pState extends State<Start_p> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ChooseColors.backgroundcokor,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
              top: 10,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/alaa.png'),
              radius: 42,
            ),
          ),
        ],
        title: Text(
          'index',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      backgroundColor: ChooseColors.backgroundcokor,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image.asset('assets/alaa3.png'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //
          Text(
            'What do you want to do today?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: ChooseColors.whtiteColor,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Tap + to add your tasks',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ChooseColors.whtiteColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
      //
    );
  }
}
