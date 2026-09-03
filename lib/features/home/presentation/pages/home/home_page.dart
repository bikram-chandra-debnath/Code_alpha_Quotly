import 'package:flutter/material.dart';
import 'package:quotly/features/home/presentation/widgets/home/home_app_bar.dart';
import 'package:quotly/features/home/presentation/widgets/home/quote_feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //App bar
          HomeAppBar(),

          // Quote Feed
          QuoteFeed(),
        ],
      ),
    );
  }
}




