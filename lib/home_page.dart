import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'app_theme.dart';
import 'component/social_button.dart';
import 'gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Center(
              child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            runSpacing: 24,
            spacing: 12,
            children: [
              CircleAvatar(
                backgroundImage: Assets.images.profile,
                backgroundColor: Colors.transparent,
                radius: 85,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.vertical,
                spacing: 4,
                children: [
                  Text('景彬', style: Theme.of(context).textTheme.headline1),
                  const Text(
                    'GitHub account is youlookwhat',
                    style: bodyText1,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Android developer, Kotlin, 微信小程序, Keep Learning',
                    style: bodyText1,
                  ),
                  Wrap(
                    spacing: 2,
                    children: [
                      const SocialButton(
                        icon: FontAwesomeIcons.github,
                        link: 'https://github.com/youlookwhat',
                      ),
                      const SocialButton(
                        icon: FontAwesomeIcons.android,
                        link: 'https://juejin.cn/user/201965867640862/posts/',
                      ),
                      const SocialButton(
                        icon: FontAwesomeIcons.cuttlefish,
                        link: 'https://blog.csdn.net/jingbin_/',
                      ),
                      const SocialButton(
                        icon: FontAwesomeIcons.medium,
                        link: 'http://jinbeen.com',
                      ),
                      // const SocialButton(
                      //   icon: FontAwesomeIcons.weixin,
                      //   link: 'https://speakerdeck.com/',
                      // ),
                      const SocialButton(
                        icon: FontAwesomeIcons.zhihu,
                        link: 'https://www.zhihu.com/people/ren-lai-ren-wang-65-63/',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 Image.network(
                     'https://www.cutercounter.com/hits.php?id=hexknqon&nd=6&style=1'),
                 const SizedBox(height: 8),
                const Text(
                  'Running on Flutter Web',
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(height: 18)
              ],
            ),
          )
        ],
      ),
    );
  }
}
