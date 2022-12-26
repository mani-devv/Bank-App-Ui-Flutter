import 'package:bank_app_ui/screens/home/components/body.dart';
import 'package:bank_app_ui/screens/profile/components/ptransaction_model.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final dataMap = <String, double>{
      'Available': 1,
      'Spend': 2,
      'Amount': 3,
      'Donate': 4
    };

    const colorList = [
      Color(0xFFce5bfe),
      Color(0xFF75ffff),
      Color(0xFFfdf65d),
      Color(0xFFff456e),
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(top: 5, bottom: defaultPadding),
        child: Stack(
          children: [
            Column(
              children: [
                PieChart(
                  dataMap: dataMap,
                  animationDuration: const Duration(milliseconds: 2000),
                  chartRadius: MediaQuery.of(context).size.width / 2.1,
                  chartType: ChartType.ring,
                  colorList: colorList,
                  legendOptions: const LegendOptions(showLegends: false),
                  baseChartColor: Colors.transparent,
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 75),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        '\$21359.47',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 70),
                Padding(
                  padding: EdgeInsets.only(
                    top: defaultPadding * 1.5,
                    left: defaultPadding * 1.5,
                    right: defaultPadding * 1.5,
                    bottom: defaultPadding,
                  ),
                  child: const Text(
                    'Transactions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: pTransactions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: defaultPadding / 1.5),
                          child: Container(
                            width: 95,
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding,
                                vertical: defaultPadding / 1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  pTransactions[index].icon,
                                  scale: 18,
                                  color: Colors.white,
                                ),
                                Text(
                                  pTransactions[index].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  pTransactions[index].price,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: defaultPadding * 1.5,
                    left: defaultPadding * 1.5,
                    right: defaultPadding * 1.5,
                    bottom: defaultPadding,
                  ),
                  child: const Text(
                    'Cards',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4.6,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFFff456e),
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 5.2),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4.6,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFF75ffff),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        SizedBox(height: 10),
                        MasterCard(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
