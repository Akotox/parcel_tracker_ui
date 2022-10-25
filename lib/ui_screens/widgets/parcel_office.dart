import 'package:flutter/material.dart';

class ParcelOffice extends StatefulWidget {
  const ParcelOffice(
      {Key? key,
      required this.parcelOfficeCode,
      required this.parcelOfficeHours,
      required this.parcelOfficeName,
      required this.parcelOfficeAddress,
      required this.parcelOfficeStatus,
      required this.parcelOfficeStatsNumber})
      : super(key: key);

  final String parcelOfficeCode,
      parcelOfficeHours,
      parcelOfficeName,
      parcelOfficeAddress,
      parcelOfficeStatus;

  final double parcelOfficeStatsNumber;

  @override
  State<ParcelOffice> createState() => _ParcelOfficeState();
}

class _ParcelOfficeState extends State<ParcelOffice> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 165,
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
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.parcelOfficeCode,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  widget.parcelOfficeHours,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.parcelOfficeName,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  widget.parcelOfficeAddress,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.parcelOfficeStatus,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  height: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: LinearProgressIndicator(
                      value: widget.parcelOfficeStatsNumber,
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      backgroundColor: Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
