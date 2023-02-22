import 'package:flutter/material.dart';
import 'package:trip_app_ui/widgets/make_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          MakePage(
            page: '1',
            image: 'assets/images/one.jpg',
            title: 'Yosemite National Park',
            description:
                'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.',
          ),
          MakePage(
            page: '2',
            image: 'assets/images/two.jpg',
            title: 'Golden Gate Bridge',
            description:
                'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.',
          ),
          MakePage(
            page: '3',
            image: 'assets/images/three.jpg',
            title: 'Sedona',
            description:
                "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
          ),
          MakePage(
            page: '4',
            image: 'assets/images/four.jpg',
            title: 'Savannah',
            description:
                "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
          ),
        ],
      ),
    );
  }
}
