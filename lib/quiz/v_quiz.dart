/*
 * "senior_client" created by @howyoujini on 2023/11/12  2:17 PM
 * Copyright (c) . All rights reserved.
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:one_day_one_fill_client/color_schemes.dart';
import 'package:one_day_one_fill_client/components/fill_button/fill_button.dart';
import 'package:one_day_one_fill_client/text_style.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.primary,
      appBar: AppBar(
        backgroundColor: context.color.primary,
        leading: IconButton(
          onPressed: context.pop,
          icon: Icon(
            Icons.arrow_back,
            color: context.color.background,
          ),
        ),
        title: Text(
          '돌아가기',
          style: OneTextStyle.h4m(context, context.color.background),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              'assets/images/contents.svg',
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: FillButton(
                context,
                isGreyBackColor: true,
                onPressed: () {},
                child: const Text('참여하기'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
