import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/domain/fake_data/fake_product.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class ProductSeeAllScreen extends StatefulWidget {
  const ProductSeeAllScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProductSeeAllScreenState();
  }
}

class ProductSeeAllScreenState extends State<ProductSeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Beverages',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/control.png",
                height: 25,
                width: 25,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: 0.7,
                ),
                itemCount: FakeProduct.productList().length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCardItem(
                    fakeProduct: FakeProduct.productList()[index],
                  );
                },
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

  const ProductCardItem({required this.fakeProduct, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: soapstone,
      margin: EdgeInsets.all(0),
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
                textAlign: TextAlign.center,
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(45, 45),
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor: algae,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
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
    );
  }
}
