import 'package:FlutterM/core/viewmodel/user_data_view_model.dart';
import 'package:FlutterM/xnw/common/routes.dart';
import 'package:FlutterM/xnw/common/theme.dart';
import 'package:FlutterM/xnw/common/app_init.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/viewmodel/theme_view_model.dart';
import 'xnw/drawer/drawer.dart';
import 'core/viewmodel/AppGlobal.dart';
import 'xnw/login/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppGlobal.init().then(
      (value) => runApp(MultiProvider(providers: providers, child: MyApp())));
  ;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataViewModel>(
      builder: (context, userData, child) {
        return MaterialApp(
          theme: ThemeData(primaryColor: userData.currentThemeColor),
          // darkTheme: APPTheme.darkTheme,
          routes: APPRoutes.routes,
          onGenerateRoute: APPRoutes.generateRoute,
          onUnknownRoute: APPRoutes.unknownRoute,
          debugShowCheckedModeBanner: false,
          home: Consumer<UserDataViewModel>(
            builder: (context, userdata, child) {
              print("jjj");
              return homeWidget(userData);
            },
          ),
        );
      },
    );
  }

  Widget homeWidget(UserDataViewModel model) {
    if (model.loginModel == null) {
      return LoginPage();
    } else {
      return Home();
    }
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  GlobalKey<_TestGlobalKeyState> gbKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LYDrawer(),
      // appBar: AppBar(title: Text("Home")),
      // body: TestGlobalKey(
      //   key: gbKey,
      // ),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      floatingActionButton: Selector<ThemeViewModel, ThemeViewModel>(
        builder: (context, vm, child) {
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              vm.counter++;
              print(vm.counter);
            },
          );
        },
        selector: (context, rtVM) {
          return rtVM;
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.red,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: bottomItems,
        onTap: (value) {
          _currentIndex = value;
          print(value);
          setState(() {});
        },
      ),
    );
  }
}

class TestGlobalKey extends StatefulWidget {
  final String name = "liyong";

  const TestGlobalKey({Key key}) : super(key: key);

  @override
  _TestGlobalKeyState createState() => _TestGlobalKeyState();
}

class _TestGlobalKeyState extends State<TestGlobalKey> {
  final String message = "nihao";

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// class Test extends StatelessWidget {
//   Test() {
//     print("构造函数");
//   }
//   @override
//   Widget build(BuildContext context) {
//     print("build 调用");
//     return Container();
//   }
// }

class StateChange extends StatefulWidget {
  StateChange() {
    print("1、构造函数");
  }
  @override
  _StateChangeState createState() {
    print("2、createState ");
    return _StateChangeState();
  }
}

class _StateChangeState extends State<StateChange> {
  int _counter = 0;
  _StateChangeState() {
    print("3、_StateChangeState");
  }
  @override
  void initState() {
    super.initState();
    print("4、initState 调用");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("5、didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant StateChange oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpateWidget");
  }

  @override
  Widget build(BuildContext context) {
    print("6、build 调用");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getTextSpanDemo(),
          _getButtons(),
          Image.network(
            "https://book.flutterchina.club/assets/img/1-2.c3960e42.png",
            height: 100,
            fit: BoxFit.cover,
          ),
          Text("当前计数：$_counter"),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print("8、dispose 调用");
  }

  Widget _getTextSpanDemo() {
    return Text.rich(
      TextSpan(
        text: "nihao:\n",
        style: TextStyle(color: Colors.blue),
        children: [
          WidgetSpan(
            child: Icon(Icons.favorite),
          ),
          TextSpan(text: "nihao ,flutter", style: TextStyle(color: Colors.red))
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          onPressed: () {
            _counter++;
            setState(() {});
          },
          child: Text("+"),
          color: Colors.pink,
        ),
        RaisedButton(
          onPressed: () {
            _counter--;
            setState(() {});
          },
          child: Text("-"),
          color: Colors.pink,
        ),
      ],
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Item(
            title: "liyong",
            des: "描述",
            imageString:
                "https://book.flutterchina.club/assets/img/1-2.c3960e42.png"),
        SizedBox(height: 6),
        Item(
            title: "123",
            des: "abc",
            imageString:
                "https://book.flutterchina.club/assets/img/book.17ed07e5.png"),
        SizedBox(height: 6),
        Item(
            title: "123",
            des: "abc",
            imageString:
                "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png"),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final String des;
  final String imageString;

  const Item({this.title, this.des, this.imageString});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(width: 10, color: Colors.pink),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(this.title,
                style: TextStyle(fontSize: 25, color: Colors.yellow))
          ]),
          SizedBox(height: 10),
          Text(this.des, style: TextStyle(fontSize: 25, color: Colors.yellow)),
          SizedBox(height: 10),
          Image.network(this.imageString),
        ],
      ),
    );
  }
}
