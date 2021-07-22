import 'package:flutter/material.dart';
import 'package:food_store/models/categories.dart';
import 'package:food_store/theme.dart';

class CategoriesCard extends StatelessWidget {
  final Categories categories;

  CategoriesCard(this.categories);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: 110,
        height: 127,
        color: Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            children: [
              Image.asset(
                categories.imageUrl,
                width: 38,
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                categories.name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
