import 'package:educational_app/app.dart';
import 'package:gap/gap.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.drawer),
                  Row(
                    spacing: 10,
                    children: <Widget>[
                      Image.asset(AppAssets.notification),
                      Image.asset(AppAssets.profile),
                    ],
                  ),
                ],
              ),
              Gap(15),
              Text(
                "Hi Waseem Ashraf",
                style: AppTextStyle.heading.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "You have ",
                  style: AppTextStyle.subHeading.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: "4 pending test",
                      style: AppTextStyle.subHeading.copyWith(
                        color: AppColors.red,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(text: " this week "),
                  ],
                ),
              ),
              Gap(10),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.secondColor,
                ),
                child: CustomPaint(
                  size: Size(400, (180).toDouble()),
                  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: '300',
                                  style: AppTextStyle.heading.copyWith(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Points',
                                      style: AppTextStyle.subHeading.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Cross 500 within the week to get a free One on One Class",
                                style: AppTextStyle.subHeading.copyWith(
                                  color: AppColors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Take test now",
                            style: TextStyle(
                              color: AppColors.secondColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    // Layer 1
    print(size);
    Paint paint_fill_0 = Paint()
      ..color = AppColors.firstColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0012364, size.height * 0.1614833);
    path_0.quadraticBezierTo(
      size.width * 0.0020273,
      size.height * 0.6269500,
      size.width * 0.0019909,
      size.height * 0.8369500,
    );
    path_0.quadraticBezierTo(
      size.width * -0.0001909,
      size.height * 1.0075000,
      size.width * 0.0864909,
      size.height * 0.9975500,
    );
    path_0.quadraticBezierTo(
      size.width * 0.1340091,
      size.height * 1.0045000,
      size.width * 0.2385364,
      size.height * 0.9939667,
    );
    path_0.quadraticBezierTo(
      size.width * 0.4058727,
      size.height * 0.9050667,
      size.width * 0.5900424,
      size.height * -0.0005908,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2234545,
      size.height * 0.0020167,
      size.width * 0.0862545,
      size.height * 0.0002667,
    );
    path_0.quadraticBezierTo(
      size.width * 0.0009636,
      size.height * 0.0024833,
      size.width * -0.0012364,
      size.height * 0.1614833,
    );
    path_0.close();
    Paint paint_fill_1 = Paint()
      ..color = AppColors.thirdColor.withValues(alpha: 0.3)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6836364, size.height * 0.9966667);
    path_1.quadraticBezierTo(
      size.width * 0.7645545,
      size.height * 0.6878333,
      size.width * 0.9981818,
      size.height * 0.6650000,
    );
    path_1.quadraticBezierTo(
      size.width * 1.0002273,
      size.height * 0.7925000,
      size.width * 1.0009091,
      size.height * 0.8350000,
    );
    path_1.quadraticBezierTo(
      size.width * 1.0008455,
      size.height * 1.0036833,
      size.width * 0.9118182,
      size.height * 0.9950000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8547727,
      size.height * 0.9954167,
      size.width * 0.6836364,
      size.height * 0.9966667,
    );
    path_1.close();
    canvas.drawPath(path_1, paint_fill_1);

    // Layer 2

    Paint paint_stroke_1 = Paint()
      ..color = AppColors.thirdColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = AppColors.firstColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
