import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "baseline-demo",
    templateUrl: "baseline_demo.html",
    styleUrls: const [
      "baseline_demo.scss.css"
    ],
    providers: const [
      MdUniqueSelectionDispatcher
    ],
    directives: const [
      MD_BUTTON_DIRECTIVES,
      MD_CARD_DIRECTIVES,
      MD_CHECKBOX_DIRECTIVES,
      MD_RADIO_DIRECTIVES,
      MD_INPUT_DIRECTIVES,
      MdIcon,
      MdToolbar
    ])
class BaselineDemo {
  String name;
}
