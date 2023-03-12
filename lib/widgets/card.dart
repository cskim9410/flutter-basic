import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final IconData icon;
  final String money;
  final String unit;
  final String amount;
  final bool isInverted;

  Color darkColor = const Color(0xFF1F2123);

  CurrencyCard({
    super.key,
    required this.icon,
    required this.money,
    required this.unit,
    required this.amount,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInverted ? Colors.white : darkColor,
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  money,
                  style: TextStyle(
                    color: isInverted ? darkColor : Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? darkColor : Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      unit,
                      style: TextStyle(
                        color: isInverted ? darkColor : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(-5, 15),
                child: Icon(
                  icon,
                  color: isInverted ? darkColor : Colors.white,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
