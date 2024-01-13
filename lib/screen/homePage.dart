import 'package:ecommerce/providers/homeProvider.dart';
import 'package:ecommerce/screen/productPage.dart';
import 'package:ecommerce/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'myProfilePage.dart';
import 'newArrival.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).homeApi(context);
    // TODO: implement initState
    super.initState();
  }

  var selectedTab = 0;
  CarouselController carouselController = CarouselController();

  void onBottomTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  var currentIndex = 0;
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
              alignment: AlignmentDirectional.topCenter,
              children: [
                CarouselSlider(
                    carouselController:
                        carouselController, // Give the controller

                    items: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Stack(
                          alignment: Alignment.center,
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
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black),
                                      ),
                                    ),
                                    Text(
                                      'to Hannoush jewellers',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'WE NEVER STOP CELEBRATING.',
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
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
                                                color: Colors.white,
                                                fontSize: 11),
                                          )),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Stack(
                          alignment: Alignment.center,
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
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black),
                                      ),
                                    ),
                                    Text(
                                      'to Hannoush jewellers',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'WE NEVER STOP CELEBRATING.',
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
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
                                                color: Colors.white,
                                                fontSize: 11),
                                          )),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Stack(
                          alignment: Alignment.center,
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
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black),
                                      ),
                                    ),
                                    Text(
                                      'to Hannoush jewellers',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'WE NEVER STOP CELEBRATING.',
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
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
                                                color: Colors.white,
                                                fontSize: 11),
                                          )),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        // height: MediaQuery.of(context).size.height * 0.39,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        autoPlayCurve: Curves.easeInOut,
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        aspectRatio: 18 / 9)),
                Positioned(
                    bottom: 20,
                    // left: 100,
                    // left: MediaQuery.of(context).size.height * 0.08,
                    child:
                        // DotsIndicator(
                        //   dotsCount: 3,
                        //   position: currentIndex,
                        //   onTap: (index) {
                        //     carouselController.animateToPage(index);
                        //   },
                        //   decorator: DotsDecorator(
                        //     color: Colors.white,
                        //     activeColor: Colors.white,
                        //     size: const Size.square(12.0),
                        //     activeSize: const Size(24.0, 12.0),
                        //     activeShape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(12.0),
                        //     ),
                        //   ),
                        // ),
                        AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        fixedCenter: true,
                        activeStrokeWidth: 0.8,
                        activeDotScale: 1.5,
                        activeDotColor: Colors.white,
                        dotColor: Colors.white,
                        maxVisibleDots: 5,
                        radius: 8,
                        spacing: 20,
                        dotHeight: 7,
                        dotWidth: 7,
                      ),
                    )
                    // SmoothPageIndicator(
                    //       controller: carouselController,
                    //       count: 3,
                    //       effect: ScrollingDotsEffect(
                    //         activeStrokeWidth: 2.6,
                    //         activeDotScale: 1.3,
                    //         maxVisibleDots: 5,
                    //         radius: 8,
                    //         spacing: 10,
                    //         dotHeight: 12,
                    //         dotWidth: 12,
                    //       )),
                    )
                // Positioned(
                //   bottom: MediaQuery.of(context).size.height * 0.15,
                //   right: MediaQuery.of(context).size.height * 0.08,
                //   child: IconButton(
                //     onPressed: () {
                //       carouselController.nextPage();
                //     },
                //     icon: Icon(Icons.keyboard_arrow_right),
                //   ),
                // )
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
                    onPressed: () {
                      Navigator.pushNamed(context, '/newArrival');
                    },
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

    if (selectedTab == 3) {
      content = MyProfilePage();
    }
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
                    icon: Icons.notifications_none_rounded,
                    text: "Notify",
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const GButton(
                    icon: Icons.person_outline,
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
