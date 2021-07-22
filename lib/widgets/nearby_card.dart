import 'package:flutter/material.dart';
import 'package:food_store/models/nearby.dart';
import 'package:food_store/theme.dart';

class NearbyCard extends StatelessWidget {
  final Nearby nearby;

  NearbyCard(this.nearby);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 83,
        color: Color(0xffFFFFFF),
        child: Row(
          children: [
            Image.asset(
              nearby.imageUrl,
              width: 100,
              height: 83,
            ),
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nearby.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text.rich(
                    TextSpan(
                      text: nearby.price1,
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: nearby.price2,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Text(
                nearby.distance,
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
