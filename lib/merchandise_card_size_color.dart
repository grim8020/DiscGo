import 'package:flutter/material.dart';

class MerchandiseCardSizeColor extends StatefulWidget {
  MerchandiseCardSizeColor({
    required this.gender,
    required this.size,
    required this.merchImage,
    required this.merchName,
    required this.merchPrice,
    required this.color,
    //required this.isSelected,
  });

  final String gender;
  final String merchImage;
  final String merchName;
  final String merchPrice;
  final String size;
  final String color;
  //final bool isSelected;

  @override
  State<MerchandiseCardSizeColor> createState() =>
      _MerchandiseCardSizeColorState();
}

class _MerchandiseCardSizeColorState extends State<MerchandiseCardSizeColor> {
  bool isSelected = false;
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(width: 5, color: Colors.green),
          ),
        ),
      ),
      onPressed: () {},
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .5,
            height: MediaQuery.of(context).size.height * .3,
            child: Image.asset(widget.merchImage),
          ),
          Text(
            '$widget.gender,',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Colors.black,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.merchName,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '\$${widget.merchPrice}',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(
                top: 8,
                right: 15,
              ),
              padding: EdgeInsets.all(2.5),
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? color : Colors.transparent,
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
