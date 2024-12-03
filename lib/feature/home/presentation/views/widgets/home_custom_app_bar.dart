import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/network/shared_prefs.dart';
import '../../../../../core/router/routes.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Logo',
          style: TextStyle(
            color: Color(0xFF24252C),
            fontSize: 24,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            height: 0.06,
          ),
        ),
        const Spacer(),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.profile);
            },
            child: SvgPicture.asset('assets/images/profile_icon.svg')),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
            onTap: () async {
              await SharedPrefs.deleteFromCache();
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.login, (route) => false);
            },
            child: SvgPicture.asset('assets/images/logout.svg'))
      ],
    );
  }
}
