
import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

import '../domain/fake_data/fake_product.dart';

class ProductDetailScreen extends StatefulWidget {
  final FakeProduct fakeProduct;

  const ProductDetailScreen({required this.fakeProduct, super.key});

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.file_upload_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
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
                    widget.fakeProduct.image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          widget.fakeProduct.name,
                          style: const TextStyle(
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
                      widget.fakeProduct.description,
                      style: const TextStyle(
                        color: Color.fromRGBO(130, 130, 130, 1),
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
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
                            const Icon(
                              Icons.horizontal_rule,
                              color: Colors.grey,
                              size: 25,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(
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
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Icon(Icons.add, color: algae, size: 25),
                          ],
                        ),
                        Text(
                          '\$${widget.fakeProduct.price}',
                          style: const TextStyle(
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
                    const SizedBox(height: 20),
                    Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Product Detail',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black87,
                          size: 25,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
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
                    const SizedBox(height: 20),
                    Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.grey.withValues(alpha: 0.2),
                              ),
                              child: const Text(
                                '100gr',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black87,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
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
                            const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 20),
                            const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 20),
                            const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 20),
                            const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 20),
                            const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 20),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black87,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
