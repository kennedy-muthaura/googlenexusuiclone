import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactInformation extends StatelessWidget {
  final List<String> socialIcons = const [
    "assets/images/home_page/social-icons/facebook.png",
    "assets/images/home_page/social-icons/instagram.png",
    "assets/images/home_page/social-icons/linkedin.png",
    "assets/images/home_page/social-icons/pintrest.png",
    "assets/images/home_page/social-icons/tiktok.png",
    "assets/images/home_page/social-icons/twitter.png",
    "assets/images/home_page/social-icons/youtube.png"
  ];
  const ContactInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.orange.shade800,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'About Darasa',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.yellow.shade600,
                    ),
                  ),
                  Text(
                    'Darasa is a haven that embraces the current age and revolutionizes the way students learn and study for their exams in preparation for higher education and what comes after',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'We believe that revision materials should be equally and easily accessible to every student and candidate in kenya',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Using expert teachers, technology and media, we hope to make learning a fun and exiciting experience for students',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Contact Information',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow.shade600,
                    ),
                  ),
                  Text(
                    'Info@darasa.co.ke',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '+254202022002',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Follow Us',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow.shade600,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      ...socialIcons
                          .map((icon) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 5),
                                child: Image.asset(
                                  icon,
                                  width: 30,
                                  height: 20,
                                ),
                              ))
                          .toList(),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: context.width,
          color: Colors.purple,
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.width < 300 ? 5 : 40),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "@2021 Darasa,  All Rights Reserved",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Offstage(
                        offstage: context.width > 500,
                        child: Wrap(
                          children: [
                            ...[
                              "Home",
                              "Library",
                              "Become A Teacher",
                              "Contact1"
                            ]
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Text(e),
                                    ))
                                .toList()
                          ],
                        ),
                      ),
                    ],
                  ),
                  Offstage(
                    offstage: context.width < 500,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: [
                            ...[
                              "Home",
                              "Library",
                              "Become A Teacher",
                              "Contact"
                            ]
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Text(e),
                                    ))
                                .toList()
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
