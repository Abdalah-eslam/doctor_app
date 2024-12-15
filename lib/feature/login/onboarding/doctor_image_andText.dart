import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndtext extends StatelessWidget {
  const DoctorImageAndtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                stops: [0.14, 0.4]),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
            bottom: 30,
            left: 50.h,
            right: 0,
            child: Text(
              '    Best Doctor \nAppointment App',
              style: Stylemanger.font32blue700wi.copyWith(height: 1.4),
            )),
      ],
    );
  }
}
