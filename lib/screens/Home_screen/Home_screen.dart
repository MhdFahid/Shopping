import 'package:aldarmobile/screens/Home_screen/description_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/Aderticement.dart';
import 'List_of_property.dart';
import 'container.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.black
  ];

  var colorizeTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Horizon',
  );

  final TextEditingController? editTextController = TextEditingController();

  bool isSearchVisible = false;
  int tabValue = 0;

  TextEditingController searchController = TextEditingController();
  ScrollController horizontalController = ScrollController();
  ScrollController verticalController = ScrollController();
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    verticalController.addListener(() {
      // When the vertical scroll position changes, set the horizontal controller to the same position
      horizontalController.jumpTo(verticalController.position.pixels);
    });
    _tabController = TabController(length: 2, vsync: this);
  }

  List a = [
    "drawer.jpg",
    "test1.jpeg",
    "test.jpeg",
    "drawer.jpg",
    "tes4.jpg",
    "test5.jpg",
    "test3.jpeg",
    "test6.jpg",
    "test7.jpg",
    "test8.jpg",
    "test9.jpg",
    "test10.jpg"
  ];

  List<Widget> widgetbotoom = [
    SaleHome2(),
    RentHome2(),
    const Center(
      child: Text("search"),
    ),
    const Center(
      child: Text("profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text('Aldar'),
      //   actions: [Text("Sales")],
      //   title: SizedBox(
      //     width: 250.0,
      //     child: AnimatedTextKit(
      //       animatedTexts: [
      //         ColorizeAnimatedText(
      //           'ALDAR',
      //           textStyle: colorizeTextStyle,
      //           colors: colorizeColors,
      //         ),
      //       ],
      //       isRepeatingAnimation: true,
      //       onTap: () {},
      //     ),
      //   ),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Color(0xff062925),
      //           image: DecorationImage(
      //             image: AssetImage(
      //                 'assets/images/drawer.jpg'), // Replace with the path to your image asset
      //             fit: BoxFit
      //                 .cover, // You can adjust the fit based on your needs
      //           ),
      //         ),
      //         child: Center(
      //           child: Text(
      //             'ALDAR',
      //             style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 30,
      //                 fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Home'),
      //         leading: const Icon(Icons.home),
      //         onTap: () {
      //           // Handle item 1 tap
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Terms And Conditions'),
      //         leading: const Icon(Icons.description),
      //         onTap: () {
      //           // Handle item 2 tap
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('About Us'),
      //         leading: const Icon(Icons.info),
      //         onTap: () {
      //           // Handle item 2 tap
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: widgetbotoom[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.green,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              // backgroundColor:Colors.amber ,
              label: "Sales",
              icon: Icon(Icons.real_estate_agent_sharp),
              //  color:Colors.accents,
            ),
            BottomNavigationBarItem(
              //  backgroundColor:Colors.amber ,
              label: "Rent",
              icon: Icon(Icons.landscape),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "hh",
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}

// Widget buildpage(int index) {
//   List<Widget> widget = [
//     SaleHome2(),
//     RentHome2(),
//     const Center(
//       child: Text("course"),
//     ),
//     const Center(
//       child: Text("course2"),
//     ),
//     const Center(
//       child: Text("Profile"),
//     )
//   ];
//   return widget[index];
// }

class SaleHome extends StatefulWidget {
  const SaleHome({super.key});

  @override
  State<SaleHome> createState() => _SaleHomeState();
}

class _SaleHomeState extends State<SaleHome>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  ScrollController horizontalController = ScrollController();
  ScrollController verticalController = ScrollController();
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    verticalController.addListener(() {
      // When the vertical scroll position changes, set the horizontal controller to the same position
      horizontalController.jumpTo(verticalController.position.pixels);
    });
    _tabController = TabController(length: 2, vsync: this);
  }

  List a = [
    "drawer.jpg",
    "test1.jpeg",
    "test.jpeg",
    "drawer.jpg",
    "tes4.jpg",
    "test5.jpg",
    "test3.jpeg",
    "test6.jpg",
    "test7.jpg",
    "test8.jpg",
    "test9.jpg",
    "test10.jpg"
  ];

  int buttonindex = 0;
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.black
  ];

  var colorizeTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            "ewec",
            style: TextStyle(color: Colors.red),
          )
        ],
        // title: Text('Aldar'),
        title: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'ALDAR2',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () {},
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff062925),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/drawer.jpg'), // Replace with the path to your image asset
                  fit: BoxFit
                      .cover, // You can adjust the fit based on your needs
                ),
              ),
              child: Center(
                child: Text(
                  'ALDAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Terms And Conditions'),
              leading: const Icon(Icons.description),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.info),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          controller: verticalController,
          slivers: [
            SliverAppBar(
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchView(context, 'search  property'),
                  Aderticement(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(" Properties",
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                      TextButton(onPressed: () {}, child: const Text("See All"))
                    ],
                  ),
                  //start
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    MaterialButton(
                      minWidth: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: buttonindex == 0
                          ? const Color.fromARGB(255, 20, 50, 74)
                          : null,
                      onPressed: () {
                        buttonindex = 0;
                        setState(() {});
                      },
                      child: Text(
                        "All",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                buttonindex == 0 ? Colors.white : Colors.grey),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 8,
                      color: buttonindex == 1
                          ? Color.fromARGB(255, 20, 50, 74)
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        buttonindex = 1;
                        setState(() {});
                      },
                      child: Text(
                        "Popular",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                buttonindex == 1 ? Colors.white : Colors.grey),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 8,
                      color: buttonindex == 2
                          ? Color.fromARGB(255, 20, 50, 74)
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        buttonindex = 2;
                        setState(() {});
                      },
                      child: Text("Category",
                          style: TextStyle(
                              fontSize: 12,
                              color: buttonindex == 2
                                  ? Colors.white
                                  : Colors.grey)),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DescriptionScreen(
                                imageaddress: a[index],
                              )));
                    },
                    child: List_property_ui(imageaddress: a[index])),
                childCount: a.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//site rent

