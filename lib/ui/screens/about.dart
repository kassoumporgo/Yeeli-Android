import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:veneem/constants/colors.dart';
import 'package:veneem/functions/toasts.dart';
import 'package:veneem/ui/screens/submit_comment.dart';
import 'package:veneem/ui/widgets/button.dart';
import '/constants/texts.dart';
import '/ui/widgets/custom_app_bar.dart';
import 'contact_us.dart';

class AboutScreen extends StatelessWidget {

  final String version;

  const AboutScreen({
    Key? key,
    required this.version,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(text: 'A Propos'),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [

                  Container(
                    height: 120,
                    width: 120,
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.circle,
                    //   border: Border.all(width: 2.0, color: mainColor)
                    // ),
                    child: Image.asset('assets/images/icon-512.png'),
                  ),

                  20.width,

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          appName,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        7.height,
                        Text(
                          version,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

              20.height,


             const Text("La pr??sente application a pour objectif de mettre ?? la disposition des citoyens, des agents publics de sant??, de la soci??t?? civile et des m??dias, les informations essentielles relatives aux principaux actes et services de sant?? afin de favoriser la connaissance des droits, la transparence et la bonne gouvernance. Plus pr??cis??ment, elle a pour but de :\n\n"

                  "??? Permettre l'acc??s ?? l'information au grand public concernant les prestations de services de sant?? d??livr??es par les personnels de sant?? au Burkina Faso ;\n\n"

                  "??? Faciliter l'acc??s aux services de base fournis par les services de sant??;\n\n"
                  "??? Renforcer la lutte contre la corruption et pr??venir la pratique du racket;\n\n"
                  "??? Contribuer ?? renforcer la transparence, l'acc??s ?? l'information et instaurer une relation de confiance entre les agents de sant??, public et les citoyens;\n\n"
                  "??? Renforcer la connaissance des droits des usagers des services publics locaux quant ?? ces actes;\n\n"
                  "??? Renforcer la connaissance des pouvoirs public locaux quant aux actes dont ils ont la charge;\n\n"
                  "??? Pr??venir la pratique du racket et les dessous-de-table;\n\n"
                  "??? Faire connaitre les voies de recours pr??vues par la loi en cas de pr??judice;\n\n"
                  "??? Susciter l'harmonisation des proc??dures de d??livrance pour tous les actes identiques.\n\n"


                  "La collecte des donn??es a ??t?? faite avec l'appui du Projet d'Appui au Gouvernement Ouvert Francophone (PAGOF). Des guides papier d'information sur les actes et services en plusieurs formats ont ??t?? ??labor??s et livr??s aux acteurs concern??s pour large diffusion. BEOG NEERE, en tant que point focal du PGO pour les Organisation de la Soci??t?? Civile a sugg??r?? une version Application Mobile des diff??rents guides. Ainsi, Youth Open Data en partenariat avec BEOG NEERE a proc??d?? ?? l'extraction des donn??es des guides et ?? leurs transformations en format OPEN DATA pour alimenter la pr??sente application en d??veloppement.",

                style: TextStyle(
                  fontSize: 17,
                ),
              ),

              20.height,

              SizedBox(
                width: MediaQuery.of(context).size.width*.9,
                child: FilledButton(
                  text: "nous contacter",

                  onPressed: ()=> Get.to(() => const ContactUsScreen()),

                  // onPressed: () async {
                  //   bool hasInternetConnection = await InternetConnectionChecker().hasConnection;
                  //
                  //   if(!hasInternetConnection) {
                  //     noConnexionToast();
                  //   }
                  //
                  // },

                ),
              ).center()

            ],
          ),
        ),
      ),

    );
  }
}
