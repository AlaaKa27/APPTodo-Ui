import 'package:flutter/material.dart';
import 'package:tadrib_app/colos.dart';

class SearchS extends StatefulWidget {
  const SearchS({super.key});

  @override
  State<SearchS> createState() => _SearchSState();
}

List<bool> isCheckedList = [];

class _SearchSState extends State<SearchS> {
  int? selectdataindex;

  @override
  void initState() {
    super.initState();
    isCheckedList = List<bool>.filled(tasks.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ChooseColors.backgroundcokor,
      appBar: AppBar(
        backgroundColor: ChooseColors.backgroundcokor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Celendar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ChooseColors.navbarBackgroundColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    //
                    Column(
                      children: [
                        Text(
                          'FEBRUARY',
                          style: TextStyle(
                            color: ChooseColors.whtiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '2022',
                          style: TextStyle(
                            color: ChooseColors.whtiteColor,
                          ),
                        ),
                      ],
                    ),
                    //
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                //
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      30,
                      (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectdataindex = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: selectdataindex == index
                                  ? ChooseColors.choosefordate
                                  : ChooseColors.daytextColor,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'wed',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: ChooseColors.containergreyColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                2,
                (index) {
                  final List<String> buttonnamse = ['Today', 'Tomorrow'];

                  return SizedBox(
                    width: 137,
                    height: 49,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )),
                      onPressed: () {},
                      child: Text(
                        buttonnamse[index],
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          //
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> item = tasks[index];
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: ChooseColors.navbarBackgroundColor,
                      title: Text(
                        tasks[index]['title'],
                        style: TextStyle(color: Colors.white),
                      ),
                      //
                      leading: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          side: BorderSide(color: Colors.white, width: 2),
                          checkColor: Colors.blue,
                          activeColor: Colors.white,
                          value: item['isSelected'],
                          onChanged: (value) {
                            setState(() {
                              item["isSelected"] = value;
                            });
                          }),

                      //
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item['time'],
                            style: TextStyle(color: Colors.white),
                          ),
                          //
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: (item['taype']['color'] as Color)
                                      .withOpacity(0.5),
                                ),
                                child: Row(
                                  spacing: 6,
                                  children: [
                                    Icon(
                                      item['taype']['icon'],
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    Text(
                                      item['taype']['name'],
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        color: ChooseColors.bordersidebutton)),
                                child: Row(
                                  spacing: 7,
                                  children: [
                                    Icon(
                                      Icons.flag_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      item['flags'].toString(),
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
