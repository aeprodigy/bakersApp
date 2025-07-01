class CartItem {
  //properties of the cartItem class
  final String id;
  final String name;
  final double price;
  final String image;
  final int quantity;

  //cartItem constructor
  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 1,
  });
  //copywith method to create a new cartItem with updated quantity
  CartItem copyWith({int? quantity}) {
    return CartItem(
      id: id, 
      name: name, 
      price: price, 
      image: image,
      quantity: quantity ?? this.quantity,//if quantity is null, use the current quantity
      );
  }
}
