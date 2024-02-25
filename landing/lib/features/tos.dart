import 'package:flutter/material.dart';

class Tos extends StatelessWidget {
  const Tos({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Terms of Service',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      '''
Welcome to Synopse! We respect your privacy and want you to feel comfortable using our platform. This policy explains how we handle your information in simple terms. By using our services, you agree to the following terms:

Use of Service:
Synopse provides an AI-powered news and stories aggregation service. By using our app, you agree to comply with these terms. You may use the app for personal, non-commercial purposes only.

User Accounts:
Your Synopse account gives you access to our services. You are responsible for keeping your account password secure and must notify us immediately of any unauthorized use. We may suspend or terminate your account if you violate these terms.

User Content:
Content you submit remains your property but you grant us a license to use it to provide our services. We may remove content that violates policies or laws.

Intellectual Property:
The Synopse app, logo, content and intellectual property are owned by Synopse and protected by copyright laws. You may not use our intellectual property without advance written consent.

Disclaimers:
While Synopse strives to be accurate, we cannot guarantee the content. We are not liable for any errors or third party content.

Advertising:
Synopse displays advertising through services like Google Ads to support our services. These advertising partners may collect information and serve personalized ads based on your use of our services and other sites/apps.

Limitation of Liability:
TO THE FULLEST EXTENT PERMITTED BY LAW, Synopse WILL NOT BE LIABLE FOR ANY INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES. OUR LIABILITY FOR ANY DAMAGES IS LIMITED TO THE AMOUNT YOU PAID US.

Changes to Terms:
We may update these terms periodically and notify you of significant changes through the app or email. Your continued use affirms your agreement to the updates.
                          ''',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.black,
                          ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Privacy Policy',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      '''
We believe in transparency and keeping things simple, and we hope this policy clarifies how we approach your privacy. 

This policy outlines our data collection and use practices:

Information We Collect
We collect information you provide during signup/login, usage data to improve our services, and device/location data to operate the app. We do not access user details or device details.

How We Use Information
We use your information to provide personalized services, communicate with you, improve our offerings, customize content and ads, and enhance security.

Information Sharing
We do not share your personal information except to deliver our services, comply with laws, or protect the rights of Synopse and our users.

Advertising and Analytics Services
We allow third party advertising and analytics partners like Google to collect information about your use of our services over time and across sites/apps to serve personalized ads and measure traffic. We may share a unique identifier with these services to facilitate targeted advertising. The use of your information by these services is governed by their respective privacy policies.

Your Choices
You can control the information we collect through your device settings. You can opt out of non-essential communications through app settings. You can contact us to access, modify or delete your data.

Children's Privacy
Our services are not directed at children. We do not knowingly collect personal information from children under 13.

Security
We implement security safeguards to protect your data, but cannot guarantee against unauthorized access to your data.
                          ''',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.black,
                          ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
