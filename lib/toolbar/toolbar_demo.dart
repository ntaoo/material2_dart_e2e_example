import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "toolbar-demo",
    templateUrl: "toolbar_demo.html",
    styleUrls: const ["toolbar_demo.scss.css"],
    directives: const [MdToolbar, MdIcon])
class ToolbarDemo {}
