import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:lista/language.dart';

typedef ListItemClick = void Function(Language language, int index);

class ListItemView extends StatefulWidget {
  final Language language;
  final int index;
  final ListItemClick onClick;

  const ListItemView({
    super.key,
    required this.language,
    required this.index,
    required this.onClick,
  });

  @override
  State<ListItemView> createState() => _ListItemViewState();
}

class _ListItemViewState extends State<ListItemView> {
  bool _autoPlay = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.language.name),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _autoPlay = true;
                });

                widget.onClick(widget.language, widget.index);

                Future.delayed(
                  const Duration(seconds: 3),
                  () => setState(() {
                    _autoPlay = false;
                  }),
                );
              },
              child: ShakeWidget(
                autoPlay: _autoPlay,
                shakeConstant: ShakeChunkConstant(),
                enableWebMouseHover: false,
                child: Icon(
                  widget.language.like ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
