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
  bool isSelectedBlack = false;
  bool isSelectedWhite = false;
  bool isSelectedGreen = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(width: 5, color: Colors.green),
      ),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 300,
            child: Image.network(widget.merchImage),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.merchName),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('\$${widget.merchPrice}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Colors:'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelectedBlack = !isSelectedBlack;
                    });
                  },
                  child: Icon(
                    Icons.circle_outlined,
                    size: 40,
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        isSelectedBlack ? Colors.black : Colors.transparent),
                  ),
                ),
                RawMaterialButton(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor:
                          isSelectedWhite ? Colors.black : Colors.transparent,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 50,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isSelectedWhite = !isSelectedWhite;
                      });
                    }),
                RawMaterialButton(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor:
                          isSelectedGreen ? Colors.black : Colors.transparent,
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 50,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isSelectedGreen = !isSelectedGreen;
                      });
                    }),
                RawMaterialButton(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor:
                          isSelectedGreen ? Colors.black : Colors.transparent,
                      child: Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isSelectedGreen = !isSelectedGreen;
                      });
                    }),
              ],
            ),
          )
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