//end

Widget searchView(
  BuildContext context,
  String hintText,
) {
  return Padding(
    padding: const EdgeInsets.all(22.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 1.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 216, 213, 213),
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              // suffixIcon: IconButton(
              //   onPressed: () {
              //     // Handle suffix icon press
              //   },
              //   icon: Icon(Icons.clear),
              // ),
            ),
          ),
        ),
        // Expanded(
        //   child: Container(
        //     width: MediaQuery.of(context).size.width * 0.75,
        //     height: 45,
        //     decoration: BoxDecoration(
        //         // color: AppColors.primaryBackground,
        //         borderRadius: BorderRadius.circular(15),
        //         border: Border.all(
        //             color: const Color.fromARGB(255, 143, 142, 142))),
        //     child: Row(
        //       children: [
        //         Container(
        //           margin: EdgeInsets.only(left: 17),
        //           width: 16,
        //           height: 16,
        //           child: Image.asset("assets/images/search.png"),
        //         ),
        //         Container(
        //           width: 240,
        //           height: 55,
        //           child: TextField(
        //             keyboardType: TextInputType.multiline,
        //             decoration: InputDecoration(
        //               contentPadding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
        //               hintText: hintText,
        //               hintStyle: const TextStyle(
        //                   color: Color.fromARGB(255, 53, 53, 53)),
        //             ),
        //             style: TextStyle(
        //                 color: Colors.black,
        //                 fontFamily: "Avenir",
        //                 fontWeight: FontWeight.normal,
        //                 fontSize: 14),
        //             textInputAction: TextInputAction.search,
        //             onChanged: (value) {},
        //             onSubmitted: (value) {},
        //             autocorrect: false,
        //             obscureText: false,
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        SizedBox(
          width: 3,
        ),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(6),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 61, 61, 216),
              borderRadius: BorderRadius.all(Radius.circular(13)),
              // border: Border.all(color: Color.fromARGB(255, 109, 109, 112)),
            ),
            child: Image.asset(
              "assets/images/options.png",
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}

//mm
class SaleHome2 extends StatefulWidget {
  const SaleHome2({super.key});

  @override
  State<SaleHome2> createState() => _SaleHome2State();
}

