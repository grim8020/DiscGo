import 'package:card_swiper/card_swiper.dart';
import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  double x = 0;
  double y = 0;
  double z = 0;

  FocusNode focusNode = FocusNode();

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.green,
        bottomOpacity: 0.25,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      resizeToAvoidBottomInset: true,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: const Image(
                        image: AssetImage('images/disc_golf_course.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
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
                    )
                  ],
                ),
                SizedBox(height: 25),
                Column(
                  children: [
                    Padding(
                      padding: kPaddingLogin,
                      child: TextField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.verified_user),
                          labelText: 'USERNAME / EMAIL',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: kPaddingLogin,
                      child: TextField(
                        autofocus: false,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        keyboardType: TextInputType.emailAddress,
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(Icons.security),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() => _showPassword = !_showPassword);
                              },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color:
                                    _showPassword ? Colors.green : Colors.grey,
                              )),
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
                      Navigator.pushNamed(context, '/convexBottomBar');
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                              color: Colors.green.shade700, width: 5),
                        ),
                        backgroundColor: Colors.green),
                    child: Text(
                      'SIGN IN',
                      style: kLargeButtonTextStyle,
                    ),
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
                const SizedBox(
                  height: 20,
                )
              ],
            ),
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
          pagination: const SwiperPagination(margin: EdgeInsets.all(10)),
          //control: SwiperControl(),
        ),
      ),
    );
  }
}
