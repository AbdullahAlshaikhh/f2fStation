import 'package:f2f/components/default_button.dart';
import 'package:f2f/provider/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'lan/l10n.dart';

class LanguageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);

    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 72,
        child: Text(
          flag,
          style: TextStyle(fontSize: 80),
        ),
      ),
    );
  }
}

class LanguagePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? Locale('en');

     return DefaultButton(
       text: "Start",
       press: () {

      final provider =
                    Provider.of<LocaleProvider>(context, listen: false);

                provider.setLocale(locale);
                },
     );
    //   DropdownButtonHideUnderline(
    //   child: DropdownButton(
    //     value: locale,
    //     icon: Container(width: 12),
    //     items: L10n.all.map(
    //       (locale) {
    //         final flag = L10n.getFlag(locale.languageCode);
    //
    //         return DropdownMenuItem(
    //           child: Center(
    //             child: Text(
    //               flag,
    //               style: TextStyle(fontSize: 32),
    //             ),
    //           ),
    //           value: locale,
    //           onTap: () {
    //             final provider =
    //                 Provider.of<LocaleProvider>(context, listen: false);
    //
    //             provider.setLocale(locale);
    //           },
    //         );
    //       },
    //     ).toList(),
    //     onChanged: (_) {},
    //   ),
    // );
  }
}
