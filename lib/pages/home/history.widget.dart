import 'package:carbonix/models/trip.model.dart';
import 'package:carbonix/theme/theme.dart';
import 'package:carbonix/widgets/pressable/pressable.widget.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  final Trip trip;

  const History({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        width: 250.0,
        child: Column(
          children: [
            // Row(
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     Container(
            //       width: 120.0,
            //       height: 70.0,
            //       decoration: const BoxDecoration(
            //         color: ThemeColors.darkGreen,
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(10.0),
            //         ),
            //       ),
            //       child: const Center(
            //         child: Text(
            //           '-2.0kg',
            //           style: TextStyle(
            //             fontSize: 16.0,
            //             color: Colors.white,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 10.0),
            //     Container(
            //       width: 120.0,
            //       height: 70.0,
            //       padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //       decoration: const BoxDecoration(
            //         color: Color.fromRGBO(245, 245, 245, 1.0),
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(10.0),
            //         ),
            //       ),
            //       child: const Center(
            //         child: Text(
            //           '+0.002 CBRX',
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontSize: 16.0,
            //             color: ThemeColors.text,
            //             fontWeight: FontWeight.w500,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(217, 217, 217, 0.45),
                    offset: Offset(5, 13),
                    blurRadius: 40.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Metro Ride',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 18.0,
                        color: ThemeColors.text.withOpacity(0.7),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  RichText(
                    text: const TextSpan(
                        text: 'You travelled for ',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: ThemeColors.text,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: '10km ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: ThemeColors.text,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'from ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: ThemeColors.text,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Kandivali ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: ThemeColors.text,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'to ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: ThemeColors.text,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Santacruz',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: ThemeColors.text,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
