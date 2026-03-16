import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../models/game.dart';
import 'game_card.dart';

class SkeletonGameCard extends StatelessWidget {
  const SkeletonGameCard({super.key});

  @override
  Widget build(BuildContext context) {
    const fakeGame = Game(
      id: 0,
      slug: 'loading',
      name: 'Loading Game Title That Might Be Long',
      backgroundImage: 'https://via.placeholder.com/400',
      rating: 4.5,
      released: '2024-01-01',
    );

    return Skeletonizer(
      enabled: true,
      child: GameCard(
        game: fakeGame,
        onTap: () {},
      ),
    );
  }
}
