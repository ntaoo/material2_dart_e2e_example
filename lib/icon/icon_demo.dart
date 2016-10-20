import "package:angular2/core.dart";
import "package:material2_dart/material.dart";

@Component(
    selector: "md-icon-demo",
    templateUrl: "icon_demo.html",
    styleUrls: const ["icon_demo.scss.css"],
    directives: const [MdIcon],
    viewProviders: const [MdIconRegistry],
    encapsulation: ViewEncapsulation.None)
class IconDemo {
  IconDemo(MdIconRegistry mdIconRegistry) {
    mdIconRegistry
        .addSvgIcon("thumb-up",
            "/packages/material2_dart_example/icon/assets/thumbup_icon.svg")
        .addSvgIconSetInNamespace("core",
            "/packages/material2_dart_example/icon/assets/core_icon_set.svg")
        .registerFontClassAlias("fontawesome", "fa");
  }
}
