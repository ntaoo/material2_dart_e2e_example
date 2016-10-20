import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "card-demo",
    templateUrl: "card_demo.html",
    styleUrls: const ["card_demo.scss.css"],
    directives: const [MD_CARD_DIRECTIVES, MdButton])
class CardDemo {}
