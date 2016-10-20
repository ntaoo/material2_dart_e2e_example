import 'package:angular2/core.dart';
import "package:material2_dart/material.dart";

@Component(
  selector: 'slider-demo',
  templateUrl: 'slider_demo.html',
  directives: const [MD_SLIDER_DIRECTIVES],
)
class SliderDemo {
  num demo = 0;
}
