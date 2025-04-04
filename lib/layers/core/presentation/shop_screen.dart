import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/domain/fake_data/fake_category.dart';
import 'package:flutter_groceries/layers/core/domain/fake_data/fake_product.dart';
import 'package:flutter_groceries/layers/core/presentation/product_detail_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/product_see_all_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

import 'package:flutter_groceries/layers/core/domain/fake_data/fake_cart.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ShopScreenState();
  }
}

class ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/caros.png",
                  width: 28,
                  height: 32,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  icon: Icon(
                    Icons.location_on_rounded,
                    color: Colors.black87,
                    size: 22,
                  ),
                  label: Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SearchBar(
                hintText: 'Search Store',
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
                backgroundColor: WidgetStateProperty.all(
                  Colors.grey.withValues(alpha: 0.3),
                ),
                elevation: WidgetStateProperty.all(0),
                leading: Icon(Icons.search),
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/banner.png",
                width: double.infinity,
                height: 115,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductSeeAllScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        color: algae,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  padding: const EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  itemCount: FakeProduct.productList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: ProductCardItem(
                        fakeProduct: FakeProduct.productList()[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductSeeAllScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        color: algae,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  padding: const EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  itemCount: FakeProduct.productList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: ProductCardItem(
                        fakeProduct: FakeProduct.productList()[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Groceries',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductSeeAllScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        color: algae,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  padding: const EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  itemCount: FakeCategory.categoryList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryCardItem(
                      fakeCategory: FakeCategory.categoryList()[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  padding: const EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  itemCount: FakeProduct.productList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: ProductCardItem(
                        fakeProduct: FakeProduct.productList()[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCardItem extends StatelessWidget {
  final FakeProduct fakeProduct;
  final CartService _cartService = CartService();

  ProductCardItem({required this.fakeProduct, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(fakeProduct: fakeProduct),
          ),
        );
      },
      borderRadius: BorderRadius.circular(8),
      child: Card(
        elevation: 1,
        color: soapstone,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: 174,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    fakeProduct.image,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  fakeProduct.name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  fakeProduct.description,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$ ${fakeProduct.price}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _cartService.addItem(
                          fakeProduct.id.toString(),
                          fakeProduct.name,
                          fakeProduct.price,
                          fakeProduct.description,
                          fakeProduct.image,
                        );
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Added item to cart!'),
                            duration: Duration(seconds: 2),
                            action: SnackBarAction(
                              label: 'UNDO',
                              onPressed: () {
                                _cartService.removeSingleItem(
                                  fakeProduct.id.toString(),
                                );
                              },
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(45, 45),
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        backgroundColor: algae,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                          side: const BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCardItem extends StatelessWidget {
  final FakeCategory fakeCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductSeeAllScreen()),
        );
      },
      borderRadius: BorderRadius.circular(8),
      child: Card(
        elevation: 1,
        color: soapstone,
        margin: EdgeInsets.only(right: 15),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 105,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    fakeCategory.image,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  fakeCategory.name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CategoryCardItem({required this.fakeCategory, super.key});
}
