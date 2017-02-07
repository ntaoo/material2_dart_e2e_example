import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import "package:angular2/common.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: 'tabs-demo',
    templateUrl: 'tabs_demo.html',
    styleUrls: const ['tabs_demo.css'],
    encapsulation: ViewEncapsulation.None,
    directives: const [
      ROUTER_DIRECTIVES,
      MATERIAL_DIRECTIVES,
    ],
    pipes: const [AsyncPipe])
@RouteConfig(const [
  const Route(
      path: '/',
      name: 'SunnyTab',
      component: SunnyTabContent,
      useAsDefault: true),
  const Route(path: '/rainy-tab', name: 'RainyTab', component: RainyTabContent),
  const Route(path: '/foggy-tab', name: 'FoggyTab', component: FoggyTabContent),
])
class TabsDemo {
  Router router;
  List tabLinks = [
    {'label': 'Sun', 'link': 'SunnyTab'},
    {'label': 'Rain', 'link': 'RainyTab'},
    {'label': 'Fog', 'link': 'FoggyTab'},
  ];
  int activeLinkIndex = 0;

  List tabs = [
    {'label': 'Tab One', 'content': 'This is the body of the first tab'},
    {'label': 'Tab Two', 'content': 'This is the body of the second tab'},
    {'label': 'Tab Three', 'content': 'This is the body of the third tab'},
  ];

  Stream<dynamic> asyncTabs;
  TabsDemo(this.router) {
    asyncTabs = new Future<List<Map>>.delayed(
            const Duration(milliseconds: 1000), () => tabs)
        .asStream()
        .asBroadcastStream();
  }
}

@Component(
  selector: 'sunny-routed-content',
  template: 'This is the routed body of the sunny tab.',
)
class SunnyTabContent {}

@Component(
  selector: 'rainy-routed-content',
  template: 'This is the routed body of the rainy tab.',
)
class RainyTabContent {}

@Component(
  selector: 'foggy-routed-content',
  template: 'This is the routed body of the foggy tab.',
)
class FoggyTabContent {}
