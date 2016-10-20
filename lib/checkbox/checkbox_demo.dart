import "package:angular2/core.dart";
import "package:angular2/common.dart";
import "package:material2_dart/material.dart";

class Task {
  String name;
  bool completed;
  List<Task> subtasks;

  Task(this.name, this.completed, {this.subtasks});
}

@Component(
    selector: "md-checkbox-demo-nested-checklist",
    styles: const [
      '''
    li {
      margin-bottom: 4px;
    }
  '''
    ],
    templateUrl: "nested_checklist.html",
    directives: const [MdCheckbox])
class MdCheckboxDemoNestedChecklist {
  List tasks = [
    new Task("Reminders", false, subtasks: [
      new Task("Cook Dinner", false),
      new Task("Read the Material Design Spec", false),
      new Task("Upgrade Application to Angular2", false)
    ]),
    new Task("Groceries", false, subtasks: [
      new Task("Organic Eggs", false),
      new Task("Protein Powder", false),
      new Task("Almond Meal Flour", false)
    ])
  ];

  bool allComplete(Task task) {
    var subtasks = task.subtasks;
    return subtasks.every((t) => t.completed)
        ? true
        : subtasks.every((t) => !t.completed) ? false : task.completed;
  }

  bool someComplete(List<Task> tasks) {
    final numComplete = tasks.where((t) => t.completed).length;
    return numComplete > 0 && numComplete < tasks.length;
  }

  void setAllCompleted(List<Task> tasks, bool completed) {
    tasks.forEach((t) => t.completed = completed);
  }
}

@Component(
    selector: "md-checkbox-demo",
    templateUrl: "checkbox_demo.html",
    styleUrls: const [
      "checkbox_demo.scss.css"
    ],
    directives: const [
      MdCheckbox,
      MdCheckboxDemoNestedChecklist,
      FORM_DIRECTIVES
    ])
class CheckboxDemo {
  bool isIndeterminate = false;
  bool isChecked = false;
  bool isDisabled = false;
  String alignment = "start";

  String printResult() {
    if (isIndeterminate) {
      return "Maybe!";
    }
    return isChecked ? "Yes!" : "No!";
  }
}
