import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:tadrib_app/colos.dart';
import 'package:tadrib_app/navbar/search_screen.dart';
import 'package:tadrib_app/startPage/start.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context, // Pass the context directly here
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: ChooseColors
          .navbarBackgroundColor, // Background color of the bottom navigation bar
      navBarStyle:
          NavBarStyle.style15, // Use a style that supports more than 3 items
      navBarHeight: 70,
    );
  }

  List<Widget> _buildScreens() {
    return [
      Start_p(), // Screen for the first tab
      SearchS(), // Screen for the second tab
      Container(), // Dummy screen for the third tab (if using onPressed callback)
      Container(), // Dummy screen for the fourth tab
      Container(), // Dummy screen for the fifth tab
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/home-2.png',
          height: 24,
          width: 24,
        ),
        title: ("Home"),
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: Colors.white,
        iconSize: 24,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/calendar.png',
          height: 24,
          width: 24,
        ),
        title: ("Calendar"),
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: Colors.white,
        iconSize: 24,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
        title: (""),
        activeColorPrimary: Color(0xff8687E7),
        inactiveColorPrimary: Colors.grey,
        onPressed: (_) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Bottomsheet(
                imagesPath: imagesPath,
              );
            },
          );
        },
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/clock.png',
          height: 24,
          width: 24,
        ),
        title: ("clock"),
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: Colors.white,
        iconSize: 24,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/user.png',
          height: 24,
          width: 24,
        ),
        title: ("User"),
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: Colors.white,
        iconSize: 24,
      ),
    ];
  }
}

class Bottomsheet extends StatefulWidget {
  final List<String> imagesPath;
  const Bottomsheet({
    super.key,
    required this.imagesPath,
  });

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> with WidgetsBindingObserver {
  int? selectedPriority;

  double _keyboardHeight = 0;
  FocusNode focusNode = FocusNode();
  FocusNode focus = FocusNode();
  TextEditingController desc = TextEditingController();
  TextEditingController dess = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    setState(() {
      _keyboardHeight = bottomInset;
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.32 + _keyboardHeight,
        decoration: BoxDecoration(
          color: ChooseColors.navbarBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: ChooseColors.whtiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                focusNode: focusNode,
                controller: desc,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Do math homework',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                focusNode: focus,
                controller: dess,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Description',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    imagesPath.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: IconButton(
                          onPressed: () {
                            if (index == 0) {
                              showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1990),
                                  lastDate: DateTime(2025));
                            } else if (index == 1) {
                              showDialog(
                                  context: context,
                                  builder: (index) {
                                    return AlertDialog(
                                      content: Text('data'),
                                    );
                                  });
                            } else if (index == 2) {
                              showDialog(
                                context: context,
                                builder: (index) {
                                  return AlertDialog(
                                    backgroundColor: Color(0xff363636),
                                    title: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Task Priority',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xff979797),
                                          thickness: 2,
                                        )
                                      ],
                                    ),
                                    content: Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children: List.generate(10, (index) {
                                        int priority = index + 1;
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedPriority = priority;
                                            });
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width: 60,
                                            height: 64,
                                            decoration: BoxDecoration(
                                              color:
                                                  selectedPriority == priority
                                                      ? Colors.blue
                                                      : Colors.black54,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2)),
                                                Icon(
                                                  Icons.flag_outlined,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Text(
                                                  "$priority",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'cancel',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              selectedPriority != null
                                                  ? () => Navigator.pop(
                                                      context, selectedPriority)
                                                  : null;
                                            },
                                            child: Text(
                                              'save',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          icon: Image.asset(
                            imagesPath[index],
                            width: 24,
                            height: 24,
                          ),
                        ),
                      );
                    },
                  ),
                  //
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/send.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
