import 'package:FlutterM/xnw/search/search.dart';
import 'package:flutter/material.dart';
import '../../core/utils/common_define.dart';

class SearchCell extends StatefulWidget {
  final List datas;
  SearchCell({this.datas});
  @override
  _SearchCellState createState() => _SearchCellState();
}

class _SearchCellState extends State<SearchCell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('searchCell:${widget.datas}');
        Navigator.of(context)
            .pushNamed(Search.routeName, arguments: widget.datas);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        height: 64,
        color: NavigationBarColor,
        child: Stack(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    size: 44,
                  ),
                  Text('搜索')
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(6.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
