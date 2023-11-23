import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/utils/util_launch_url.dart';
import 'package:cozy_v2/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DialogBookNow extends StatelessWidget {
  const DialogBookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimen.wInfinit,
      child: AlertDialog(
        backgroundColor: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Apakah anda ingin menghubungi pemilik kos ?',
              textAlign: TextAlign.center,
              style: AppFont.blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: AppFont.semiBold,
              ),
            ),
            24.0.height,
            CustomButton(
              width: AppDimen.wInfinit,
              isLoading: false,
              func: () {
                UtilLaunchUrl().launchInApp(Uri.parse(
                    'https://api.whatsapp.com/send?phone=6281330648183&text=saya%20ingin%20pesan%20ruangan%20.'));
              },
              text: 'Hubungi',
              btnStyle: AppButtonStyle.btnMain,
            ),
            12.0.height,
            CustomButton(
              isLoading: false,
              textColor: AppColor.white,
              func: () => Navigator.pop(context),
              text: 'Batalkan',
              btnStyle: AppButtonStyle.btnOrange,
            ),
          ],
        ),
      ),
    );
  }
}
