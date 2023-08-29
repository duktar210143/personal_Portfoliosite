import 'package:flutter/material.dart';
import 'package:portfoliosite/utils/colors.dart';
import 'package:portfoliosite/widgets/text_builder.dart';

class MobileHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState>? drawerkey;
  const MobileHeader({
    Key? key,
    this.drawerkey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    drawerkey!.currentState!.openDrawer();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: kGreyShade,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: KPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0,),
                TextBuilder(
                  text: "Duktar portfolio",
                  fontsize: 18,
                  textAlign: TextAlign.left,
                  fontweight: FontWeight.w800,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
