import 'package:ecommerce/pages/newArrival.dart';
import 'package:ecommerce/pages/productPage.dart';
import 'package:ecommerce/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedTab = 0;

  void onBottomTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget content = SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/logo1.png',
                  height: 34,
                  width: 124,
                ),
                FloatingActionButton.small(
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  onPressed: () {},
                  child: Icon(
                    Icons.drag_handle,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Center(
                    child: Image.asset(
                  'assets/home.png',
                  width: width,
                )),
                Positioned(
                    left: 40,
                    top: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Welcome,',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Text(
                          'to Hannoush jewellers',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'WE NEVER STOP CELEBRATING.',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              onPressed: () {},
                              child: Text(
                                'Shop Now!',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              )),
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Image.asset('assets/features1.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arrivals',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
    if (selectedTab == 1) {
      content = ProductPage();
    }
    if (selectedTab == 2) {
      content = NewArrivalPage();
    }

    // if (selectedTab == 3) {
    //   content = ();
    //  }
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: content,
          ),
          bottomNavigationBar: Container(
            // height: 60,
            // width: width,
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    // spreadRadius: 0,
                    blurRadius: 15,
                    offset: Offset(0.0, 0.75)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20.0,
              ),
              child: GNav(
                padding: const EdgeInsets.all(10),
                activeColor: Colors.white,
                color: Colors.black,
                selectedIndex: selectedTab, // Pass the selected index
                onTabChange: onBottomTab,

                tabBackgroundColor: Color.fromARGB(236, 236, 236, 236),
                gap: 8,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    leading: SizedBox(
                      width: 30,
                      height: 30,
                      child: selectedTab == 0
                          ? Image.asset("assets/icon1.png")
                          : const Icon(Icons.home),
                    ),
                    textStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const GButton(
                    icon: Icons.shopping_cart,
                    text: "Cart",
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const GButton(
                    icon: Icons.add_alarm_rounded,
                    text: "Notify",
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const GButton(
                    icon: Icons.supervised_user_circle,
                    text: "Profile",
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          // bottomNavigationBar: Container(
          //   height: 60,
          //   width: width,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(30),
          //       topLeft: Radius.circular(30),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //           color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          //     ],
          //   ),
          //   child: ClipRRect(
          //     //for rounded corner
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(30.0),
          //       topRight: Radius.circular(30.0),
          //     ),
          //     child: BottomNavigationBar(
          //         type: BottomNavigationBarType.fixed,
          //         selectedItemColor: Color.fromRGBO(237, 187, 171, 1),
          //         selectedLabelStyle: const TextStyle(fontSize: 11),
          //         unselectedItemColor: Colors.black,
          //         showUnselectedLabels: false,
          //         showSelectedLabels: true,
          //         unselectedLabelStyle: const TextStyle(fontSize: 11),
          //         currentIndex: selectedTab,
          //         onTap: onBottomTab,
          //         items: const [
          //           BottomNavigationBarItem(
          //             icon: Icon(
          //               Icons.home,
          //               size: 30,
          //             ),
          //             label: 'Home',
          //             // activeIcon: Icon(
          //             //   Icons.home,
          //             //   size: 30,
          //             // ),
          //           ),
          //           BottomNavigationBarItem(
          //               icon: Icon(
          //                 Icons.shopping_cart,
          //                 size: 30,
          //               ),
          //               label: 'Card'),
          //           BottomNavigationBarItem(
          //               icon: Icon(
          //                 Icons.notifications,
          //                 size: 30,
          //               ),
          //               label: 'Bell'),
          //           BottomNavigationBarItem(
          //               icon: Icon(
          //                 Icons.person_sharp,
          //                 size: 30,
          //               ),
          //               label: 'Profile'),
          //         ]),
          //   ),
          // ),
        ));
  }
}
