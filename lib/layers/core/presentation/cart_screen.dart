import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/domain/fake_data/fake_cart.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

import 'oder_accepted.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartService _cartService = CartService();

  @override
  void initState() {
    super.initState();
    _cartService.addListener(_updateState);
  }

  @override
  void dispose() {
    _cartService.removeListener(_updateState);
    super.dispose();
  }

  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'My Cart',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withValues(alpha: 0.3),
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:
                _cartService.items.isEmpty
                    ? Center(
                      child: Text(
                        'Your cart is empty!',
                        style: TextStyle(color: algae, fontSize: 16),
                      ),
                    )
                    : ListView.builder(
                      itemCount: _cartService.items.length,
                      itemBuilder: (ctx, i) {
                        var item = _cartService.items.values.toList()[i];
                        var productId = _cartService.items.keys.toList()[i];
                        return Dismissible(
                          key: ValueKey(item.id),
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 20),
                            margin: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 4,
                            ),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) {
                            _cartService.removeItem(productId);
                          },
                          child: CartCardItem(item, productId),
                        );
                      },
                    ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return CheckoutBottomSheet(_cartService);
                  },
                );
              },
              borderRadius: BorderRadius.circular(17),
              child: Card(
                elevation: 0,
                color: algae,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.transparent,
                        ),
                        child: Text(
                          '\$${_cartService.totalAmount.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Go to Checkout',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black.withValues(alpha: 0.2),
                        ),
                        child: Text(
                          '\$${_cartService.totalAmount.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartCardItem extends StatefulWidget {
  late CartItem fakeCart;
  late String productId;
  final CartService _cartService = CartService();

  CartCardItem(this.fakeCart, this.productId, {super.key});

  @override
  State<StatefulWidget> createState() {
    return CartCardItemState();
  }
}

class CartCardItemState extends State<CartCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withValues(alpha: 0.3),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              widget.fakeCart.imageUrl,
              fit: BoxFit.fitWidth,
              width: 65,
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fakeCart.name,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.fakeCart.description,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        widget._cartService.removeItem(widget.productId);
                      },
                      child: Icon(Icons.clear, size: 25, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 15),
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
                        ElevatedButton(
                          onPressed: () {
                            widget._cartService.removeSingleItem(
                              widget.productId,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(45, 45),
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                              side: BorderSide(
                                width: 1,
                                color: Colors.grey.withValues(alpha: 0.3),
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.remove,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          widget.fakeCart.quantity.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            widget._cartService.addItem(
                              widget.productId,
                              widget.fakeCart.name,
                              widget.fakeCart.price,
                              widget.fakeCart.description,
                              widget.fakeCart.imageUrl,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(45, 45),
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                              side: BorderSide(
                                width: 1,
                                color: Colors.grey.withValues(alpha: 0.3),
                              ),
                            ),
                          ),
                          child: const Icon(Icons.add, size: 25, color: algae),
                        ),
                      ],
                    ),
                    Text(
                      '\$${(widget.fakeCart.price * widget.fakeCart.quantity).toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CheckoutBottomSheet extends StatelessWidget {
  late CartService cartService;

  CheckoutBottomSheet(this.cartService, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.clear, size: 25, color: Colors.black),
                ),
              ],
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
                  'Delivery',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Selected Method',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
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
                  'Payment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/payment.png'),
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
                  'Promo Code',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Pick discount',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
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
                  'Total Cost',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${cartService.totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
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
            RichText(
              strutStyle: StrutStyle(
                fontSize: 14,
                fontFamily: 'Gilroy',
                height: 1.6,
              ),
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'By placing an order you agree to our\n',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: ' And ', style: TextStyle(color: Colors.grey)),
                  TextSpan(
                    text: 'Conditions',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final random = Random().nextInt(2);
                if (random == 0) {
                  cartService.clearItems();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderAccepted(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CheckoutFailDialog();
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: algae,
                minimumSize: const Size(double.infinity, 67),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Place Order",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutFailDialog extends StatelessWidget {
  const CheckoutFailDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.clear, size: 25, color: Colors.black),
            ),
          ),
          Image.asset('assets/images/dialog.png', height: 180, width: 180),
          SizedBox(height: 30),
          const Text(
            'Oops! Order Failed',
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Something went tembly wrong.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: algae,
                  minimumSize: const Size(double.infinity, 67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Track Order",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back to home",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
