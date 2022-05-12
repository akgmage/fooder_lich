import 'package:flutter/material.dart';
import 'package:fooder_lich/models/explore_recipe.dart';
import '../fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card1({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(11.0)),
        ),
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.headline5,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                recipe.message,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
