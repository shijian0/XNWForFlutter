import 'package:FlutterM/xnw/login/login.dart';
import 'package:FlutterM/xnw/message/detail.dart';
import 'package:FlutterM/xnw/search/searchCell.dart';
import 'package:FlutterM/xnw/unknown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/viewmodel/theme_view_model.dart';
import '../../core/viewmodel/user_data_view_model.dart';
import '../../core/extension/user_map_extension.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List messages = [];
  String detaiBackMessage = "";
  @override
  void initState() {
    super.initState();
    print("kkkkkkkkkkkkkkkkkkk*******MessagePage----initState()*********");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("消息"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("context:$context");
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      body: Consumer<UserDataViewModel>(
        builder: (context, userData, child) {
          print("message data:${userData.messageList}");
          if (userData.messageList == null) {
            return Center(child: Text("还没有消息哦"));
          }
          List totalList = userData.messageList.where((element) {
            if (element["type"] == "qchat" ||
                element["type"] == "friend" ||
                element["type"] == "mchat") {
              return true;
            } else {
              return false;
            }
          }).toList();
          if (totalList.length == 0) {
            return Center(child: Text("还没有消息"));
          }

          return ListView.separated(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return SearchCell(datas: totalList);
                }
                index = index - 1;
                Map item = totalList[index];
                Map lastMsg = item["last_msg"];

                String iconString = "";
                Map xx = item;
                if (xx.containsKey("icon")) {
                  iconString = item["icon"];
                } else if (xx.containsKey("tuser")) {
                  Map x2 = item["tuser"];
                  iconString = x2["icon"];
                }
                return ListTile(
                  leading: item["type"] == "friend"
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(iconString),
                        )
                      : Image.network(iconString),
                  title: Text(item.nickNameAtAccount),
                  subtitle: Text(lastMsg["content"]),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(color: Colors.red);
              },
              itemCount: totalList.length + 1);
        },
      ),
    );
  }

  Widget testWidgt() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(detaiBackMessage),
          MessageContent(this.messages),
          MessageContent2(),
          MessageContent3(),
          FlatButton(
            onPressed: () {
              Future result = Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Detail("home message");
                },
              ));
              result.then((value) {
                print(value);
                detaiBackMessage = value;
                setState(() {});
              });
              // Navigator.of(context).pushNamed("message_detail");
            },
            child: Icon(Icons.arrow_forward_ios),
          ),
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(Detail.routeName, arguments: "routes");
            },
            icon: Icon(Icons.arrow_back),
            label: Text("go to detail with routes"),
          ),
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed(
                Unknown.routeName,
              );
            },
            icon: Icon(Icons.arrow_back),
            label: Text("go to setting with not exist page"),
          ),
        ],
      ),
    );
  }
}

class MessageContent extends StatefulWidget {
  final List messages;
  MessageContent(this.messages);
  @override
  _MessageContentState createState() => _MessageContentState();
}

class _MessageContentState extends State<MessageContent> {
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<ThemeViewModel>(context).counter;
    return Text("provider of test:$counter");
  }
}

class MessageContent2 extends StatefulWidget {
  @override
  _MessageContent2State createState() => _MessageContent2State();
}

class _MessageContent2State extends State<MessageContent2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, vm, child) {
        return Text("Consumer one test:${vm.counter}");
      },
    );
  }
}

class MessageContent3 extends StatefulWidget {
  @override
  _MessageContent3State createState() => _MessageContent3State();
}

class _MessageContent3State extends State<MessageContent3> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeViewModel, UserDataViewModel>(
      builder: (context, theme, user, child) {
        return Text("Consumer two test:${theme.counter}, user");
        // return Text(
        //     "Consumer two test:${theme.counter}, user:${user.user.name}");
      },
    );
  }
}
