import 'package:flutter/material.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: TopBar());
  }

  AppBar buildAppBar() {
    return AppBar(elevation: 0);
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        // Large top bar field
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              // Top bar
              Container(
                  height: size.height * 0.2 - 27,

                  // Draw top bar
                  decoration: BoxDecoration(
                      color: kPrimaryColor, borderRadius: BorderRadius.zero)),

              // Total
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      // Total text
                      Text('Total',
                          style: Theme.of(context).textTheme.headline5.copyWith(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Positioned(
                        top: 24,
                        child: Text('38.900 Ft',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    color: kPrimaryColor,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: 128,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
