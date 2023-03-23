import 'package:flutter/material.dart';

class MerchandiseCardSizeColor extends StatefulWidget {
  MerchandiseCardSizeColor({
    required this.merchImage,
    required this.merchName,
    required this.merchPrice,
  });

  final String merchImage;
  final String merchName;
  final String merchPrice;

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
        backgroundColor: MaterialStateProperty.all(Colors.green),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(width: 5, color: Colors.green.shade800),
          ),
        ),
      ),
      onPressed: () {},
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .3,
            child: Image.asset(widget.merchImage),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.merchName,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('\$${widget.merchPrice}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Colors:'),
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
