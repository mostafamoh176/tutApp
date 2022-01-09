import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutapp/presintation/constant/color_manager.dart';
import 'package:tutapp/presintation/constant/routes/assets_manager.dart';
import 'package:tutapp/presintation/constant/string_manager.dart';

class OnBoardingView extends StatefulWidget {
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();

  List<SliderObject> _getSliderData() => [
        SliderObject(
          title: AppStrings.title1,
          subTitle: AppStrings.subtitle1,
          image: ImageAssets.onBoarding1,
        ),
        SliderObject(
          title: AppStrings.title2,
          subTitle: AppStrings.subtitle2,
          image: ImageAssets.onBoarding2,
        ),
        SliderObject(
          title: AppStrings.title3,
          subTitle: AppStrings.subtitle3,
          image: ImageAssets.onBoarding3,
        ),
        SliderObject(
          title: AppStrings.title4,
          subTitle: AppStrings.subtitle4,
          image: ImageAssets.onBoarding4,
        ),
      ];

  PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorManager.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(
              sliderObject: _list[index],
            );
          },
        ),
        bottomSheet: Container(
          color: ColorManager.white,
          height: 100,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.skip,
                    textAlign: TextAlign.end,
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}

//
class OnBoardingPage extends StatelessWidget {
  SliderObject sliderObject;

  OnBoardingPage({required this.sliderObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          height: 60,
        ),
        SvgPicture.asset(sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(
      {required this.title, required this.subTitle, required this.image});
}
