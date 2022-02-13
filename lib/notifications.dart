import 'package:flutter/material.dart';
import 'package:flutter_application_7/constants/color_constant.dart';

class _ArticleDescription extends StatelessWidget {
  const _ArticleDescription({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.author,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                author,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '$publishDate - $readDuration',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  const CustomListItemTwo({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.author,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _ArticleDescription(
                  title: title,
                  subtitle: subtitle,
                  author: author,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ETKİNLİKLER"),
        centerTitle: true,
        backgroundColor: kBlueColor,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.pink),
              ),
              title: 'EDİS KONSERİ',
              subtitle:
                  'Konsere yarım saat kaldı ve kalan 27 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol'
                  'This text should max out at two lines and clip',
              author: 'Konser',
              publishDate: 'Jan 13',
              readDuration: '30 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              title: 'Romeo ve Juliet',
              subtitle:
                  'Oyuna bir saat kaldı ve kalan 22 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol',
              author: 'Tiyatro',
              publishDate: 'Feb 26',
              readDuration: '59 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.pink),
              ),
              title: 'EDİS KONSERİ',
              subtitle:
                  'Konsere yarım saat kaldı ve kalan 27 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol'
                  'This text should max out at two lines and clip',
              author: 'Konser',
              publishDate: 'Jan 13',
              readDuration: '30 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              title: 'Romeo ve Juliet',
              subtitle:
                  'Oyuna bir saat kaldı ve kalan 22 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol',
              author: 'Tiyatro',
              publishDate: 'Feb 26',
              readDuration: '59 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.pink),
              ),
              title: 'EDİS KONSERİ',
              subtitle:
                  'Konsere yarım saat kaldı ve kalan 27 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol'
                  'This text should max out at two lines and clip',
              author: 'Konser',
              publishDate: 'Jan 13',
              readDuration: '30 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              title: 'Romeo ve Juliet',
              subtitle:
                  'Oyuna bir saat kaldı ve kalan 22 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol',
              author: 'Tiyatro',
              publishDate: 'Feb 26',
              readDuration: '59 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.pink),
              ),
              title: 'EDİS KONSERİ',
              subtitle:
                  'Konsere yarım saat kaldı ve kalan 27 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol'
                  'This text should max out at two lines and clip',
              author: 'Konser',
              publishDate: 'Jan 13',
              readDuration: '30 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              title: 'Romeo ve Juliet',
              subtitle:
                  'Oyuna bir saat kaldı ve kalan 22 bilet var. Şu an biletler konsere İstanbulKart ile gelene ücretsiz. Hızlı ol',
              author: 'Tiyatro',
              publishDate: 'Feb 26',
              readDuration: '59 mins',
            ),
          ],
        ),
      ),
    );
  }
}
