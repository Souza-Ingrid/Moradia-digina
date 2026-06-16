import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moradia Digna',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.dark,
        ),
      ),
      home: const TelaAbertura(),
    );
  }
}

// TELA DE ABERTURA
class TelaAbertura extends StatelessWidget {
  const TelaAbertura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.home_rounded,
                size: 120,
                color: Colors.blueAccent,
              ),

              const SizedBox(height: 30),

              const Text(
                "MORADIA DIGNA",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Projeto Integrador - Dispositivos Móveis",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 180,
                height: 50,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("Entrar"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuPrincipal(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// MENU PRINCIPAL
class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  Widget cardMenu(
      BuildContext context,
      IconData icone,
      String titulo,
      Widget tela,
      ) {
    return SizedBox(
      width: 320,
      height: 90,
      child: Card(
        color: const Color(0xFF1E1E1E),
        elevation: 5,
        child: ListTile(
          leading: Icon(
            icone,
            color: Colors.blueAccent,
            size: 40,
          ),
          title: Text(
            titulo,
            style: const TextStyle(fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => tela,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Principal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            cardMenu(
              context,
              Icons.home_work,
              "Arquitetura do Sistema",
              const Tela1(),
            ),

            const SizedBox(height: 20),

            cardMenu(
              context,
              Icons.cloud,
              "Cloud Computing",
              const Tela2(),
            ),

            const SizedBox(height: 20),

            cardMenu(
              context,
              Icons.analytics,
              "Benefícios do Sistema",
              const Tela3(),
            ),
          ],
        ),
      ),
    );
  }
}

// TELA 1
class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arquitetura do Sistema"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/casa.jpg",
                  height: 220,
                ),
              ),

              const SizedBox(height: 25),

              Card(
                color: const Color(0xFF1E1E1E),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [

                      Text(
                        "Arquitetura do Sistema",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        "O aplicativo Moradia Digna foi desenvolvido utilizando princípios da Engenharia de Software, garantindo organização, manutenção e facilidade de uso.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),

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

// TELA 2
class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cloud Computing"),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton.icon(
            icon: const Icon(Icons.cloud),
            label: const Text(
              "Acessar Tela 2.1",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Tela21(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// TELA 2.1
class Tela21 extends StatelessWidget {
  const Tela21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cloud Computing"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/nuvem.jpg",
                  height: 220,
                ),
              ),

              const SizedBox(height: 25),

              Card(
                color: const Color(0xFF1E1E1E),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [

                      Icon(
                        Icons.cloud,
                        color: Colors.blueAccent,
                        size: 60,
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Cloud Computing",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Os serviços em nuvem permitem armazenamento, escalabilidade e acesso remoto aos dados através da internet. A comunicação entre dispositivos ocorre através de protocolos de rede como TCP/IP e HTTP.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),

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

// TELA 3
class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Benefícios do Sistema"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 20),

            const Icon(
              Icons.analytics,
              size: 90,
              color: Colors.greenAccent,
            ),

            const SizedBox(height: 20),

            const Text(
              "Benefícios do Sistema",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              color: Colors.green.shade900,
              child: const ListTile(
                leading: Icon(Icons.check_circle),
                title: Text("Organização das informações"),
              ),
            ),

            Card(
              color: Colors.green.shade900,
              child: const ListTile(
                leading: Icon(Icons.check_circle),
                title: Text("Facilidade de acesso"),
              ),
            ),

            Card(
              color: Colors.green.shade900,
              child: const ListTile(
                leading: Icon(Icons.check_circle),
                title: Text("Escalabilidade em nuvem"),
              ),
            ),

            Card(
              color: Colors.green.shade900,
              child: const ListTile(
                leading: Icon(Icons.check_circle),
                title: Text(
                  "Integração entre Engenharia de Software e Redes",
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}