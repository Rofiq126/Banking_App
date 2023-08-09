import 'package:bangking_app/model/list_data.dart';
import 'package:bangking_app/widgets/custom_appBar.dart';
import 'package:bangking_app/widgets/custom_circleMenuPayment.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ListData listData = ListData();
    return Scaffold(
        appBar: customAppbar(context, 'PAYMENT'),
        body: Column(
          children: [
            Container(
                width: size.width,
                height: size.height * 0.2,
                decoration: const BoxDecoration(color: Styles.primaryColor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.white),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://i.pinimg.com/564x/fd/83/4c/fd834c8ccb0156103b689dad757666a4.jpg')),
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'BALANCE',
                            style: Styles.txtRegulerWhite,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$ 4, 180.20',
                            style: Styles.txtRegulerWhiteBig,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              width: size.width,
              height: size.height * 0.7,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,
                            mainAxisExtent: 150,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    primary: false,
                    itemCount: listData.dataMenu.length,
                    itemBuilder: (context, index) {
                      return CustomCircleMenuPayment(
                          buttonColor: listData.dataMenu[index].color,
                          assetPath: listData.dataMenu[index].pathIcon,
                          text: listData.dataMenu[index].name);
                    }),
              ),
            )
          ],
        ));
  }
}
