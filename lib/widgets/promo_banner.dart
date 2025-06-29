import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/models/promo_product.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoBanner extends StatelessWidget {
  final PromoProduct promoProduct;
  const PromoBanner({super.key, required this.promoProduct});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 190,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.discountColors,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${promoProduct.percentageDiscount}% OFF',
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(promoProduct.promoName),
                  SizedBox(height: 30),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(-0.50),
                child: Image.asset(promoProduct.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
