import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/widgets/home_view_body.dart';
import 'package:weather_app/i18n/translations.g.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.t.app.title)),
      body: const HomeViewBody(),
    );
  }
}
