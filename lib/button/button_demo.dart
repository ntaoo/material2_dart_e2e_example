import 'package:angular2/core.dart';
import "package:material2_dart/material.dart";

@Component(
    selector: 'button-demo',
    templateUrl: 'button_demo.html',
    styleUrls: const ['button_demo.scss.css'],
    directives: const [MdButton, MdAnchor, MdIcon])
class ButtonDemo {
  bool isDisabled = false;
  int clickCounter = 0;
}
