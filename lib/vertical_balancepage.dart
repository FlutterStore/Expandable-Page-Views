import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expandable_page_views/small_info.dart';
import 'package:flutter/material.dart';

class VerticalBalancePage extends StatelessWidget {
  const VerticalBalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExpandablePageView(
            alignment: Alignment.centerLeft,
            scrollDirection: Axis.vertical,
            children: const [
              SmallInfoTile(
                icon: Icon(
                  Icons.euro,
                  size: 25,
                  color: Colors.white,
                ),
                text: '54,00',
              ),
              SmallInfoTile(
                icon: Icon(
                  Icons.currency_pound,
                  size: 25,
                  color: Colors.white,
                ),
                text: '4.457,00',
              ),
              SmallInfoTile(
                icon: Icon(
                  Icons.currency_bitcoin,
                  size: 25,
                  color: Colors.white,
                ),
                text: '14,1230044',
              ),
            ],
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                SmallDepositButton(),
                SizedBox(height: 12),
                SmallWithdrawButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallDepositButton extends StatelessWidget {
  const SmallDepositButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: const Icon(
        Icons.arrow_upward_rounded,
        color: Colors.white,
        size: 26,
      ),
    );
  }
}


class SmallWithdrawButton extends StatelessWidget {
  const SmallWithdrawButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: const Icon(
        Icons.arrow_downward_rounded,
        color: Colors.black,
        size: 26,
      ),
    );
  }
}
