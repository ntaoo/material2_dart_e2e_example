import 'dart:html';
import 'package:angular2/core.dart';
import "package:material2_dart/material.dart";

@Component(
    selector: 'switch-demo',
    templateUrl: 'slide_toggle_demo.html',
    styleUrls: const ['slide_toggle_demo.scss.css'],
    directives: const [MdSlideToggle])
class SlideToggleDemo {
  bool firstToggle = false;

  void onFormSubmit() {
    window.alert('You submitted the form.');
  }
}
