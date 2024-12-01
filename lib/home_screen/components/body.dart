import 'package:academy/const_file.dart';
import 'package:academy/home_screen/provider_home_screen.dart';
import 'package:academy/widgets/custom_appbar.dart';
import 'package:academy/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context, homeScreenProvider, child) {
        return Scaffold(
          appBar: homeScreenProvider.isScrolled
              ? CustomAppBar(
                  title: "Railway Exams",
                  isScrolled: homeScreenProvider.isScrolled,
                )
              : AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: backgroundColor,
                ),
          body: SingleChildScrollView(
            controller: homeScreenProvider.scrollController,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: paddingValue - 4),
                  child: CustomAppBar(
                    title: "Railway Exams",
                    isScrolled: homeScreenProvider.isScrolled,
                  ),
                ),
                Column(
                  children: [
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CourseCard(),
                          CourseCard(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingValue + 4),
                      child: CustomButton(
                        isLoading: false,
                        onPressed: () {},
                        child: Text(
                          "View subscription plans",
                          textScaler: const TextScaler.linear(1),
                          style: normalText,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SEE HOW SUBSCRIPTION WORKS",
                          textScaler: const TextScaler.linear(1),
                          style: normalText,
                        ),
                        const Icon(
                          Bootstrap.chevron_compact_right,
                          size: 10,
                          color: secondaryColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AppDivider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingValue + 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Meet Our",
                            textScaler: const TextScaler.linear(1),
                            style: normalText.copyWith(fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text(
                                  "exceptional educators",
                                  textScaler: const TextScaler.linear(1),
                                  style: normalText.copyWith(fontSize: 20),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  Text("SEE ALL", textScaler: const TextScaler.linear(1), style: normalText),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Bootstrap.chevron_compact_right,
                                    size: 10,
                                    color: secondaryColor,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              height: 250,
                              width: 150,
                              child: Image.asset(
                                human,
                                fit: BoxFit.fitHeight,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Saurabh Malik",
                            textScaler: const TextScaler.linear(1),
                            style: normalText,
                          ),
                          Text(
                            "Quantitative Aptitude",
                            textScaler: const TextScaler.linear(1),
                            style: normalText,
                          ),
                          Text(
                            "72k followers",
                            textScaler: const TextScaler.linear(1),
                            style: normalText.copyWith(color: Colors.white30),
                          ),
                        ],
                      ),
                    ),
                    const AppDivider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingValue + 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Couses on all subjects",
                            textScaler: const TextScaler.linear(1),
                            style: normalText.copyWith(fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Upcoming",
                                  textScaler: const TextScaler.linear(1),
                                  style: normalText,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  Text("SEE ALL", textScaler: const TextScaler.linear(1), style: normalText),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Bootstrap.chevron_compact_right,
                                    size: 10,
                                    color: secondaryColor,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              height: 250,
                              width: 150,
                              child: Image.asset(
                                manImage,
                                fit: BoxFit.fitHeight,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 30,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20), border: Border.all(color: hintColor)),
                                  child: Center(
                                      child: Text(
                                    "हिं",
                                    style: normalText,
                                  ))),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "GENERAL AWARENESS",
                                style: normalText.copyWith(color: Colors.blueAccent),
                              )
                            ],
                          ),
                          Text(
                            "Target: Course on GK for",
                            textScaler: const TextScaler.linear(1),
                            style: normalText,
                          ),
                          Text(
                            "Railway Group D",
                            textScaler: const TextScaler.linear(1),
                            style: normalText,
                          ),
                          Text(
                            "Saurabh Malik",
                            textScaler: const TextScaler.linear(1),
                            style: normalText.copyWith(color: Colors.white30),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: hintColor), top: BorderSide(color: hintColor))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: paddingValue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          "Starts at ₹100,000/month",
                          style: normalText,
                          textScaler: const TextScaler.linear(0.9),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Text(
                            "View subscription plans",
                            style: normalText,
                            textScaler: const TextScaler.linear(0.9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Row(
                children: [],
              ),
              BottomNavigationBar(
                  backgroundColor: backgroundColor,
                  selectedItemColor: secondaryColor,
                  unselectedItemColor: Colors.grey,
                  selectedLabelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                  items: homeScreenProvider.navBarItems)
            ],
          ),
        );
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(paddingValue - 6.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: backgroundColor,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(paddingValue - 6.0),
            width: 300,
            child: Image.asset(
              isto,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                  height: 30,
                  width: 22,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: hintColor)),
                  child: Center(
                      child: Text(
                    "हिं",
                    style: normalText,
                  ))),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Text(
                  "FULL SYLLABUS COMPLETION",
                  style: normalText.copyWith(color: Colors.blueAccent),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Abhyaas - Railways Group D",
            textScaler: const TextScaler.linear(1),
            style: boldText.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Icon(
                  Bootstrap.calendar,
                  size: 15,
                  color: secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Started on 5 jan 2022",
                  textScaler: const TextScaler.linear(1),
                  style: normalText.copyWith(color: Colors.white54),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Icon(
                  Bootstrap.clock,
                  size: 15,
                  color: secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Morning classes",
                  textScaler: const TextScaler.linear(1),
                  style: normalText.copyWith(color: Colors.white54),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Icon(
                  Bootstrap.person,
                  size: 15,
                  color: secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: Text(
                    "M S Mustafa, Deepak Kumar\nSharma, Samar Pratab Sing",
                    textScaler: const TextScaler.linear(1),
                    style: normalText.copyWith(color: Colors.white54),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black38,
      thickness: 4,
    );
  }
}
