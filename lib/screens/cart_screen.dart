import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/providers/cart_provider.dart';
import 'package:food_app/widgets/bottom_navigation_bar.dart';
import 'package:food_app/widgets/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Cart")),
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const BottomNavBar(),
            ),
          ),
          icon: Icon(LucideIcons.arrowLeft),
        ),
      ),
      body: Column(
        children: [
          //cart screen
          if (cartProvider.cartItems.isEmpty)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  Text(
                    "The Cart is Empty",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColors.discountColors,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    LucideIcons.shoppingCart,
                    size: 100,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          //cart items
          Expanded(
            child: Consumer<CartProvider>(
              builder: (context, cart, _) => ListView(
                children: cart.cartItems.values
                    .map(
                      (item) => ListTile(
                        leading: Image.asset(
                          item.image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                        title: Text(item.name),
                        subtitle: Text(
                          '${item.quantity} x \$${item.price.toStringAsFixed(2)}',
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: AppColors.buttonColor,
                            size: 40,
                          ),
                          onPressed: () => cart.removeItem(item.id),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),

          //spacer
          Spacer(),

          //prices section
          cartProvider.cartItems.isEmpty ? Column(children: [],)//if the cart is empty
         : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$${cartProvider.totalAmount.toStringAsFixed(2)}",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
