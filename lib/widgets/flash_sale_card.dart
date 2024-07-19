import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/product_screen.dart';

class FlashSaleCard extends StatelessWidget {
  const FlashSaleCard({
    super.key,
    required this.imageList,
    required this.prices,
    required this.amount,
  });

  final List<String> imageList;
  final List<String> prices;
  final List amount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: imageList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductScreen(),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            imageList[index],
                            fit: BoxFit.cover,
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xFFDB3022),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  prices[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDB3022)),
                ),
                SizedBox(height: 6),
                Stack(
                  children: [
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 132, 125),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(''),
                    ),
                    Container(
                      width: 150 / 100 * amount[index],
                      decoration: BoxDecoration(
                        color: Color(0xFFDB3022),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(''),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Text(
                          ('Sales ${amount[index]}'),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
