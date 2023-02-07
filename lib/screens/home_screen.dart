import 'package:flutter/material.dart';
import 'package:flutter_designs/widgets/background.dart';
import 'package:flutter_designs/widgets/card_table.dart';
import 'package:flutter_designs/widgets/custom_buttom_navigation.dart';
import 'package:flutter_designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomButtomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [PageTitle(), CardTable()]),
    );
  }
}
