import 'package:flutter/material.dart';
import 'package:loja/cart_page.dart';
import 'package:loja/cart_view_model.dart';
import 'package:loja/catalog_view_model.dart';
import 'package:loja/detail_page.dart';
import 'package:loja/home_page.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CatalogViewModel>(
          create: (_) => CatalogViewModel(),
        ),
        ChangeNotifierProvider<CartViewModel>(
          create: (_) => CartViewModel(),
        ),
      ],
      child: MaterialApp(
        title: "Loja",
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/detail": (context) => const DetailPage(),
          "/cart": (context) => const CartPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
