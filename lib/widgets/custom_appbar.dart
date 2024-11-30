import 'package:academy/const_file.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final bool isScrolled;
  const CustomAppBar({
    super.key,
    required this.title, required this.isScrolled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border(
          bottom: BorderSide(color: hintColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            if(isScrolled)const SizedBox(height: 30,),
            Row(
              children: [
                const ImageIcon(
                  AssetImage(
                    logo,
                  ),
                  color: secondaryColor,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: boldText.copyWith(fontSize: 24),
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: hintColor),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
