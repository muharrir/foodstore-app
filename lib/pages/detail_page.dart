import 'package:flutter/material.dart';
import 'package:food_store/theme.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedId = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/cover.png',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Cake',
                      style: blackTextStyle.copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Jakarta, Indonesia',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                          color: greyColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text.rich(
                      TextSpan(
                        text: '12,409',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: ' reviews',
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: edge),
            child: Text(
              'This Summer',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        ],
      );
    }

    Widget option(
      int id,
      String imageUrl,
      String name,
      String price,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          left: edge,
          right: edge,
          top: 16,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedId = id;
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 83,
              color: Color(0xffFFFFFF),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Image.asset(
                      imageUrl,
                      width: 55,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          price,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    selectedId == id
                        ? Image.asset(
                            'assets/check.png',
                            width: 24,
                          )
                        : Image.asset(
                            'assets/blank_check.png',
                            width: 24,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget checkoutButton() {
      return Padding(
        padding: const EdgeInsets.only(
          left: edge,
          right: edge,
          top: 40,
          bottom: 30,
        ),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: yellowColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(58),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Continue to Checkout',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFAFC),
      body: Column(
        children: [
          header(),
          option(0, 'assets/summer1.png', 'Vegan X World', '\$12,000'),
          option(1, 'assets/summer2.png', 'Kiwii Kawaii', '\$40,000'),
          option(2, 'assets/summer3.png', 'Grape Passion', '\$65,000'),
          selectedId == -1 ? SizedBox() : checkoutButton(),
        ],
      ),
    );
  }
}