class _SaleHome2State extends State<SaleHome2>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  ScrollController horizontalController = ScrollController();
  ScrollController verticalController = ScrollController();
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    verticalController.addListener(() {
      horizontalController.jumpTo(verticalController.position.pixels);
    });
    _tabController = TabController(length: 2, vsync: this);
  }

  List a = [
    "drawer.jpg",
    "test1.jpeg",
    "test.jpeg",
    "drawer.jpg",
    "tes4.jpg",
    "test5.jpg",
    "test3.jpeg",
    "test6.jpg",
    "test7.jpg",
    "test8.jpg",
    "test9.jpg",
    "test10.jpg"
  ];

  List b = [
    "test5.jpg",
    "test3.jpeg",
    "test6.jpg",
    "test7.jpg",
    "test8.jpg",
    "test9.jpg",
    "test10.jpg"
        "drawer.jpg",
    "test1.jpeg",
    "test.jpeg",
    "drawer.jpg",
    "tes4.jpg",
  ];

  int buttonindex = 0;

  int maincategory = 0;

  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.black
  ];

  var colorizeTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Aldar'),
        actions: [
          Text(
            "Sales Properties   ",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
        title: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'ALDAR',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () {},
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff062925),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/drawer.jpg'), // Replace with the path to your image asset
                  fit: BoxFit
                      .cover, // You can adjust the fit based on your needs
                ),
              ),
              child: Center(
                child: Text(
                  'ALDAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Terms And Conditions'),
              leading: const Icon(Icons.description),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.info),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        controller: verticalController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchView(context, 'search  property'),
                Aderticement(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("  Sales Properties",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: const Text("See All"))
                  ],
                ),
                //start
              ],
            ),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            // expandedHeight: 12.0,
            elevation: 0,

            floating: false,
            pinned: true,
            centerTitle: false,
            // flexibleSpace: FlexibleSpaceBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: buttonindex == 0
                      ? const Color.fromARGB(255, 20, 50, 74)
                      : null,
                  onPressed: () {
                    buttonindex = 0;
                    setState(() {});
                  },
                  child: Text(
                    "All",
                    style: TextStyle(
                        fontSize: 12,
                        color: buttonindex == 0 ? Colors.white : Colors.grey),
                  ),
                ),
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  color:
                      buttonindex == 1 ? Color.fromARGB(255, 20, 50, 74) : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    buttonindex = 1;
                    setState(() {});
                  },
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 12,
                        color: buttonindex == 1 ? Colors.white : Colors.grey),
                  ),
                ),
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  color:
                      buttonindex == 2 ? Color.fromARGB(255, 20, 50, 74) : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    buttonindex = 2;
                    setState(() {});
                  },
                  child: Text("Category",
                      style: TextStyle(
                          fontSize: 12,
                          color:
                              buttonindex == 2 ? Colors.white : Colors.grey)),
                ),
              ],
            ),
            // ),
          ),
          buttonindex == 2
              ? SliverList(
                  delegate: SliverChildListDelegate([
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            maincategory = 0;
                            setState(() {});
                          },
                          child: Text('Buildings'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            maincategory = 1;
                            setState(() {});
                          },
                          child: Text('Lands'),
                        ),
                      ],
                    ),
                  ]),
                )
              : SliverList(delegate: SliverChildListDelegate([])),
          buttonindex == 0
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DescriptionScreen(
                                    imageaddress: a[index],
                                  )));
                        },
                        child: List_property_ui(imageaddress: a[index])),
                    childCount: a.length,
                  ),
                )
              : buttonindex == 1
                  ? SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DescriptionScreen(
                                        imageaddress: b[index],
                                      )));
                            },
                            child: List_property_ui(imageaddress: b[index])),
                        childCount: a.length,
                      ),
                    )
                  : maincategory == 0
                      ? SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return ContainerWithCircularBorder(index: index);
                            },
                            childCount:
                                10, // Change this based on your item count
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2.0,
                                  mainAxisSpacing: 2.0,
                                  childAspectRatio: 1.6),
                        )
                      : SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return Land(index: index);
                            },
                            childCount:
                                3, // Change this based on your item count
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2.0,
                                  mainAxisSpacing: 2.0,
                                  childAspectRatio: 1.6),
                        ),
        ],
      ),
    );
  }
}

//working
//rent home

class RentHome2 extends StatefulWidget {
  const RentHome2({super.key});

  @override
  State<RentHome2> createState() => _RentHome2State();
}

