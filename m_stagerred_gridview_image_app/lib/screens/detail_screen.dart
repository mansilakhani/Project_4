import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:m_stagerred_gridview_image_app/globals/globals.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // final List<String> imagesList = [
  //   'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  //   'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
  //   'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  //   'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  // ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.80;
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('${itemlist[res].name}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: height,
              autoPlay: true,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
            ),
            items: itemlist[res]
                .imagelist
                .map((e) => SizedBox(
                      height: height,
                      child: Image.network(e),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
