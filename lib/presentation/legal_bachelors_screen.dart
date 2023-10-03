import 'package:buttons/components/person.dart';
import 'package:flutter/material.dart';

class LegalBachelor extends StatelessWidget {
  const LegalBachelor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Legal Bachelors"),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Person(
                  name: "Muhammad Ramzan",
                  age: "21",
                  country: "Pakistan",
                  imageURL:
                      "https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-6/371784401_1314638066145702_1155889272371849789_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeEqhqARIpprG4mLifYAecQBK_mWFTPg4gEr-ZYVM-DiAdCtJUwBPij2NfBodzOPQtopLHk-BjnlfltIpvj3yk_H&_nc_ohc=h_ZR0cgbdncAX-yXZCd&_nc_ht=scontent.flyp2-1.fna&oh=00_AfDjdDR0SwOrtPHBH88ylO6xXOnB6rE1t4WUcv1rEvFaRw&oe=650BBA6F",
                  job: "Student , Professional Flutter Developer"),
              SizedBox(
                height: 20,
              ),
              Person(
                  name: "Mian Husnain",
                  age: "21",
                  country: "Pakistan",
                  imageURL:
                      "https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-6/354518815_2180573762332590_5874463316306506033_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeFETvO3Qdp44zWzjXm40BjSo-3bwYCOOAmj7dvBgI44CfIk4O_r59AiUseXfFHgLqV5FPH9P2FavtoVZV_655vm&_nc_ohc=gzTFL7n_lVIAX_6Fm4a&_nc_ht=scontent.flyp2-1.fna&oh=00_AfC7LTuuqXl_pqMYmNjlSHEg5v25_mIPXL6UjnGNnNzF3w&oe=650B9FAE",
                  job: "Student, Daraz Seller"),
              SizedBox(
                height: 20,
              ),
              Person(
                  name: "Usman Ghani",
                  age: "21",
                  country: "DharanWala",
                  imageURL:
                      "https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-6/372836104_241696478848594_3028240406495751573_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGvrp9NWzp_miQfuCrr4m9KokvId4lTjmaiS8h3iVOOZqBn1XlYq3nx7DRxzRR1_F4SroaPurSkbaIxgpIr5xoJ&_nc_ohc=aPqQit3W4TwAX-dYNaz&_nc_ht=scontent.flyp2-1.fna&oh=00_AfCXVem1kAFqGD-ejD23-QnEekg7IsqPW4E3U3NY-IDrkw&oe=650B5CF6",
                  job: "Flutter Developer"),
              SizedBox(
                height: 20,
              ),
              Person(
                  name: "Muhammad Ahtisham",
                  age: "22",
                  country: "Faisalabad",
                  imageURL:
                      "https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-6/342710349_908037093735822_8029729977550032072_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeG1RJ_AsRdpJdLsHtVwvGg1EA1bwiVhyp0QDVvCJWHKnTOc6GU32Oe1HRPwzpaO_LgthLjDJmp4IZStmtlgjcKE&_nc_ohc=nNGlQehVDi8AX8iyVLD&_nc_oc=AQkNlilqZk_YbaLL_rwfgEngRNnfGgaX4vG3zs3-IG4KDM5XoP_ULAxiDgADqmZ6RNE&_nc_ht=scontent.flyp2-1.fna&oh=00_AfArRMPzV-QKoiKvF4ye9HOBTXsZ0h6_reG0ZmMm4OY3Dw&oe=650AF7D8",
                  job: "Student")
            ],
          ),
        ),
      ),
    );
  }
}
