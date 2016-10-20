import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "sidenav-demo",
    templateUrl: "sidenav_demo.html",
    styleUrls: const ["sidenav_demo.scss.css"],
    directives: const [MD_SIDENAV_DIRECTIVES, MdButton])
class SidenavDemo {}
