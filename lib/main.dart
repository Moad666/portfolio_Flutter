import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: dashBoard(),
    debugShowCheckedModeBanner: false,
  ));
}

class dashBoard extends StatelessWidget {
  const dashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child : 
                SizedBox(
                  height : 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Profile()),
                        );
                      },
                      child: Icon(Icons.person)),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: SizedBox(
                    height : 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const School()),
                          );
                        },
                        child: Icon(Icons.school)),
                  ),
                )),
              ],
            ),
            SizedBox(height : 50),
            Column(
              children: [
               Row(
              children: [
                Expanded(child : 
                SizedBox(
                  height : 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Experiences()),
                        );
                      },
                      child: Icon(Icons.work)),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: SizedBox(
                    height : 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Projects()),
                          );
                        },
                        child: Icon(Icons.lightbulb)),
                  ),
                )),
              ],
            ),
             SizedBox(height : 50),
                Column(
                  children: [
                    Row(
              children: [
                Expanded(child : 
                SizedBox(
                  height : 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Certificat()),
                        );
                      },
                      child: Icon(Icons.star)),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: SizedBox(
                    height : 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Competence()),
                          );
                        },
                        child: Icon(Icons.computer)),
                  ),
                )),
              ],
            ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                  radius: 80,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "El Otmani Moad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("Future ingénieur en informatique et réseau , MIAGE"),
              SizedBox(height: 20),
              Text(
                "Contact",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [Icon(Icons.phone), Text(" 0630487121")],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.email),
                        Text(" elotmanimoad666@gmail.com")
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.home),
                        Text(" Marrakech , Maroc Mobilité : nationale ")
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.link),
                        TextButton(
                          onPressed: () async {
                            const url =
                                'https://www.linkedin.com/in/moad-el-otmani-2b5a84294/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Text(
                              "https://www.linkedin.com\n/in/moad-el-otmani-2b5a84294/"),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class School extends StatelessWidget {
  const School({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FORMATIONS ACADEMIQUES ")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/emsi.png"),
                  radius: 60,
                ),
              ),
              SizedBox(height: 10),
              Text("École Marocaine des Sciences de l'Ingénieur",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                  "Filière : Ingénierie informatique et réseau ( IIR ), MIAGE"),
              SizedBox(height: 5),
              Text("Date : 2021 à ce jour"),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/ofppt.jpg"),
                  radius: 60,
                ),
              ),
              SizedBox(height: 10),
              Text("Ista Ntyc Sidi Youssef Ben Ali",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text("Filière : Développement Informatique"),
              SizedBox(height: 5),
              Text("Date : 2019-2021"),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/Abtih.jpg"),
                  radius: 60,
                ),
              ),
              SizedBox(height: 10),
              Text("Baccalauréat",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                  "Filière : science de la vie et de la terre option français"),
              SizedBox(height: 5),
              Text("Date : 2017-2018"),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("EXPERIENCES PROFESSIONNELLES")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/noza.jpg"),
                  radius: 60,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Entreprise : NOZA",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text("Realisation d'une applciation web e-commerce"),
              SizedBox(height: 5),
              Text("Missions : Conception / Developpement"),
              SizedBox(height: 5),
              Text("Date : Juin - Juillet 2022"),
              SizedBox(height: 50),
              Text(
                "Entreprise : NOZA",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text("Realisation d'une applciation web ( Recettes cuisine )"),
              SizedBox(height: 5),
              Text("Missions : Developpement / Suivi des performances"),
              SizedBox(height: 5),
              Text("Date : Juillet - Septembre 2023"),
            ]),
          ),
        ));
  }
}

class Certificat extends StatelessWidget {
  const Certificat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Certificats"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("HONORIS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Entrepreneurial skills')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Personal Skills')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Social Skills')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("COURSERA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Developing Back-End Apps with Node.js Express')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Data Collection and Processing with Python')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Python Functions, Files, and Dictionaries')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('DevOps, Cloud, and Agile Foundations')),
                    ),
                  ],
                ),
              ),
              SizedBox(height : 20),
              TextButton(
                          onPressed: () async {
                            const url =
                                '';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(Icons.link),
                                Text(
                                    "Les Certificats"),
                              ],
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

class Competence extends StatelessWidget {
  const Competence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COMPETENCES"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Technique",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/flutter.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Center(child: Text('Flutter')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/angular.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Center(child: Text('Angular')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/django.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Center(child: Text('Django')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/mysql.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Center(child: Text('Mysql')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/spring.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Center(child: Text('Spring boot')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/uml.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Center(child: Text('Uml')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Soft Skills",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Travail d’équipe')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Communication')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Adaptabilité')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Langues",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('English')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Français')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Arabe')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "CENTRES d'INTERET",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Football')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Chess')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Kick Boxing')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROJETS ACADEMIQUES"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/terrain.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title:
                          Text('Application web de réservation des terrains'),
                      subtitle: Text('Technologies: Django / React'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/cuisine.png"),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150),
                    ListTile(
                      title: Text('Application web des recettes cuisine'),
                      subtitle:
                          Text('Technologies : Django / Html / Bootstrap'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/salle.png"),
                        fit: BoxFit.contain,
                        width: 200,
                        height: 200),
                    ListTile(
                      title:
                          Text('Application desktop de Gestion Salle de sport'),
                      subtitle: Text('Technologie : Java'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/education.jpg"),
                        fit: BoxFit.contain,
                        width: 200,
                        height: 200),
                    ListTile(
                      title: Text('Application desktop de gestion d’école'),
                      subtitle: Text('Technologie : Csharp'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage("assets/ecommerce.jpg"),
                        fit: BoxFit.contain,
                        width: 200,
                        height: 200),
                    ListTile(
                      title: Text('Application web (e-commerce)'),
                      subtitle:
                          Text('Technologie : Html / Css / Bootstrap / Php'),
                    ),
                  ],
                ),
              ),
              // Add more cards as needed
            ],
          ),
        ),
      ),
    );
  }
}


