import 'package:flutter/material.dart';
import 'package:listview_exp/user.dart';

void main() {
  // List<String> tuts = ["Angi", "Ben", "Melli", "Jarne"];
  //                     0       1        2         3

  // for (int i = 0; i < tuts.length; i++) {
  //   String aktuellerTutor = tuts[i];
  //   print(aktuellerTutor);
  // }

  runApp(
    const MaterialApp(
      home: MyScreen(),
    ),
  );
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // eine Liste an Objekten
    // List<String> chatNachrichten = ["Hallo", "Wie gehts", "Ciao"];
    // List<Umsatz> umsatzListe = [
    //   Umsatz(betrag: 100, umsatzname: "Lohn"),
    //   Umsatz(betrag: -50, umsatzname: "Telekom Internet"),
    //   Umsatz(betrag: -13.5, umsatzname: "Hundversicherung"),
    //   Umsatz(betrag: 70, umsatzname: "PayPal"),
    //   Umsatz(betrag: -700, umsatzname: "Miete"),
    //   Umsatz(betrag: -13.5, umsatzname: "Hundversicherung"),
    //   Umsatz(betrag: 70, umsatzname: "PayPal"),
    //   Umsatz(betrag: -700, umsatzname: "Miete"),
    // ];
    //
    List<User> userListe = [
      User(
        profilePicUrl:
            "https://ca.slack-edge.com/T044YC3MSLF-U0682A3SDAN-fe6928565c03-192",
        name: "Adam Fronia",
        isMale: true,
      ),
      User(
        profilePicUrl:
            "https://ca.slack-edge.com/T044YC3MSLF-U04S160GVMH-353316879748-72",
        name: "Angi Petzold",
        isMale: false,
      ),
      User(
        profilePicUrl:
            "https://ca.slack-edge.com/T044YC3MSLF-U068EUM5JQ1-ca3f7891d7a6-72",
        name: "Cihan Oezdemir",
        isMale: true,
      ),
    ];

    return Scaffold(
      body: Center(
        child: ListView.builder(
          // deineListe.length
          itemCount: userListe.length,
          // wie sieht ein Eintrag der Liste aus
          itemBuilder: (context, index) {
            // aktuelles Item ausfindig machen
            User aktuellerUser = userListe[index];
            // [grafische Anzeige des Items]
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(44.0),
              ),
              color: aktuellerUser.isMale
                  ? const Color.fromARGB(255, 122, 195, 228)
                  : const Color.fromARGB(255, 255, 215, 228),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(aktuellerUser.profilePicUrl),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(aktuellerUser.name),
                  const Spacer(),
                  const Icon(Icons.add),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(Icons.remove_red_eye),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// class MyScreen extends StatelessWidget {
//   const MyScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     List<String> tuts = ["Angi", "Ben", "Melli", "Jarne", "Nico"];
//     //                     0        1    2        3          4
//     return Scaffold(
//       body: Center(
//         child: ListView.builder(
//           // 10 - rufe itemBuild 10x auf
//           itemCount: tuts.length,
//           itemBuilder: (context, index) {
//             String aktuellerTutor = tuts[index];
//             return Container(
//               color: Colors.red,
//               child: Text(aktuellerTutor),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
