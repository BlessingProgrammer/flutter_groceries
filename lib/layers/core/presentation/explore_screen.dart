import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/domain/fake_data/fake_category.dart';
import 'package:flutter_groceries/layers/core/domain/fake_data/fake_product.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExploreScreenState();
  }
}

class ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Find Products',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
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
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: 1,
                ),
                itemCount: FakeCategory.categoryList().length,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCardItem(
                    fakeCategory: FakeCategory.categoryList()[index],
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

class CategoryCardItem extends StatelessWidget {
  final FakeCategory fakeCategory;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  fakeCategory.image,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                fakeCategory.name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  CategoryCardItem({required this.fakeCategory, super.key});
}
