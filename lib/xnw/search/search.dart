import 'package:flutter/material.dart';
import 'searchBar.dart';
import '../../core/extension/user_map_extension.dart';

class Search extends StatefulWidget {
  static String routeName = "/search";
  final List datas;
  Search({this.datas});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Map> _resultDatas = List();
  String searchStr = '';
  Widget _buildTitle(String str) {
    TextStyle normalStyle = TextStyle(fontSize: 16, color: Colors.black);
    TextStyle highlightStyle = TextStyle(fontSize: 16, color: Colors.green);
    List<String> re = str.split(searchStr);
    List<TextSpan> spans = [];
    List<TextSpan> spans2 = [];

    print('originString:$str');
    print('splitString:$searchStr');
    print('count:${re.length}--- results:$re');

    re.map((String e) {
      if (e == '') {
        spans2.add(TextSpan(text: searchStr, style: highlightStyle));
      } else {
        spans2.add(TextSpan(text: e, style: normalStyle));
      }
      print('kkkkk:$e');
    }).toList();
    print('span:$spans2');
    return RichText(text: TextSpan(children: spans2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBar(
            searchBarCallback: (value) {
              searchStr = value;
              print('888888:$value');
              if (value.length == 0) {
                _resultDatas = [];
                _resultDatas.clear();
                print("no restlt:$_resultDatas");
              } else {
                _resultDatas.clear();
                _resultDatas = widget.datas
                    .where(
                        (element) => element.nickNameAtAccount.contains(value))
                    .toList();
                print("restlt:$_resultDatas");
              }
              print("end restlt:$_resultDatas");

              setState(() {});
            },
          ),
          Expanded(
            flex: 1, //权重，1：代表剩下全部空间都占用
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: NotificationListener(
                onNotification: (notification) {
                  Focus.of(context).requestFocus(FocusNode());
                },
                child: ListView.builder(
                  itemCount: _resultDatas.length,
                  itemBuilder: (context, index) {
                    Map item = _resultDatas[index];
                    Map lastMsg = item["last_msg"];

                    String iconString = "";
                    Map xx = item;
                    if (xx.containsKey("icon")) {
                      iconString = item["icon"];
                    } else if (xx.containsKey("tuser")) {
                      Map x2 = item["tuser"];
                      iconString = x2["icon"];
                    }

                    // return Text(model.message);
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(iconString),
                      ),
                      title: _buildTitle(item.nickNameAtAccount),
                      subtitle: Text(lastMsg["content"]),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
