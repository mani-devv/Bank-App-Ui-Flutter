import 'package:bank_app_ui/constants.dart';
import 'package:bank_app_ui/screens/home/components/transactions_model.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MasterCard(),
          Padding(
            padding: EdgeInsets.only(
              top: defaultPadding,
              left: defaultPadding * 1.5,
              right: defaultPadding * 1.5,
              bottom: defaultPadding,
            ),
            child: const Text(
              'My Wallets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultPadding,
            ),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 2.4,
                  padding: EdgeInsets.only(
                    top: defaultPadding,
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '6312 9480 **** 2415',
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 35),
                      Text(
                        'Balance',
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 9),
                      ),
                      Text(
                        '\$4,385',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 2.4,
                  padding: EdgeInsets.only(
                    top: defaultPadding,
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '2145 8430 **** 8080',
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 35),
                      Text(
                        'Balance',
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 9),
                      ),
                      Text(
                        '\$6,427',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: defaultPadding,
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
            padding: EdgeInsets.only(
              left: defaultPadding * 2,
              right: defaultPadding,
            ),
            child: const TransList(),
          ),
        ],
      ),
    );
  }
}

class MasterCard extends StatelessWidget {
  const MasterCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.6,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: defaultPadding,
          left: defaultPadding * 2,
          bottom: defaultPadding,
          right: defaultPadding,
        ),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 2.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bunifu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '4312 1480 6731 3659',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
                SizedBox(height: 3),
                Text(
                  '02/28',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Mani Devv',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                ),
                Image.asset(
                  'assets/icons/master.png',
                  scale: 6,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransList extends StatefulWidget {
  const TransList({super.key});

  @override
  State<TransList> createState() => _TransListState();
}

class _TransListState extends State<TransList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  transactions[index].icon,
                  color: Colors.white,
                  scale: 15,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            transactions[index].time,
                            style: TextStyle(
                              color: textGrey,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      Text(
                        transactions[index].amount,
                        style: TextStyle(
                          color: Colors.red.shade800,
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
