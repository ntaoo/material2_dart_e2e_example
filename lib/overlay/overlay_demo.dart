import 'dart:async';
import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "overlay-demo",
    templateUrl: "overlay_demo.html",
    styleUrls: const ["overlay_demo.scss.css"],
    directives: const [PORTAL_DIRECTIVES, OVERLAY_DIRECTIVES],
    providers: const [OVERLAY_PROVIDERS],
    encapsulation: ViewEncapsulation.None)
class OverlayDemo {
  Overlay overlay;
  ViewContainerRef viewContainerRef;
  num nextPosition = 0;
  bool isMenuOpen = false;
  @ViewChildren(TemplatePortalDirective)
  QueryList<Portal<dynamic>> templatePortals;
  @ViewChild(OverlayOrigin)
  OverlayOrigin overlayOrigin;

  OverlayDemo(this.overlay, this.viewContainerRef);

  Future<Null> openRotiniPanel() async {
    OverlayState config = new OverlayState();
    config.positionStrategy = overlay
        .position()
        .global()
        .left('${nextPosition}px')
        .top('${nextPosition}px');
    nextPosition += 30;
    OverlayRef ref = await overlay.create(config);
    await ref.attach(new ComponentPortal(RotiniPanel, viewContainerRef));
  }

  Future<Null> openFusilliPanel() async {
    var config = new OverlayState();
    config.positionStrategy = overlay
        .position()
        .global()
        .centerHorizontally()
        .top('${nextPosition}px');
    nextPosition += 30;
    OverlayRef ref = await overlay.create(config);
    await ref.attach(templatePortals.first);
  }

  Future<Null> openSpaghettiPanel() async {
    var strategy = overlay.position().connectedTo(
        overlayOrigin.elementRef,
        new OriginConnectionPosition(
            HorizontalConnectionPos.start, VerticalConnectionPos.bottom),
        new OverlayConnectionPosition(
            HorizontalConnectionPos.start, VerticalConnectionPos.top));
    OverlayRef ref =
        await overlay.create(new OverlayState()..positionStrategy = strategy);
    await ref.attach(new ComponentPortal(SpagettiPanel, viewContainerRef));
  }
}

/// Simple component to load into an overlay
@Component(
    selector: "rotini-panel",
    template: "<p class=\"demo-rotini\">Rotini {{value}}</p>")
class RotiniPanel {
  num value = 9000;
}

/// Simple component to load into an overlay
@Component(
    selector: "spagetti-panel",
    template: "<div class=\"demo-spagetti\">Spagetti {{value}}</div>")
class SpagettiPanel {
  String value = "Omega";
}
