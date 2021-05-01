import 'package:flutter/material.dart';
import 'package:dynamic_theme/src/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, _) => Scaffold(
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(36),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Dynamic Theme',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline6),
                  Text(
                    'supporting hot reload',
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.apply(color: theme.getColors().secondary),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    minimumSize: Size(double.infinity, 50),
                    textStyle: TextStyle(fontSize: 16)),
                onPressed: () =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
                child: Text('Toggle Theme'),
              )
            ],
          ),
        ),
      )),
    );
  }
}
