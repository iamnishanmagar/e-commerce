import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:ecommerce/list_gridview.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';

class FirstEntryPage extends StatefulWidget {
  const FirstEntryPage({super.key});

  @override
  State<FirstEntryPage> createState() => _FirstEntryPageState();
}

class _FirstEntryPageState extends State<FirstEntryPage> {
  @override
  Widget build(BuildContext context) {
    final orientationData = MediaQuery.of(context).orientation;

    final List<String> images = [
      'assets/dreamstime_xxl_95739872.jpg',
      'assets/dreamstimefree_15757471.jpg',
      'assets/dreamstimefree_2271542.jpg',
      'assets/dreamstimefree_7901839.jpg',
      'assets/dreamstimefree_20672034.jpg',
      'assets/dreamstimefree_7926144.jpg',
      'assets/dreamstimefree_18120098.jpg',
      'assets/dreamstimefree_20672034.jpg',
      'assets/dreamstimefree_18120098.jpg'
    ];
    // final List<Widget> pages = [
    //   const Homepage(),
    //   const ProfilePage(),
    //   const CartPage(),
    // ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 114, 233, 255),
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  first container  //
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort,
                      size: 33,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_2_outlined, size: 33),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                  hintText: 'Search your product here',
                  contentPadding: EdgeInsets.all(
                      orientationData == Orientation.portrait ? 20 : 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            Padding(
                padding: orientationData == Orientation.portrait
                    ? const EdgeInsets.fromLTRB(10, 10, 0, 0)
                    : const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Text(
                  'Shoes and Sandals',
                  style: orientationData == Orientation.portrait
                      ? CustomTextStyle.heading
                      : CustomTextStyleResponsive.responsiveHeading,
                )),
            const Expanded(
              flex: 3,
              child: CustomGridView(),
            ),

            Padding(
                padding: orientationData == Orientation.portrait
                    ? const EdgeInsets.fromLTRB(0, 0, 0, 0)
                    : const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Other Items',
                  style: orientationData == Orientation.portrait
                      ? CustomTextStyle.heading
                      : CustomTextStyleResponsive.responsiveHeading,
                )),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width:
                            orientationData == Orientation.portrait ? 200 : 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Image.asset(
                          images[index],
                          scale: 3.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        height: orientationData == Orientation.portrait ? 55 : 45,
        backgroundColor: const Color.fromARGB(255, 114, 233, 255),
        items: const [
          Icon(
            Icons.home,
            size: 35,
            color: Color.fromARGB(255, 114, 233, 255),
          ),
          Icon(
            Icons.person,
            size: 35,
          ),
          Icon(
            Icons.shopping_cart,
            size: 35,
          ),
        ],
        animationCurve: Curves.easeInOutBack,
        animationDuration: const Duration(milliseconds: 80),
        onTap: (index) {},
      ),
    );
  }
}
