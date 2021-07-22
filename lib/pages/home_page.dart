import 'package:flutter/material.dart';
import 'package:food_store/models/categories.dart';
import 'package:food_store/models/nearby.dart';
import 'package:food_store/pages/detail_page.dart';
import 'package:food_store/theme.dart';
import 'package:food_store/widgets/categories_card.dart';
import 'package:food_store/widgets/nearby_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFC),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.only(
            top: 30,
            left: edge,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: edge,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Muharrir',
                        style: blackTextStyle.copyWith(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Food Vlogger',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/profile.png',
                    width: 60,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: edge,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 15,
                  ),
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search restaurant...',
                  hintStyle: greyTextStyle.copyWith(
                    fontSize: 14,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/icon_search.png',
                      width: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 127,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoriesCard(
                        Categories(
                          id: 1,
                          imageUrl: 'assets/categories1.png',
                          name: 'Populer',
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      CategoriesCard(
                        Categories(
                          id: 2,
                          imageUrl: 'assets/categories2.png',
                          name: 'Rottie',
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      CategoriesCard(
                        Categories(
                          id: 3,
                          imageUrl: 'assets/categories3.png',
                          name: 'Steaks',
                        ),
                      ),
                      SizedBox(
                        width: edge,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nearby Restaurant',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: edge,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage()),
                          );
                        },
                        child: Column(
                          children: [
                            NearbyCard(
                              Nearby(
                                id: 1,
                                imageUrl: 'assets/nearby1.png',
                                name: 'Rumah Nenek',
                                price1: '\$\$\$',
                                price2: '\$\$',
                                distance: '1.4mil',
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            NearbyCard(
                              Nearby(
                                id: 2,
                                imageUrl: 'assets/nearby2.png',
                                name: 'Black Polar',
                                price1: '\$\$\$\$\$',
                                distance: '3.4mil',
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            NearbyCard(
                              Nearby(
                                id: 3,
                                imageUrl: 'assets/nearby3.png',
                                name: 'Office Club',
                                price1: '\$\$\$\$',
                                price2: '\$',
                                distance: '3.4mil',
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            NearbyCard(
                              Nearby(
                                id: 4,
                                imageUrl: 'assets/nearby4.png',
                                name: 'Biker Rooms',
                                price1: '\$\$\$',
                                price2: '\$\$',
                                distance: '1.4mil',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
