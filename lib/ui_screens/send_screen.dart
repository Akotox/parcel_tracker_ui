import 'package:flutter/material.dart';
import 'package:xpress/ui_screens/widgets/parcel_size.dart';

class ParcelScreen extends StatefulWidget {
  const ParcelScreen({Key? key}) : super(key: key);

  @override
  State<ParcelScreen> createState() => _ParcelScreenState();
}

class _ParcelScreenState extends State<ParcelScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Text(
              'Send Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'Parcel Size',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 11,
            ),
            const ParcelSize(
              parcelSize: 'Small',
              parcelSizeDimension: 'Max 25 kg, 8 X 36 X 64 cm',
              parcelSizeDescription: 'Fits in an envelope',
              parcelSizeImage: 'assets/images/img_parcel_size_small.png',
            ),
            const ParcelSize(
              parcelSize: 'Medium',
              parcelSizeDimension: 'Max 25 kg, 8 X 36 X 64 cm',
              parcelSizeDescription: 'Fits in an cardbox',
              parcelSizeImage: 'assets/images/img_parcel_size_medium.png',
            ),
            const ParcelSize(
              parcelSize: 'Large',
              parcelSizeDimension: 'Max 25 kg, 8 X 36 X 64 cm',
              parcelSizeDescription: 'Fits in an cardbox',
              parcelSizeImage: 'assets/images/img_parcel_size_large.png',
            ),
            const ParcelSize(
              parcelSize: 'Custom',
              parcelSizeDimension: '30 kg or 300 cm',
              parcelSizeDescription: 'Fits on a skid',
              parcelSizeImage: 'assets/images/img_parcel_size_custom.png',
            )
          ],
        ),
      ),
    );
  }
}
