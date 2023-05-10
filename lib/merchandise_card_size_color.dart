import 'package:flutter/material.dart';

class MerchCard extends StatefulWidget {
  const MerchCard({Key? key}) : super(key: key);

  @override
  State<MerchCard> createState() => _MerchCardState();
}

class _MerchCardState extends State<MerchCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              child: Image.asset(
                'images/DiscGoShopCart.png',
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              child: Text('Dress like the DeGen Pros'),
              color: Colors.grey,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1.0,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  children: [
                    CustomMerchCard(
                      merchImage: 'images/male_small.png',
                      merchPrice: '25.00',
                      merchName: 'Graphic Tee',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomMerchCard extends StatefulWidget {
  const CustomMerchCard(
      {Key? key,
      required this.merchImage,
      required this.merchPrice,
      required this.merchName})
      : super(key: key);

  final String merchImage;
  final String merchPrice;
  final String merchName;

  @override
  State<CustomMerchCard> createState() => _CustomMerchCardState();
}

class _CustomMerchCardState extends State<CustomMerchCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 290,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    widget.merchImage,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.merchName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtitle',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '\$  ${widget.merchPrice}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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

class MerchGridWithCard extends StatefulWidget {
  const MerchGridWithCard(
      {Key? key,
      required this.name,
      // required this.size,
      required this.gender,
      required this.image,
      // required this.color,
      required this.price})
      : super(key: key);

  final String name;
  final String image;
  // final String size;
  // final Color color;
  final String gender;
  final String price;

  @override
  State<MerchGridWithCard> createState() => _MerchGridWithCardState();
}

class _MerchGridWithCardState extends State<MerchGridWithCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: 6,
        itemBuilder: (ctx, i) {
          return Card(
            child: Container(
              height: 290,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.price}, ${widget.gender}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 5,
          mainAxisExtent: 264,
        ),
      ),
    );
  }
}

class Merch {
  late String image;
  late String name;
  late String size;
  late String gender;
  late Color color;
  late String price;
}

void tShirtMen() {
  Merch tShirt = Merch();
  tShirt.image = 'images/male_small.png';
  tShirt.name = 'DiscGo Graphic T';
  tShirt.size = 'X-Large';
  tShirt.gender = 'Men';
  tShirt.color = Colors.grey;
  tShirt.price = '\$35';
}
// class MerchGridList extends StatelessWidget {
//   const MerchGridList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       // Create a grid with 2 columns. If you change the scrollDirection to
//       // horizontal, this would produce 2 rows.
//       crossAxisCount: 2,
//       // Generate 100 Widgets that display their index in the List
//       children: List.generate(10, (index) {
//         return Center(
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey, width: 3.0),
//             ),
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Item $index',
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
