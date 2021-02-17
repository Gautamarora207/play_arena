import 'package:flutter/material.dart';
import 'package:flutter_assignment/ListPage/ListItem.dart';
import 'package:flutter_assignment/ListPage/ErrorWidget.dart';
import 'package:flutter_assignment/constants/constants.dart';

class ListPage extends StatelessWidget {
  final List playArenas;
  ListPage(this.playArenas);
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
      body: playArenas == null
          ? buildError(context)
          : Container(
              color: lightGrey,
              child: ListView.builder(
                itemBuilder: (BuildContext context, i) {
                  return ListItem(playArenas[i]);
                },
                itemCount: playArenas.length,
              ),
            ),
    );
  }
}
