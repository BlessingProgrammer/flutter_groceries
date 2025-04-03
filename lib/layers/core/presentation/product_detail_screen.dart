
import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProductDetailScreenState();
  }
}

class ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.withValues(alpha: 0.25),
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.file_upload_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      color: Colors.grey.withValues(alpha: 0.25),
                    ),
                    child: Image.asset(
                      "assets/images/apple_vector.png",
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Select Your Location",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset("assets/images/heart.png"),
                          ],
                        ),
                        Text(
                          "1kg, Price",
                          style: TextStyle(
                            color: Color.fromRGBO(130, 130, 130, 1),
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.horizontal_rule,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.transparent,
                                  ),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.add, color: algae, size: 25),
                              ],
                            ),
                            Text(
                              "\$4.99",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
                        SizedBox(height: 20),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Product Detail',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black87,
                              size: 25,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Apples are nutritious. '
                          'Apples may be good for weight loss.'
                          ' apples may be good for your heart. As part of a'
                          ' healtful and varied diet.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            height: 1.6,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
                        SizedBox(height: 15),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Nutritions',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.grey.withValues(alpha: 0.2),
                                  ),
                                  child: Text(
                                    '100gr',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 25,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
                        SizedBox(height: 15),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Review',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrangeAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrangeAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrangeAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrangeAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrangeAccent,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 25,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: algae,
                              minimumSize: const Size(double.infinity, 67),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Add To Basket",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
