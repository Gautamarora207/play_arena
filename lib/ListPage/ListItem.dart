import 'package:flutter/material.dart';
import 'package:flutter_assignment/model/PlayArena.dart';
import 'package:flutter_assignment/constants/constants.dart';

class ListItem extends StatefulWidget {
  final PlayArena playArena;
  ListItem(this.playArena);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> with TickerProviderStateMixin {
  AnimationController _controller;

  Animation<double> _animation;

  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(8.0),
      height: isPortrait ? height * 0.2 : height * 0.32,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.playArena.name,
                style: HeaderTextStyle,
              ),
              Container(
                width: isPortrait ? width * 0.32 : width * 0.2,
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: (colors..shuffle()).first,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RotationTransition(
                      turns: _animation,
                      child: Transform.rotate(
                        angle: 0,
                        child: Image.network(
                          widget.playArena.sports.iconBlackUrl,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    Text(
                      widget.playArena.sports.name,
                      style: regularTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.event_available_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${widget.playArena.dayOfWeeksOpen.first} - ${widget.playArena.dayOfWeeksOpen.last}",
                    style: regularTextStyle.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${widget.playArena.openTime} - ${widget.playArena.closeTime}",
                    style: regularTextStyle.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.attach_money_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.playArena.costPerSlot.toString(),
                    style: regularTextStyle.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.people_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.playArena.slotTimeSize.toString(),
                    style: regularTextStyle.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
