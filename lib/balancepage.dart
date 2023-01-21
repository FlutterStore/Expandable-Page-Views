import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expandable_page_views/card_tile.dart';
import 'package:expandable_page_views/contact_tile.dart';
import 'package:expandable_page_views/hide_card_button.dart';
import 'package:expandable_page_views/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpandablePageView(
            children: const [
              AvailableBalanceTile(),
              CardsTile(),
              ContactsTile(),
            ],
          ),
          const HideCardsButton(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}


class AvailableBalanceTile extends StatelessWidget {
  const AvailableBalanceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoTile(
      title: 'Available balance',
      body: Text(
        '\$32,300 💵',
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
      supplementaryView: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_downward_rounded),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            label: Text(
              'Deposit',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_upward_rounded,
              color: Color(0xff3a0ca3),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            label: Text(
              'Withdraw',
              style: GoogleFonts.lato(
                color: const Color(0xff3a0ca3),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}

const List<String> _names = [
  'Mastercard',
  'Visa',
  'American Express',
];

const List<Color> _colors = [
  Colors.orange,
  Colors.lightBlue,
  Colors.yellow,
];

class CardsTile extends StatelessWidget {
  const CardsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoTile(
      title: 'Your cards',
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 3,
        padding: EdgeInsets.zero,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (_, index) {
          return CardTile(
            name: _names[index],
            color: _colors[index],
          );
        },
      ),
      // supplementaryView: const AddContactButton(),
    );
  }
}

const List<String> _namestile = [
  'Mark',
  'Lisa',
  'Adam',
  'George',
];

class ContactsTile extends StatelessWidget {
  const ContactsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoTile(
      title: 'Your contacts',
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 4,
        padding: EdgeInsets.zero,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (_, index) {
          return ContactTile(name: _namestile[index]);
        },
      ),
      supplementaryView: const AddContactButton(),
    );
  }
}

class AddContactButton extends StatelessWidget {
  const AddContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.add,
        color: Color(0xff3a0ca3),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      label: Text(
        'Add Contact',
        style: GoogleFonts.lato(
          color: const Color(0xff3a0ca3),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
