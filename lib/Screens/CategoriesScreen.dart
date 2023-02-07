import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';

import '../Utils/HeaderPart.dart';
import '../Utils/Responsive.dart';

class CategoriesScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const CategoriesScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        HeaderPart(widget._scaffoldkey),
        SizedBox(
          height: Responsive.height(1, context),
        ),
        Text(
          "Categories",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: Colors.black,
              fontFamily: "robotobold"),
        ),
        SizedBox(
          height: Responsive.height(1, context),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Responsive.height(2, context),
              ),
              AlignedGridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 25,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 43.0,
                          backgroundColor: bordercolor,
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/casecover.jpg",
                            ),
                            radius: 41.0,
                          ),
                        ),
                        Text(
                          "Cases and Covers",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            color: Colors.black,
                            fontFamily: "robotobold",
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ))
      ],
    ));
  }
}
