import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "radio-demo",
    templateUrl: "radio_demo.html",
    styleUrls: const ["radio_demo.scss.css"],
    providers: const [MdUniqueSelectionDispatcher],
    directives: const [MdCheckbox, MdRadioButton, MdRadioGroup])
class RadioDemo {
  bool isDisabled = false;
  bool isAlignEnd = false;
  String favoriteSeason = "Autumn";
  List<String> seasonOptions = ["Winter", "Spring", "Summer", "Autumn"];
}
