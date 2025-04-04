class CartItem {
  final String id;
  final String name;
  final double price;
  final String description;
  int quantity;
  final String imageUrl;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    this.quantity = 1,
    required this.imageUrl,
  });
}

class CartService {
  static final CartService _instance = CartService._internal();

  factory CartService() {
    return _instance;
  }

  CartService._internal();

  Map<String, CartItem> _items = {};

  final List<Function> _listeners = [];

  void addListener(Function listener) {
    _listeners.add(listener);
  }

  void removeListener(Function listener) {
    _listeners.remove(listener);
  }

  void _notifyListeners() {
    for (var listener in _listeners) {
      listener();
    }
  }

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(
    String productId,
    String name,
    double price,
    String description,
    String imageUrl,
  ) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId.toString(),
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          name: existingCartItem.name,
          price: existingCartItem.price,
          description: existingCartItem.description,
          quantity: existingCartItem.quantity + 1,
          imageUrl: existingCartItem.imageUrl,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId.toString(),
        () => CartItem(
          id: productId,
          name: name,
          price: price,
          description: description,
          quantity: 1,
          imageUrl: imageUrl,
        ),
      );
    }
    _notifyListeners();
  }

  void clearItems() {
    _items.clear();
    _notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    _notifyListeners();
  }

  void removeSingleItem(String productId) {
    if (!_items.containsKey(productId)) {
      return;
    }
    if (_items[productId]!.quantity > 1) {
      _items.update(
        productId.toString(),
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          name: existingCartItem.name,
          price: existingCartItem.price,
          description: existingCartItem.description,
          quantity: existingCartItem.quantity - 1,
          imageUrl: existingCartItem.imageUrl,
        ),
      );
    } else {
      _items.remove(productId);
    }
    _notifyListeners();
  }

  void clear() {
    _items = {};
    _notifyListeners();
  }
}
