import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String name;
  final String age;
  final String country;
  final String imageURL;
  final String job;
  const Person(
      {super.key,
      required this.name,
      required this.age,
      required this.country,
      required this.imageURL,
      required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageURL),
                    )),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white54,
                ),
                child: Center(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _createPersonInfoRow(key: "Age", value: age, context: context),
                const SizedBox(
                  height: 4,
                ),
                _createPersonInfoRow(key: "Job", value: job, context: context),
                const SizedBox(
                  height: 4,
                ),
                _createPersonInfoRow(
                    key: "Country", value: country, context: context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _createPersonInfoRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            "$key:",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Spacer(),
        Expanded(
            child: Text(value, style: Theme.of(context).textTheme.titleSmall)),
      ],
    );
  }
}
