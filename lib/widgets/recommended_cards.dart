import 'package:flutter/material.dart';
import 'package:food_app/models/recommended_products.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class RecommendedCards extends StatelessWidget {
  final RecommendedProducts recProducts;
  const RecommendedCards({super.key, required this.recProducts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      //child
      child: Row(
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              recProducts.image,
              height: double.infinity,
              width: 200,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  //name and ratings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //name
                      Text(
                        recProducts.name,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 5),
                      //rating
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.amber.withValues(alpha: 0.1),
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Text(
                              recProducts.rating.toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //kitchen name
                  Text(
                    recProducts.kitchenName,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[500],
                    ),
                  ),

                  //location
                  Row(
                    children: [
                      Icon(
                        LucideIcons.mapPin,
                        color: Colors.grey[500],
                        size: 20,
                      ),
                      Text(
                        recProducts.location,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  //price and add btn
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //price
                      Text(
                        "\$${recProducts.price.toStringAsFixed(2)}",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 20),
                      //add button
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //icon
                            Icon(
                              LucideIcons.plus,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            //text
                            Text(
                              'Add',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //
        ],
      ),
    );
  }
}
