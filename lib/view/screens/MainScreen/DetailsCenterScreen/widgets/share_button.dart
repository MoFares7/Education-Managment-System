// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saeed/view/configs/them.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      // ignore: sort_child_properties_last
      child: SvgPicture.asset(
        "assets/icons/share.svg",
        color: AppColors.primary1,
        height: 30,
        width: 30,
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

/*
class ShareButton extends StatelessWidget {
  const ShareButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Campigin_don widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (widget.name_donation_camp.isNotEmpty) {
          const url = 'https://ataa/activity/campaign.com';

          ByteData imagebyte =
              await rootBundle.load('assets/images/download.jpg');
          final temp = await getTemporaryDirectory();
          final path = '${temp.path}/download.jpg';
          File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
          await Share.shareFiles([path],
              text: 'حملة جمع تبرعات بواسطة جمعية عطاء الخيرية'
                  '\n'
                  "عنوان الحملة : "
                  "${widget.name_donation_camp} "
                  '\n'
                  " عدد المستفيدين : "
                  "${widget.num_of_needy_person} "
                  '\n'
                  " المبلغ الكلي للحملة   :"
                  "${widget.payment_required} "
                  '\n'
                  " عنوان جمعية عطاء الخيرية : "
                  "دمشق-المهاجرين  "
                  '\n'
                  " رقم الهاتف : "
                  "0113726427  "
                  '\n'
                  "———————————————————————"
                  '\n'
                  "   رابط التحميل   :"
                  "$url "
                  '\n');
        }
      },
      child: SvgPicture.asset(
        "assets/icons/share.svg",
        color: Theme.of(context).hoverColor,
        height: 30,
        width: 30,
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

*/
