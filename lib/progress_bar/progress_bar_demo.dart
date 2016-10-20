import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "progress-bar-demo",
    templateUrl: "progress_bar_demo.html",
    styleUrls: const ["progress_bar_demo.scss.css"],
    directives: const [MdProgressBar, MdButton])
class ProgressBarDemo {
  num determinateProgressValue = 30;
  num bufferProgressValue = 30;
  num bufferBufferValue = 40;

  void stepDeterminateProgressVal(num val) {
    determinateProgressValue += val;
  }

  void stepBufferProgressVal(num val) {
    bufferProgressValue += val;
  }

  void stepBufferBufferVal(num val) {
    bufferBufferValue += val;
  }
}
