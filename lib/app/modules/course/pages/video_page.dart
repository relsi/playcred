import 'package:flutter/material.dart';
import 'package:play_cred/app/modules/course/model/category.dart';

class VideoPage extends StatefulWidget {
  final Lesson lesson;

  VideoPage({Key key, this.lesson}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Text(
                  widget.lesson.title,
                  style: textTheme.headline5.copyWith(color: Colors.white, fontWeight: FontWeight.bold, height: 1),
                ),
                SizedBox(height: 5.0),
                Text(
                  widget.lesson.subtitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: textTheme.subtitle1.copyWith(color: Colors.white.withOpacity(0.8)),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200.0,
                  //width: 150.0,
                  color: colorScheme.onBackground,
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorScheme.primary,
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
