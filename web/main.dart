import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:material2_dart/material.dart';
import 'package:material2_dart_e2e_example/demo_app/demo_app.dart';

void main() {
  bootstrap(DemoApp, const [
    const Provider(OverlayContainer, useClass: OverlayContainer),
  ]);
}
