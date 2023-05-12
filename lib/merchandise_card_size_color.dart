import 'package:flutter/material.dart';

class MerchCard extends StatefulWidget {
  const MerchCard({Key? key}) : super(key: key);

  @override
  State<MerchCard> createState() => _MerchCardState();
}

class _MerchCardState extends State<MerchCard> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              height: MediaQuery.of(context).size.height * 0.55,
              child: Scrollbar(
                radius: Radius.circular(40),
                thumbVisibility: true,
                trackVisibility: true,
                controller: _scrollController,
                thickness: 8,
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
                      merchName: 'T-Shirt',
                      merchGender: "Men",
                      merchDescription: "Small front logo",
                    ),
                    CustomMerchCard(
                      merchImage: 'images/woman_grey_t.png',
                      merchPrice: '25.00',
                      merchName: 'Graphic Tee',
                      merchGender: "Women",
                      merchDescription: 'Large front logot',
                    ),
                    CustomMerchCard(
                      merchImage: 'images/male_back_grey_t.png',
                      merchPrice: '25.00',
                      merchName: 'Graphic Tee',
                      merchGender: "Men",
                      merchDescription: 'Large Back Graphic',
                    ),
                    CustomMerchCard(
                      merchImage: 'images/male_back_grey_t.png',
                      merchPrice: '25.00',
                      merchName: 'Graphic Tee',
                      merchGender: "Men",
                      merchDescription: 'Large Back Graphic',
                    ),
                    CustomMerchCard(
                      merchImage: 'images/male_back_grey_t.png',
                      merchPrice: '25.00',
                      merchName: 'Graphic Tee',
                      merchGender: "Men",
                      merchDescription: 'Large Back Graphic',
                    ),
                    CustomMerchCard(
                      merchImage: 'images/male_back_grey_t.png',
                      merchPrice: '25.00',
                      merchName: 'Graphic Tee',
                      merchGender: "Men",
                      merchDescription: 'Large Back Graphic',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMerchCard extends StatefulWidget {
  const CustomMerchCard(
      {Key? key,
      required this.merchImage,
      required this.merchPrice,
      required this.merchGender,
      required this.merchDescription,
      required this.merchName})
      : super(key: key);

  final String merchImage;
  final String merchPrice;
  final String merchName;
  final String merchGender;
  final String merchDescription;

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
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          foregroundImage: AssetImage(widget.merchImage),
                          radius: MediaQuery.of(context).size.height * 0.6,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.merchGender,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '\$ ${widget.merchPrice}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.merchName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.merchDescription,
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: SizeDropdownButton()),
                    Container(
                      width: 40,
                      height: 40,
                      child: Material(
                        elevation: 10,
                        color: Colors.green,
                        shape: CircleBorder(),
                        clipBehavior: Clip.antiAlias,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ColorRadioButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SizeDropdownButton extends StatefulWidget {
  const SizeDropdownButton({super.key});

  @override
  State<StatefulWidget> createState() => _SizeDropdownButtonState();
}

class _SizeDropdownButtonState extends State<SizeDropdownButton> {
  static const menuItems = <String>[
    'XS',
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn1SelectedVal = 'L';
  String? _btn2SelectedVal;
  late String _btn3SelectedVal;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: DropdownButton<String>(
        // Must be one of items.value.
        value: _btn1SelectedVal,
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() => _btn1SelectedVal = newValue);
          }
        },
        items: _dropDownMenuItems,
      ),
    );
  }
}

class ColorRadioButtons extends StatefulWidget {
  const ColorRadioButtons({super.key});

  @override
  State<StatefulWidget> createState() => _ColorRadioButtonsState();
}

class _ColorRadioButtonsState extends State<ColorRadioButtons> {
  int _radioVal = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [0, 1, 2, 3]
          .map(
            (int index) => Expanded(
              child: Radio<int>(
                value: index,
                groupValue: this._radioVal,
                onChanged: (int? value) {
                  if (value != null) {
                    setState(() => this._radioVal = value);
                  }
                },
              ),
            ),
          )
          .toList(),
    );
  }
}

class RawScrollbarExample extends StatefulWidget {
  const RawScrollbarExample({super.key});

  @override
  State<RawScrollbarExample> createState() => _RawScrollbarExampleState();
}

class _RawScrollbarExampleState extends State<RawScrollbarExample> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: constraints.maxWidth / 2,
              // When using the PrimaryScrollController and a Scrollbar
              // together, only one ScrollPosition can be attached to the
              // PrimaryScrollController at a time. Providing a
              // unique scroll controller to this scroll view prevents it
              // from attaching to the PrimaryScrollController.
              child: Scrollbar(
                thumbVisibility: true,
                controller: _firstController,
                child: ListView.builder(
                    controller: _firstController,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Scrollable 1 : Index $index'),
                      );
                    }),
              )),
          SizedBox(
              width: constraints.maxWidth / 2,
              // This vertical scroll view has primary set to true, so it is
              // using the PrimaryScrollController. On mobile platforms, the
              // PrimaryScrollController automatically attaches to vertical
              // ScrollViews, unlike on Desktop platforms, where the primary
              // parameter is required.
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                    primary: true,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 50,
                          color: index.isEven
                              ? Colors.amberAccent
                              : Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 2 : Index $index'),
                          ));
                    }),
              )),
        ],
      );
    });
  }
}
