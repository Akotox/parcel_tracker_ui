import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ParcelCheckOutPage extends StatefulWidget {
  const ParcelCheckOutPage({Key? key}) : super(key: key);

  @override
  State<ParcelCheckOutPage> createState() => _ParcelCheckOutPageState();
}

class _ParcelCheckOutPageState extends State<ParcelCheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              Text(
                'Checkout',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 21,
              ),
              Container(
                height: 207,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 19,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/img_card_background.png'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '•••• •••• •••• 0412',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ANNIE ROBERTSON',
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          '08/23',
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: Color(0xFFf5f5f5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Summary',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 45,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Edit',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SvgPicture.asset(
                          'assets/images/icon_details.svg',
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recipient',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'James May\njames.may@mail.com\n01698 852695\n11 Rosemount Meadows, Glasgow, G71 8EL',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Parcel size',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Medium',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery method',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'From door to door',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                print('button pressed');
              },
              style: Theme.of(context).textButtonTheme.style,
              child: Text(
                'Pay £3,08',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
