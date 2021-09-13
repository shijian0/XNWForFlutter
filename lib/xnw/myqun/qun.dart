import 'package:FlutterM/core/viewmodel/user_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/viewmodel/inherited/inherited_widget.dart';
import '../../core/extension/qun_map_extension.dart';

class MyQunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("我的群"),
      ),
      body: UserData(child: MyQunContent()),
    );
  }
}

class MyQunContent extends StatefulWidget {
  @override
  _MyQunContentState createState() => _MyQunContentState();
}

class _MyQunContentState extends State<MyQunContent> {
  @override
  void initState() {
    super.initState();
    print("kkkkkkkkkkkkkkkkkkk*******MyQunPage----initState()*********");
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataViewModel>(
      builder: (context, userData, child) {
        if (userData.qunList == null) {
          return Center(child: Text("Nodata"));
        }
        List qunList = userData.qunList;
        return ListView.separated(
            itemBuilder: (context, index) {
              Map qun = qunList[index];

              return ListTile(
                leading: Image.network(
                  qun["icon"],
                ),
                title: Text(qun.qunName),
                // subtitle: ,
              );
            },
            separatorBuilder: (context, index) {
              return Divider(color: Colors.red);
            },
            itemCount: qunList.length);
      },
    );
    // int counter = UserData.of(context).counter;
    // print("wode value: $counter");

    // return Center(child: Text("haha:$counter"));
  }
}
