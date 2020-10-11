import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../course/course_module.dart';
import 'home_controller.dart';
import 'widgets/custom_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: controller.indexPage,
            children: [
              RouterOutlet(module: CourseModule()),
            ],
          ),
          bottomNavigationBar: CustomBottomBar(onTap: controller.setPage, selectedIndex: controller.indexPage),
        );
      },
    );
  }
}