class _RentHome2State extends State<RentHome2>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  ScrollController horizontalController = ScrollController();
  ScrollController verticalController = ScrollController();
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    verticalController.addListener(() {
      horizontalController.jumpTo(verticalController.position.pixels);
    });
    _tabController = TabController(length: 2, vsync: this);
  }

  List a = [
    "drawer.jpg",
    "test1.jpeg",
    "test.jpeg",
    "drawer.jpg",
    "tes4.jpg",
    "test5.jpg",
    "test3.jpeg",
    "test6.jpg",
    "test7.jpg",
    "test8.jpg",
    "test9.jpg",
    "test10.jpg"
  ];
  List b = [
    "test6.jpg",
    "test7.jpg",
    "test8.jpg",
    "test9.jpg",
    "test10.jpg"
        "drawer.jpg",
    "test1.jpeg",
    "test.jpeg",
    "drawer.jpg",
    "tes4.jpg",
    "test5.jpg",
    "test3.jpeg",
  ];

  int buttonindex = 0;
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.black
  ];

  var colorizeTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Horizon',
  );
  int maincategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Aldar'),
        actions: [
          Text(
            "Rent Properties   ",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
        title: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'ALDAR',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () {},
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff062925),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/drawer.jpg'), // Replace with the path to your image asset
                  fit: BoxFit
                      .cover, // You can adjust the fit based on your needs
                ),
              ),
              child: Center(
                child: Text(
                  'ALDAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Terms And Conditions'),
              leading: const Icon(Icons.description),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.info),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        controller: verticalController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchView(context, 'search  property'),
                Aderticement(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("  Rent Properties",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {}, child: const Text("See All"))
                  ],
                ),
                //start
              ],
            ),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            // expandedHeight: 12.0,
            elevation: 0,

            floating: false,
            pinned: true,
            centerTitle: false,
            // flexibleSpace: FlexibleSpaceBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: buttonindex == 0
                      ? const Color.fromARGB(255, 20, 50, 74)
                      : null,
                  onPressed: () {
                    buttonindex = 0;
                    setState(() {});
                  },
                  child: Text(
                    "All",
                    style: TextStyle(
                        fontSize: 12,
                        color: buttonindex == 0 ? Colors.white : Colors.grey),
                  ),
                ),
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  color:
                      buttonindex == 1 ? Color.fromARGB(255, 20, 50, 74) : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    buttonindex = 1;
                    setState(() {});
                  },
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 12,
                        color: buttonindex == 1 ? Colors.white : Colors.grey),
                  ),
                ),
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  color:
                      buttonindex == 2 ? Color.fromARGB(255, 20, 50, 74) : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    buttonindex = 2;
                    setState(() {});
                  },
                  child: Text("Category",
                      style: TextStyle(
                          fontSize: 12,
                          color:
                              buttonindex == 2 ? Colors.white : Colors.grey)),
                ),
              ],
            ),
            // ),
          ),
          buttonindex == 2
              ? SliverList(
                  delegate: SliverChildListDelegate([
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            maincategory = 0;
                            setState(() {});
                          },
                          child: Text('Buildings'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            maincategory = 1;
                            setState(() {});
                          },
                          child: Text('Lands'),
                        ),
                      ],
                    ),
                  ]),
                )
              : SliverList(delegate: SliverChildListDelegate([])),
          buttonindex == 0
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DescriptionScreen(
                                    imageaddress: a[index],
                                  )));
                        },
                        child: List_property_ui(imageaddress: a[index])),
                    childCount: a.length,
                  ),
                )
              : buttonindex == 1
                  ? SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DescriptionScreen(
                                        imageaddress: b[index],
                                      )));
                            },
                            child: List_property_ui(imageaddress: b[index])),
                        childCount: a.length,
                      ),
                    )
                  : maincategory == 0
                      ? SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return ContainerWithCircularBorder(index: index);
                            },
                            childCount:
                                10, // Change this based on your item count
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2.0,
                                  mainAxisSpacing: 2.0,
                                  childAspectRatio: 1.6),
                        )
                      : SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return Land(index: index);
                            },
                            childCount:
                                3, // Change this based on your item count
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2.0,
                                  mainAxisSpacing: 2.0,
                                  childAspectRatio: 1.6),
                        ),
        ],
      ),
    );
  }
}
