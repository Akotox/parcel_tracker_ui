import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? scanResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Track Parcel',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            centerTitle: false,
            floating: true,
            snap: false,
            pinned: true,
            titleSpacing: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                        'https://www.hardiagedcare.com.au/wp-content/uploads/2019/02/default-avatar-profile-icon-vector-18942381.jpg'),
                  ),
                ),
              )
            ],
            shadowColor: Colors.transparent,
            expandedHeight: 426,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 64),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter your parcel number or Scan QR  code',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 40),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Theme.of(context).backgroundColor,
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    scanBarCode();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    width: 50,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Theme.of(context).backgroundColor,
                                    ),
                                    child: SvgPicture.asset(
                                        'assets/icons/code.svg'),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              height: 48,
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {},
                                style: Theme.of(context).textButtonTheme.style,
                                child: Text(
                                  'Track Parcel',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 32),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Parcels',
                        style: Theme.of(context).textTheme.headline3)
                  ],
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  height: 174,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '09747476463663738',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://economipedia.com/wp-content/uploads/2016/10/Amazon_logo_plain.svg.png'))),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Intransit',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Last update: 3 hours ago',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: LinearProgressIndicator(
                                value: 0.8,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                                backgroundColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Future scanBarCode() async {
    String scanResult;
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
          '#00FF00', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      scanResult = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      this.scanResult = scanResult;
    });
  }
}
