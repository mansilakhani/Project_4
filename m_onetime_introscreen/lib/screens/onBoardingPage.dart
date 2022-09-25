import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) => const HomePage(),
    //   ),
    // );
    Navigator.of(context).pushReplacementNamed('homepage');
  }

  Widget buildImage(String path) => Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          width: 300,
          child: Image.asset(
            path,
            width: 300,
          ),
        ),
      );

  //   padding: EdgeInsets.symmetric(vertical: 10),
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      // imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     onPressed: () {
      //       _onIntroEnd(context);
      //     },
      //     child: Text("Let go"),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: 'A reader lives a thousand lives',
          body: 'The man who never reads lives only one.',
          image: buildImage('assets/images/ebook.png'),
        ),
        PageViewModel(
          title: 'Featured Books',
          body: 'Available right at your fingerprints',
          image: buildImage('assets/images/readingbook.png'),
        ),
        PageViewModel(
          title: 'Simple UI',
          body: 'For enhanced reading experience',
          image: buildImage('assets/images/manthumbs.png'),
        ),
        PageViewModel(
          title: 'Today a reader, tomorrow a leader',
          body: 'Start your journey',
          image: buildImage('assets/images/learn.png'),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Text(
        "Skip",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      // back: Icon(Icons.arrow_back),
      skip: const Text('skip'),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text(
        "Read",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      //done: Text("Done"),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        // color: Color(0xff0d5279),
        color: Color(0xFFBDBDBD).withOpacity(0.4),
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.white,
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color(0xff0d5279),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
