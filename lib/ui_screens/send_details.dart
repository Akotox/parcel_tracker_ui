import 'package:flutter/material.dart';
import 'package:xpress/ui_screens/widgets/delivery_method.dart';

class ParcelDetailsScreen extends StatefulWidget {
  const ParcelDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ParcelDetailsScreen> createState() => _ParcelDetailsScreenState();
}

class _ParcelDetailsScreenState extends State<ParcelDetailsScreen> {
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
              'Delivery Method',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 11,
            ),
            const ParcelDeliveryMethod(
              parcelDeliveryMethod: 'From door to parcel center',
              parcelDeliveryDuration: '1 - 2 days',
              parcelDeliveryImage: 'assets/images/img_door_to_parcel.png',
            ),
            const ParcelDeliveryMethod(
              parcelDeliveryMethod: 'From door to door',
              parcelDeliveryDuration: '2 - 3 days',
              parcelDeliveryImage: 'assets/images/img_door_to_door.png',
            ),
          ],
        ),
      ),
    );
  }
}
