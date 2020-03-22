import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/buttons/vfflatbutton.dart';

class DialogPresenter {

  Future showJoinClassDialog(BuildContext context, String label) async {
    switch(await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("A aula de ${label} está prestes a começar.\nQuer juntar-se à aula de ${label}?"),
          contentPadding: EdgeInsets.all(20),
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: VFFlatButton(() {
                    Navigator.pop(context, 0);
                  }, 'Não', false),
                ),
                Spacer(),
                Expanded(
                  flex: 2,
                  child: VFFlatButton(() {
                    Navigator.pop(context, 1);
                  }, 'Sim', true),
                )
              ],
            )
          ],
        )
      )
    ) {
      case 0:
        return 0;
        break;
      case 1:
        return 1;
        break;
      default:
        return 1;
        break;
    }
  }

}