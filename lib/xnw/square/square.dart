import 'dart:async';
import 'dart:io';
import 'package:FlutterM/core/http/base/http_config.dart';
import 'package:FlutterM/core/model/login_model.dart';
import 'package:FlutterM/core/viewmodel/AppGlobal.dart';
import 'package:FlutterM/core/viewmodel/user_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../core/viewmodel/event_bus/event_bus.dart';

class SquarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("广场"),
      ),
      body: SquareContent(),
    );
  }
}

class SquareContent extends StatefulWidget {
  @override
  _SquareContentState createState() => _SquareContentState();
}

class _SquareContentState extends State<SquareContent> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    print("kkkkkkkkkkkkkkkkkkk*******SquarePage----initState()*********");
  }

  @override
  Widget build(BuildContext context) {
    LoginModel loginModel = Provider.of<UserDataViewModel>(context).loginModel;

    String params = "&gid=${loginModel.uid}&passport=${loginModel.passport}";
    String urlString =
        "https://xnw.com/h5v3/app/index?index_config_id=square" + params;
    return WebView(
      initialUrl: urlString,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        _controller.complete(controller);
      },
      javascriptChannels: <JavascriptChannel>{
        _toasterJSChannel(context),
      },
      navigationDelegate: (navigation) {
        if (navigation.url.startsWith("https://youtube.com/")) {
          print("blocking navigation to $navigation");
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
      onPageStarted: (url) {},
      onPageFinished: (url) {},
      gestureNavigationEnabled: true,
    );
  }

  JavascriptChannel _toasterJSChannel(BuildContext context) {
    return JavascriptChannel(
        name: "Toaster",
        onMessageReceived: (message) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text(message.message)));
        });
  }
}

// class Content1 extends StatefulWidget {
//   @override
//   _Content1State createState() => _Content1State();
// }

// class _Content1State extends State<Content1> {
//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//         onPressed: () {
//           eventBus.fire("liyong");
//         },
//         child: Icon(Icons.add));
//   }
// }

// class Content2 extends StatefulWidget {
//   @override
//   _Content2State createState() => _Content2State();
// }

// class _Content2State extends State<Content2> {
//   String content = "nihao";
//   @override
//   void initState() {
//     super.initState();
//     eventBus.on<String>().listen((event) {
//       print(event);
//       setState(() {
//         content = event;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text("$content");
//   }
// }
