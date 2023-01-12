import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          CustomCardType2(
            name: 'Landscape Tattoine',
            imageURrl:
                'https://cdn.dribbble.com/users/2081499/screenshots/5581528/star_wars_-_tatooine_def-01_4x.jpg',
            
          ),
          CustomCardType2(
            imageURrl:
                'https://i.pinimg.com/originals/a6/3b/bf/a63bbfc787f655fc236cc7bf63fcb28f.jpg',
          ),
          CustomCardType2(
            imageURrl:
                'https://www.wallpaperflare.com/static/813/918/501/landscape-star-wars-spaceship-rock-wallpaper.jpg',
          ),
        ],
      ),
    );
  }
}
