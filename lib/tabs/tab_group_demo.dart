import 'dart:async';
import "package:angular2/core.dart";
import "package:angular2/common.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "tab-group-demo",
    templateUrl: "tab_group_demo.html",
    styleUrls: const ["tab_group_demo.scss.css"],
    directives: const <dynamic>[MD_TABS_DIRECTIVES, MdToolbar, MdInput],
    pipes: const [AsyncPipe],
    encapsulation: ViewEncapsulation.None)
class TabsDemo {
  List<Map> tabs = [
    {"label": "Tab One", "content": "This is the body of the first tab"},
    {"label": "Tab Two", "content": "This is the body of the second tab"},
    {"label": "Tab Three", "content": "This is the body of the third tab"}
  ];
  Stream<dynamic> asyncTabs;

  TabsDemo() {
    asyncTabs =
        new Future<List<Map>>.delayed(const Duration(milliseconds: 1000), () => tabs)
            .asStream();
  }
}
