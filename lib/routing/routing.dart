import 'package:flutter/material.dart';
import 'package:hentx/presentation/navigation/bottomNav.dart';
import 'package:hentx/presentation/screens/screens.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    const bottomNavPage = "/";
    const homePage = "/homepage";
    const nftPage = "/nfts";
    const videoPage = "/video";

    switch (settings.name) {
      case bottomNavPage:
        return MaterialPageRoute(builder: (_) => BottomNav());
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case nftPage:
        return MaterialPageRoute(builder: (_) => Nft());
      case videoPage:
        return MaterialPageRoute(builder: (_) => Minter());
      default:
        // TODO : can create NotFoundPage
        return MaterialPageRoute(builder: (_) => BottomNav());
    }
  }
}