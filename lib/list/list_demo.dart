import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "list-demo",
    templateUrl: "list_demo.html",
    styleUrls: const ["list_demo.scss.css"],
    directives: const [MD_LIST_DIRECTIVES, MdButton, MdIcon])
class ListDemo {
  List<String> items = ["Pepper", "Salt", "Paprika"];
  List<dynamic> contacts = [
    {"name": "Nancy", "headline": "Software engineer"},
    {"name": "Mary", "headline": "TPM"},
    {"name": "Bobby", "headline": "UX designer"}
  ];
  List<dynamic> messages = [
    {
      "from": "Nancy",
      "subject": "Brunch?",
      "message":
          "Did you want to go on Sunday? I was thinking that might work.",
      "image": "https://angular.io/resources/images/bios/julie-ralph.jpg"
    },
    {
      "from": "Mary",
      "subject": "Summer BBQ",
      "message": "Wish I could come, but I have some prior obligations.",
      "image": "https://angular.io/resources/images/bios/juleskremer.jpg"
    },
    {
      "from": "Bobby",
      "subject": "Oui oui",
      "message": "Do you have Paris reservations for the 15th? I just booked!",
      "image": "https://angular.io/resources/images/bios/jelbourn.jpg"
    }
  ];
  List<dynamic> links = [
    {"name": "Inbox"},
    {"name": "Outbox"},
    {"name": "Spam"},
    {"name": "Trash"}
  ];
  bool thirdLine = false;
  bool infoClicked = false;
}
