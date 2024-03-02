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
    var width = MediaQuery.of(context).size.width;
    var fontsize = width > 800 ? 20.0 : 16.0;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 100.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: SvgPicture.asset(
                          SvgConstant.logo,
                          height: 30,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Synopse',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 200.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: SizedBox(
                    width: width > 800 ? 800 : width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text(
                        ' Sign up for our waitlist to be among the first to experience a new era of curated stories, AI-powered interactions and limitless exploration! ',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white, fontSize: fontsize),
                      ),
                    ),
                  ),
                ),
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 400.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: SizedBox(
                    width: width > 800 ? 700 : width - 50,
                    child: Form(
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
                            borderRadius:
                                BorderRadius.circular(30), // Set border radius
                            borderSide: const BorderSide(
                                color:
                                    Colors.white), // Set border color to white
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(30), // Set border radius
                            borderSide: const BorderSide(
                                color:
                                    Colors.white), // Set border color to white
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(30), // Set border radius
                            borderSide: const BorderSide(
                                color:
                                    Colors.white), // Set border color to white
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
                  ),
                ),
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 600.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: Padding(
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
                ),
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 800.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: Padding(
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
                ),
                // row with appstire and playstore
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 1000.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: Padding(
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
                            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                ),
                // link to terms of service
                Animate(
                  effects: [
                    FadeEffect(
                        delay: 1200.milliseconds, duration: 1000.milliseconds)
                  ],
                  child: Padding(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
