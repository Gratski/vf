import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobileapp/screens/class.screen.dart';
import 'package:mobileapp/store/classes/class-period.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/buttons/vfflatbutton.dart';
import 'package:mobileapp/widgets/dialogs/join-class.dialog.dart';
import 'package:mobileapp/widgets/lists/avatar.list.dart';
import 'package:mobileapp/globals/global_vars.dart' as globals;
import 'package:mobileapp/widgets/lists/items/class.item.dart';

class ClassesScreen extends StatelessWidget {

  final String activity;
  List a = List.generate(3, (i) => List(4), growable: false);

  ClassesScreen(this.activity) {
    a[0][0] = '';
    a[0][1] = '';

    a[1][0] = '';
    a[1][1] = '';
    a[1][2] = '';

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            centerTitle: false,
            title: Hero(
              tag: 'category',
              child: RichText(
                text: TextSpan(
                  text: '${activity} \n',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: 'escolhe já a aula que queres fazer!', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                  ],
                ),
              ),
            ),
            floating: true,
            expandedHeight: 40.0,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              child: AvatarList(new DialogPresenter().showJoinClassDialog)
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                  Observer(
                    builder: (_) => Row(
                      children: <Widget>[
                        Expanded(
                            flex: 4,
                            child: VFFlatButton(globals.classesStore.setSelectedPeriodToMorning, 'MANHÃ', globals.classesStore.selectedPeriod == ClassPeriodEnum.MORNING)
                        ),
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: VFFlatButton(globals.classesStore.setSelectedPeriodToAfternoon, 'TARDE', globals.classesStore.selectedPeriod == ClassPeriodEnum.AFTERNOON)
                        ),
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child:  VFFlatButton(globals.classesStore.setSelectedPeriodToNight, 'NOITE', globals.classesStore.selectedPeriod == ClassPeriodEnum.NIGHT)
                        ),
                      ],
                    ),
                  ),
                ]
              )
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Observer(
                  builder: (_) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: globals.classesStore.classes.length,
                      itemBuilder: (_, int index) {
                        return ClassItem(1);
                      },
                    ),
                )
              ])
            ),
          )
        ],
      ),
    );
  }

}