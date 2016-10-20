import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "progress-circle-demo",
    templateUrl: "progress_circle_demo.html",
    styleUrls: const ["progress_circle_demo.scss.css"],
    directives: const [MdProgressCircle, MdSpinner, MdButton])
class ProgressCircleDemo {
  num progressValue = 40;

  void step(num val) {
    progressValue += val;
  }
}
