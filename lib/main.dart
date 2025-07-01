import 'package:flutter/material.dart';
import 'package:food_app/providers/cart_provider.dart';
import 'package:food_app/widgets/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';
void main() {
  //providers
  runApp(
    //providers
    MultiProvider(
      providers: [
        //cart provider
        //this provider will be used to manage the cart items 
        ChangeNotifierProvider(create: (_)=>CartProvider(),)
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BottomNavBar(),
    );
  }
}
