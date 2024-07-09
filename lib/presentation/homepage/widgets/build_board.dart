import 'package:flutter/material.dart';

class BuildBoard extends StatefulWidget {
  const BuildBoard({super.key});

  @override
  State<BuildBoard> createState() => _BuildBoardState();
}

class _BuildBoardState extends State<BuildBoard> {
  List<Border> borderlist = [
    const Border(),
    Border(left: borderside(), right: borderside()),
    const Border(),
    Border(top: borderside(), bottom: borderside()),
    Border(
        top: borderside(),
        bottom: borderside(),
        left: borderside(),
        right: borderside()),
    Border(top: borderside(), bottom: borderside()),
    const Border(),
    Border(left: borderside(), right: borderside()),
    const Border()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.9, crossAxisCount: 3),
        itemBuilder: (BuildContext context, index) {
          //ontap
          return InkWell(
              onTap: () {
                // tapping(index);
              },
              child: Container(
                decoration: BoxDecoration(border: borderlist[index]),
                child: Center(
                  child: Text(
                    ' ',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ));
        },
        itemCount: 9,
      ),
    );
  }
}

BorderSide borderside() {
  return const BorderSide(color: Colors.white);
}
