import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "button-toggle-demo",
    templateUrl: "button_toggle_demo.html",
    providers: const [MdUniqueSelectionDispatcher],
    directives: const [MD_BUTTON_TOGGLE_DIRECTIVES, MdIcon])
class ButtonToggleDemo {
  String favoritePie = 'Apple';
  List<String> pieOptions = [
    'Apple',
    'Cherry',
    'Pecan',
    'Lemon',
  ];
}
