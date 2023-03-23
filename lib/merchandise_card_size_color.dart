import 'package:flutter/material.dart';

class MerchandiseCardSizeColor extends StatefulWidget {
  MerchandiseCardSizeColor({
    required this.gender,
    required this.size,
    required this.merchImage,
    required this.merchName,
    required this.merchPrice,
    required this.color,
  });

  final String gender;
  final String color;
  final String merchImage;
  final String merchName;
  final String merchPrice;
  final String size;

  @override
  State<MerchandiseCardSizeColor> createState() =>
      _MerchandiseCardSizeColorState();
}

class _MerchandiseCardSizeColorState extends State<MerchandiseCardSizeColor> {
  //final VoidCallback onPressed;
  // bool isSelectedBlack = false;
  // bool isSelectedWhite = false;
  // bool isSelectedGreen = false;
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
            widget.gender,
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
            child: Text(
              'Colors:  ${widget.color}',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

// isSelectedBlack ? Colors.grey : Colors.transparent,

// ClipRRect(
// borderRadius: BorderRadius.circular(20),
// child: Image.network(
// 'https://hollywoodchamber.net/wp-content/uploads/2020/06/tshirt-2.jpg',
// fit: BoxFit.cover,
// ),
// ),
