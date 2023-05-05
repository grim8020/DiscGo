import 'package:card_swiper/card_swiper.dart';
import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double x = 0;
  double y = 0;
  double z = 0;

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [
        //       Colors.green.shade600,
        //       Colors.green.shade100,
        //     ],
        //   ),
        //borderRadius: BorderRadius.all(
        //Radius.circular(20.0),
        //),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Image(
                      image: AssetImage('images/disc_golf_course.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 125,
                      backgroundColor: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(15), // Border radius
                        child: ClipOval(
                          child: Image.asset(
                            'images/DiscGo.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    transform: Matrix4(
                      1,
                      0,
                      0,
                      0,
                      0,
                      1,
                      0,
                      0,
                      0,
                      0,
                      1,
                      0,
                      -75,
                      20,
                      z,
                      1,
                    )
                      ..rotateX(x)
                      ..rotateY(y)
                      ..rotateZ(-.3),
                  )
                ],
              ),
              // SizedBox(height: 25),

              Column(
                children: [
                  Padding(
                    padding: kPaddingLogin,
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'USERNAME / EMAIL',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: kPaddingLogin,
                    child: TextField(
                      autofocus: true,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'PASSWORD',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot username or password?',
                      style: kMediumLabelTextStyleGreen,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: kPaddingLogin,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/passwordLogin');
                  },
                  child: Text(
                    'SIGN IN',
                    style: kLargeButtonTextStyle,
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side:
                            BorderSide(color: Colors.green.shade700, width: 5),
                      ),
                      backgroundColor: Colors.green),
                ),
              ),
              Padding(
                padding: kPaddingLogin,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Don't have an account?",
                    style: kMediumLabelTextStyleBlack,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IntroCardSwiper extends StatelessWidget {
  const IntroCardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://via.placeholder.com/350x150",
              fit: BoxFit.contain,
            );
          },
          itemCount: 3,
          loop: false,
          pagination: SwiperPagination(margin: EdgeInsets.all(10)),
          //control: SwiperControl(),
        ),
      ),
    );
  }
}
