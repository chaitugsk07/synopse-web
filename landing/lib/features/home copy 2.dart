import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:landing/core/router.dart';
import 'package:landing/core/theme/image_constant.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  String? email;

  Future<void> _submitForm(t1) async {
    const url = 'https://acceptable-etty-chaitugsk07.koyeb.app/v1/waitlist';
    Uri uri = Uri.parse('$url?email=$t1');
    try {
      await http.post(uri);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 55, 61, 70),
                  Color.fromARGB(255, 92, 117, 126),
                ],
                stops: [
                  0.5,
                  1.0,
                ],
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 40,
                        child: SvgPicture.asset(
                          SvgConstant.logo,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Animate(
                        effects: [
                          FadeEffect(
                              delay: 100.milliseconds,
                              duration: 1000.milliseconds,
                              curve: Curves.easeInOutCirc),
                        ],
                        child: Text(
                          "SYNOPSE",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: Colors.white,
                                  letterSpacing: 3,
                                  fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  width: 500,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Animate(
                        effects: [
                          FadeEffect(
                              delay: 100.milliseconds,
                              duration: 1000.milliseconds,
                              curve: Curves.easeInOutCirc),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 100, bottom: 30),
                          child: Text(
                            "Welcome to Synopse! Stay informed.",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Animate(
                        effects: [
                          FadeEffect(
                              delay: 200.milliseconds,
                              duration: 1000.milliseconds,
                              curve: Curves.easeInOutCirc),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outline,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Navigate the News Stream",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Animate(
                        effects: [
                          FadeEffect(
                              delay: 300.milliseconds,
                              duration: 1000.milliseconds,
                              curve: Curves.easeInOutCirc),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Text(
                            "Dive into detailed breakdowns of complex issues, presented in a clear and concise way.",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Animate(
                        effects: [
                          FadeEffect(
                              delay: 400.milliseconds,
                              duration: 1000.milliseconds,
                              curve: Curves.easeInOutCirc),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 30),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outline,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Join the Conversation",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Animate(
                        effects: [
                          FadeEffect(
                              delay: 500.milliseconds,
                              duration: 1000.milliseconds,
                              curve: Curves.easeInOutCirc),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Text(
                            "Discuss the news, share insights, and challenge perspectives in a respectful and open forum. Check the leaderboard and improve your news IQ!. ",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // join waitlist row

                SizedBox(
                  height: 350,
                  width: 400,
                  child: Animate(
                    effects: [
                      FadeEffect(
                          delay: 600.milliseconds,
                          duration: 1000.milliseconds,
                          curve: Curves.easeInOutCirc),
                    ],
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: _controller,

                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                                color: Colors.white), // Set text color to white
                            decoration: InputDecoration(
                              labelText: 'email',
                              labelStyle: const TextStyle(
                                  color: Colors
                                      .white), // Set label text color to white
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    30), // Set border radius
                                borderSide: const BorderSide(
                                    color: Colors
                                        .white), // Set border color to white
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    30), // Set border radius
                                borderSide: const BorderSide(
                                    color: Colors
                                        .white), // Set border color to white
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    30), // Set border radius
                                borderSide: const BorderSide(
                                    color: Colors
                                        .white), // Set border color to white
                              ),
                              errorStyle: const TextStyle(
                                  color: Colors
                                      .white), // Set error text color to white
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(
                                      r'^[a-zA-Z0-9.a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')
                                  .hasMatch(value)) {
                                return ' ';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              email = value; // Save the email value
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    _submitForm(email);
                                    _controller.clear();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                ),
                                child: const Text("Join Waitlist"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Handle Instagram button press
                                },
                              ),
                              IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.xTwitter,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Handle Twitter button press
                                },
                              ),
                              IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.threads,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Handle Threads button press
                                },
                              ),
                              IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.youtube,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Handle YouTube button press
                                },
                              ),
                            ],
                          ),
                        ),
                        // row with appstire and playstore
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.transparent.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: const FaIcon(
                                          FontAwesomeIcons.appStore,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          // Handle App Store button press
                                        },
                                      ),
                                      const Text(
                                        "IOS",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.transparent.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: const FaIcon(
                                          FontAwesomeIcons.googlePlay,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          // Handle App Store button press
                                        },
                                      ),
                                      const Text(
                                        "Android",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // link to terms of service
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.go(tos);
                                },
                                child: const Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
