import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: '多窗口跳转的title',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: PicturesPage(title: '宠物店'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PicturesPage extends StatefulWidget {
  //传参到app
  PicturesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PicturesPageState createState() =>  _PicturesPageState();
}

//实现代理抽象类（HeaderView）
class TopHeader implements SliverPersistentHeaderDelegate {
  TopHeader({
    this.minExtent,
    this.maxExtent,
  });

  double maxExtent;
  double minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //可叠加的视图
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/a1.jpeg',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.5, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
            ),
          ),
        ),

        //上面view的内视图
        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
          child: Text(
            '美图秀秀 制作者:Benson',
            style: TextStyle(fontSize: 28.0, color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;
}

class _PicturesPageState extends State<PicturesPage> {

  final int rowCount = 3;   // 每行显示的图片数

  final List<String> assetNames = [
        'assets/a2.jpeg',
        'assets/a3.jpeg',
        'assets/a4.jpeg',
        'assets/a5.jpeg',
        'assets/a6.jpeg',
        'assets/a7.jpeg',
        'assets/a8.jpeg',
        'assets/a9.jpeg',
        'assets/a10.jpeg',
        'assets/a19.jpeg',
        'assets/a11.jpeg',
        'assets/a12.jpeg',
        'assets/a13.jpeg',
        'assets/a14.jpeg',
        'assets/a15.jpeg',
        'assets/a16.jpeg',
        'assets/a17.jpeg',
        'assets/a18.jpeg',

  ];

  //滑动视图
  Widget _scrollView(BuildContext context) {

    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: TopHeader(
              minExtent: 100.0,
              maxExtent: 200.0,
            ),
          ),
          //网格视图
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / rowCount,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 2.0, left: 2.0, right: 2.0, bottom: 2.0),
                  child: Image.asset(
                    assetNames[index % assetNames.length],
                  ),
                );
              },
              childCount: assetNames.length * 3,    // 多放几张图片，让图片看上去比较多
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _scrollView(context)
    );
  }
}
