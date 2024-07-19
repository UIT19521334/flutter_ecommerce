import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/flash_sale_card.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabs = ['All', 'Category', 'Top', 'Recommend'];

  List<String> imageList = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg',
  ];

  List<String> productTitles = [
    'Warm Zipper',
    'Knitted Woo!',
    'Zipper Win',
    'Child Win',
  ];

  List<String> prices = [
    'đ 300.000',
    'đ 400.000',
    'đ 500.000',
    'đ 600.000',
  ];
  List amount = [
    25,
    50,
    40,
    12,
  ];

  List review = [54, 54, 54, 54];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFDB3022),
                          ),
                          border: InputBorder.none,
                          label: Text(
                            "Find your product",
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.zero,
                        height: 50,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.05),
                                blurRadius: 1,
                                spreadRadius: 1,
                              )
                            ]),
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Color(0xFFDB3022),
                          ),
                          onPressed: () {},
                        )),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("images/freed.png"),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Text(
                        "Flash Sale",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Icon(
                        Icons.flash_on,
                        color: Colors.amber,
                        size: 24,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                FlashSaleCard(imageList: imageList, prices: prices, amount: amount),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Newest Products",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ProductCards(productTitles: productTitles, imageList: imageList, review: review, prices: prices),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

