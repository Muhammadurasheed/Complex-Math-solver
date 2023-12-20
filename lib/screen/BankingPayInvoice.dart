import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'BankingPaymentInvoice.dart';

import '../utils/BankingColors.dart';
import '../utils/BankingContants.dart';
import '../utils/BankingStrings.dart';
import '../utils/BankingWidget.dart';

class BankingPayInvoice extends StatefulWidget {
  const BankingPayInvoice({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BankingPayInvoiceState createState() => _BankingPayInvoiceState();
}

class _BankingPayInvoiceState extends State<BankingPayInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  30.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Icon(Icons.chevron_left,
                              size: 30, color: Banking_blackColor)
                          .onTap(
                        () {
                          finish(context);
                        },
                      ),
                      20.height,
                      Text(Banking_lbl_Pay_Voice,
                          style: boldTextStyle(
                              size: 30, color: Banking_TextColorPrimary)),
                    ],
                  ),
                  10.height,
                  Text('Choose Provider',
                      style: primaryTextStyle(
                          color: Banking_TextColorSecondary,
                          size: 14,
                          fontFamily: fontRegular)),
                  20.height,
                  Row(
                    children: <Widget>[
                      Text('Transfer Via',
                              style: primaryTextStyle(
                                  color: Banking_TextColorPrimary,
                                  size: 18,
                                  fontFamily: fontRegular))
                          .expand(),
                      const Icon(Icons.keyboard_arrow_right,
                          size: 30, color: Banking_greyColor),
                    ],
                  ),
                  const Divider(height: 24),
                  EditText(
                      text: Banking_lbl_Invitation_code, isPassword: false),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BankingButton(
              textContent: Banking_lbl_Next,
              onPressed: () {
                const BankingPaymentInvoice().launch(context);
              },
            ),
          ).paddingOnly(bottom: 20, right: 10, left: 10),
        ],
      ),
    );
  }
}
