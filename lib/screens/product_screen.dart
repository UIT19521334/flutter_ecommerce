import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/product_detail_popup.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product'),
        leading: BackButton(),
        surfaceTintColor: Color(0xFFDB3022),
        // backgroundColor: Colors.transparent,
        // foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                // height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider.sliderType1(
                  sliderHeight: 430,
                  autoPlay: true,
                  imagesLink: imageList,
                  isAssets: true,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Warm Zipper",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "đ 300.000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDB3022),
                            fontSize: 24),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Hooded Jacket",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.grey, size: 25),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.grey, size: 25),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 64,
                    child: Text(
                      "Show off your style in the Skechers Unisex Hooded Jacket. The additional hood comes in handy during sudden downpours and scorching days.",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.black12,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Color(0xFFDB3022),
                              size: 25,
                            )),
                      ),
                      SizedBox(
                        width: 240,
                        child: ProductDetailPopup(),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

