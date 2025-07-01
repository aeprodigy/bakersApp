import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/models/product.dart';
import 'package:food_app/models/promo_product.dart';
import 'package:food_app/models/recommended_products.dart';
import 'package:food_app/widgets/bottom_navigation_bar.dart';
import 'package:food_app/widgets/product_card.dart';
import 'package:food_app/widgets/promo_banner.dart';
import 'package:food_app/widgets/recommended_cards.dart';
import 'package:food_app/widgets/search_input.dart';
import 'package:food_app/widgets/topbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Product model
  final products = Product.products;
  // Promo banner model
  final prodbanner = PromoProduct.promoProducts;
  //recommended products
  final recommendedProds = RecommendedProducts.recommendedProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            // Top bar with location and search
            TopbarWidget(),
            SizedBox(height: 40),
            //filter or search bar.
            SearchInput(),
            SizedBox(height: 20),
            // Promo banner
            PromoBanner(promoProduct: prodbanner[1]),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Trusted Picks",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Horizontal ListView of products
            SizedBox(
              height: 250, // Set height to fit your ProductCard
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: SizedBox(
                      width: 160, // Constrain width to avoid infinite size
                      child: ProductCard(product: product),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            // Recommended products title
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Recommended",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            //list view of recommended products
            ListView.builder(
              shrinkWrap: true, // Constrain height to only what's needed
              physics:
                  NeverScrollableScrollPhysics(), // Disable internal scrolling
              itemCount: recommendedProds.length,
              itemBuilder: (context, index) {
                final recProduct = recommendedProds[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: RecommendedCards(recProducts: recProduct),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
