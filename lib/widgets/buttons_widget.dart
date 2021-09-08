import 'package:flutter/material.dart';

class ButtonCustomSubmit extends StatelessWidget {
  ButtonCustomSubmit({
    @required this.textName,
    @required this.functionAction,
    this.isActive = true,
  });

  final textName;
  final functionAction;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    final colorPrimary = Theme.of(context).primaryColor;
    if (isActive) {
      return Material(
          color: colorPrimary,
          borderRadius: BorderRadius.circular(7.0),
          child: MaterialButton(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            minWidth: double.infinity,
            onPressed: () async {
              functionAction(context);
            },
            child: Text(
              textName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  color: Colors.white),
            ),
          ));
    } else {
      return Material(
          color: colorPrimary,
          borderRadius: BorderRadius.circular(7.0),
          child: MaterialButton(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            minWidth: double.infinity,
            onPressed: () async {
              null;
            },
            child: Text(
              textName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  color: Colors.grey.shade100),
            ),
          ));
    }
  }
}

class ButtonFormOk extends StatelessWidget {
  ButtonFormOk({
    @required this.textName,
    @required this.functionAction,
  });

  final textName;
  final functionAction;

  @override
  Widget build(BuildContext context) {
    Color colorBtn = const Color.fromRGBO(186, 232, 171, 1);
    return TextButton(
        onPressed: () {
          functionAction(context);
        },
        child: Container(
          width: 120.0,
          height: 50,
          padding: EdgeInsets.only(left: 10.0, right: 15.0),
          decoration: BoxDecoration(
            color: colorBtn,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            children: [
              Icon(
                Icons.save,
                color: Colors.white,
              ),
              Expanded(child: SizedBox()),
              Text(
                textName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}

class ButtonFormCancel extends StatelessWidget {
  ButtonFormCancel({
    @required this.textName,
    @required this.functionAction,
  });

  final textName;
  final functionAction;

  @override
  Widget build(BuildContext context) {
    Color colorBtn = const Color.fromRGBO(232, 171, 171, 1);
    return TextButton(
        onPressed: () => Navigator.pop(context),
        child: Container(
          width: 120.0,
          height: 50,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            color: colorBtn,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            children: [
              Icon(
                Icons.cancel,
                color: Colors.white,
              ),
              Expanded(child: SizedBox()),
              Text(
                textName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}

class ButtonCustomForm extends StatelessWidget {
  ButtonCustomForm({
    @required this.textName,
    @required this.width,
    @required this.functionAction,
    @required this.colorBtn,
  });

  final textName;
  final functionAction;
  final width;
  final colorBtn;

  @override
  Widget build(BuildContext context) {
    final colorPrimary = Theme.of(context).primaryColor;
    return Material(
        color: colorBtn,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          minWidth: width,
          onPressed: () async {
            functionAction(context);
          },
          child: Text(
            textName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
                color: Colors.white),
          ),
        ));
  }
}

class ButtonTitleAdd extends StatelessWidget {
  ButtonTitleAdd({
    @required this.functionAction,
  });

  final functionAction;

  @override
  Widget build(BuildContext context) {
    final colorPrimary = Theme.of(context).primaryColor;

    return TextButton(
      onPressed: () {
        this.functionAction(context);
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            color: colorPrimary,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 10.0,
                  spreadRadius: 1.0)
            ]),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}
