// Copyright (c) 2018, Adam Lofts. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_quill/angular_quill.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [coreDirectives, NgModel, quillDirectives],
)
class AppComponent {
    List<String> events = [];
    String html = "";

    void blur() {
        events.insert(0, "${new DateTime.now()} blur");
    }

    void input() {
        events.insert(0, "${new DateTime.now()} input");
    }
}

