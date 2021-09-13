import 'package:flutter/material.dart';

class CustomLoadingDialog {
  static String _content = "加载中...";
  static void showLoadingDialog(BuildContext context, String content) {
    _content = content.length == 0 ? _content : content;
    showDialog(
      context: context,
      barrierDismissible: false, //点击遮罩不关闭对话框
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text(_content),
              )
            ],
          ),
        );
      },
    );
  }
}
