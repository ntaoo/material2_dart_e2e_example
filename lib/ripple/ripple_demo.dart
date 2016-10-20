import 'dart:async';
import 'package:angular2/core.dart';
import "package:material2_dart/material.dart";

@Component(
  selector: 'ripple-demo',
  templateUrl: 'ripple_demo.html',
  styleUrls: const ['ripple_demo.scss.css'],
  providers: const [MdUniqueSelectionDispatcher],
  directives: const <dynamic>[
    MD_BUTTON_DIRECTIVES,
    MD_CARD_DIRECTIVES,
    MD_CHECKBOX_DIRECTIVES,
    MD_ICON_DIRECTIVES,
    MD_INPUT_DIRECTIVES,
    MD_RADIO_DIRECTIVES,
    MD_RIPPLE_DIRECTIVES,
  ],
)
class RippleDemo {
  @ViewChild(MdRipple)
  MdRipple manualRipple;

  bool centered = false;
  bool disabled = false;
  bool unbounded = false;
  bool rounded = false;
  num maxRadius;
  num rippleSpeed = 1;
  String rippleColor = '';
  String rippleBackgroundColor = '';

  bool disableButtonRipples = false;

  void doManualRipple() {
    if (manualRipple == null) return;
    new Timer(const Duration(milliseconds: 10), () => manualRipple.start());
    new Timer(const Duration(milliseconds: 500), () => manualRipple.end(0, 0));
  }
}
