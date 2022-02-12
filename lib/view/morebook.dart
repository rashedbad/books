// ignore_for_file: use_key_in_widget_constructors

import 'package:books/view/detail_book.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../List/list_TrendingBooks.dart';

class MoreBook extends StatelessWidget {
  final TrendingBooks_List list;

  const MoreBook(this.list);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF9FE),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: const Color(0xffCBE5F3),
        barBackgroundColor: Colors.white,
        activeIconColor: const Color(0xff305F72),
        inactiveIconColor: const Color(0xffCBE5F3),
        textColor: const Color(0xffCBE5F3),
        tabs: [
          TabData(
            iconData: Icons.explore,
            title: "Explore",
          ),
          TabData(iconData: Icons.menu_book_rounded, title: "Reading"),
          TabData(iconData: Icons.bookmark, title: "Bookmark"),
        ],
        onTabChangedListener: (int position) {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  color: Colors.white,
                  child: Center(
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color(0xff305F72),
                          ))),
                ),
                const Text(
                  'More Book',
                  style: TextStyle(
                      color: Color(0xff305F72),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 44,
                  width: 44,
                  color: Colors.white,
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_outlined,
                            color: Color(0xff305F72),
                          ))),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Top E-Book Reading',
                style: TextStyle(
                    color: Color(0xff305F72),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Image.asset(list.image),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list.name,
                      style: const TextStyle(
                          color: Color(0xff305F72),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      list.detils,
                      style: const TextStyle(
                          color: Color(0xff305F72),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_sharp,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      list.pric,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 47,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red),
                      child: TextButton(
                          onPressed: () {
                            Get.to(Detail_Book(list));
                          },
                          child: const Text(
                            "Detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'More Recomended ',
                    style: TextStyle(
                        color: Color(0xff305F72),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Color(0xff305F72),
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: trendingBooks_List2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffEAF9FE),
                      ),
                      child: Column(children: [
                        Image.asset(trendingBooks_List2.elementAt(index).image),
                        Text(
                          trendingBooks_List2.elementAt(index).detils,
                          style: const TextStyle(
                              fontSize: 14, color: Color(0xff4F9DBC)),
                        ),
                        Text(
                          trendingBooks_List2.elementAt(index).name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff305F72)),
                        ),
                      ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
