import 'package:flutter/material.dart';

void main(List<String> args) {
  FutureBuilder(
      future: null, // 异步任务
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            print("waiting");
            return null;
          case ConnectionState.done:
            if (snapshot.hasError) {
              print("error");

              return null;
            } else {
              print("done");
              return snapshot.data;
            }
        }

        return Text("data");
      });
}
