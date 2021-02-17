import 'package:flutter/material.dart';
import 'package:flutter_assignment/ListPage/ListItem.dart';
import 'package:flutter_assignment/ListPage/ErrorWidget.dart';
import 'package:flutter_assignment/constants/constants.dart';

class ListPage extends StatefulWidget {
  final List playArenas;
  ListPage(this.playArenas);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;

  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInToLinear,
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Page',
          style: TextStyle(color: white),
        ),
        backgroundColor: black,
      ),
      body: widget.playArenas == null
          ? buildError(context)
          : Container(
              color: lightGrey,
              child: AnimatedList(
                initialItemCount: widget.playArenas.length,
                itemBuilder: (BuildContext context, i, animation) {
                  return SlideTransition(
                    child: ListItem(widget.playArenas[i]),
                    position: _animation,
                  );
                },
              ),
            ),
    );
  }
}
