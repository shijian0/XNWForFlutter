import 'package:flutter/material.dart';
import '../../core/utils/common_define.dart';

class SearchBar extends StatefulWidget {
  final ValueChanged<String> searchBarCallback;
  SearchBar({this.searchBarCallback});
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _textEditingController = TextEditingController();
  bool showClose = false;
  void _onchangeValue(String text) {
    widget.searchBarCallback(text);
    if (text.length > 0) {
      showClose = true;
    } else {
      showClose = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      color: NavigationBarColor,
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            height: 64,
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(5),
                  width: ScreenWidth(context) - 74,
                  height: 44,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search),
                        Expanded(
                          child: TextField(
                            controller: _textEditingController,
                            onChanged: _onchangeValue,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 5, top: -10, bottom: 5),
                                hintText: '搜索'),
                          ),
                        ),
                        showClose
                            ? GestureDetector(
                                onTap: () {
                                  _textEditingController.clear();
                                  _onchangeValue('');
                                },
                                child: Icon(Icons.cancel),
                              )
                            : Container(),
                      ]),
                ),
                FlatButton(
                  // height: 44,
                  minWidth: 64,
                  // color: Colors.red,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('取 消'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
