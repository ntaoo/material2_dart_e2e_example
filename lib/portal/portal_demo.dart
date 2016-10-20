import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "portal-demo",
    templateUrl: "portal_demo.html",
    styleUrls: const ["portal_demo.scss.css"],
    directives: const [TemplatePortalDirective, PortalHostDirective])
class PortalDemo {
  @ViewChildren(TemplatePortalDirective)
  QueryList<Portal<dynamic>> templatePortals;
  Portal<dynamic> selectedPortal;

  Portal get programmingJoke => templatePortals.first;

  Portal get mathJoke => templatePortals.last;

  ComponentPortal get scienceJoke => new ComponentPortal(ScienceJoke);
}

@Component(
    selector: "science-joke",
    template: '''<p> 100 kilopascals go into a bar. </p>''')
class ScienceJoke {}
