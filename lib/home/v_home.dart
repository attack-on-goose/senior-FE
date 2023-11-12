/*
 * "senior_client" created by @howyoujini on 2023/11/12  11:58 AM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:one_day_one_fill_client/app.dart';
import 'package:one_day_one_fill_client/color_schemes.dart';
import 'package:one_day_one_fill_client/components/fill_button/fill_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: context.color.primary,
              height: 380,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(
                        children: [
                          Text(
                            "${DateTime.now().year.toString()}년 ${DateTime.now().month.toString()}월",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: context.color.surface,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.calendar_today_rounded,
                              color: context.color.surface,
                            ),
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/Week.svg',
                      width: 400,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: context.color.primary,
                          border: Border.all(
                            width: 0.5,
                            color: context.color.surface.withOpacity(0.2),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: context.color.secondary.withOpacity(0.4),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '오리 님,\n3개의 처방전을 받았어요',
                              style: TextStyle(
                                color: context.color.surface,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/images/avatar.svg',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: context.color.background,
                          border: Border.all(
                            width: 0.5,
                            color: context.color.surface.withOpacity(0.2),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: context.color.secondary.withOpacity(0.4),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '오늘의 퀴즈가 도착했어요',
                                      style: TextStyle(
                                        color: context.color.onBackground,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Icon(Icons.share)
                                  ],
                                ),
                                Text(
                                  '리워드 금액: 10원',
                                  style: TextStyle(
                                    color: context.color.onSecondaryContainer,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                              child: SvgPicture.asset(
                                'assets/images/Letter.svg',
                              ),
                            ),
                            FillButton(context, onPressed: () {
                              context.pushNamed(AppRoutes.QUIZ.name);
                            }, child: const Text('퀴즈 확인하기')),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: context.color.background,
                          border: Border.all(
                            width: 0.5,
                            color: context.color.surface.withOpacity(0.2),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: context.color.secondary.withOpacity(0.4),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '오늘의 아티클',
                                      style: TextStyle(
                                        color: context.color.onBackground,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Icon(Icons.share)
                                  ],
                                ),
                                Text(
                                  '리워드 금액: 5원',
                                  style: TextStyle(
                                    color: context.color.onSecondaryContainer,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                              child: SvgPicture.asset(
                                'assets/images/sleep.svg',
                              ),
                            ),
                            FillButton(context, onPressed: () {
                              context.pushNamed(AppRoutes.QUIZ.name);
                            }, child: const Text('퀴즈 확인하기')),
                          ],
                        ),
                      ),
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
