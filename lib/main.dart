import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Lebar = MediaQuery.of(context).size.width;
    final Tinggi = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Text("Login Page"),
            centerTitle: false,
            backgroundColor: Colors.orange.shade900),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: Tinggi / 25),
                width: Lebar,
                height: Tinggi / 6,
                // color: Colors.orange,g
                child: Image.asset(
                  "images/login.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: Tinggi / 20,
              ),
              Container(
                margin: EdgeInsets.only(left: Lebar / 80, bottom: Tinggi / 40),
                width: Lebar,
                child: const Text(
                  "Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Masukkan Email",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: Tinggi / 30,
              ),
              Container(
                margin: EdgeInsets.only(left: Lebar / 80, bottom: Tinggi / 40),
                width: Lebar,
                child: const Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    hintText: "Masukkan Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: Tinggi / 35,
              ),
              Material(
                color: Colors.orange.shade700,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Get.snackbar("Selamat !!!", "Login Berhasil",
                        backgroundColor: Colors.purple);
                  },
                  child: Container(
                    width: Lebar,
                    height: Tinggi / 15,
                    // decoration: BoxDecoration(
                    //     color: Colors.orange.shade700,
                    //     borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.login,
                          color: Colors.white,
                          size: 26,
                        ),
                        SizedBox(
                          width: Lebar / 50,
                        ),
                        const Text(
                          "Login Sekarang",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Tinggi / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.purple.shade300)),
                    onPressed: () {
                      Get.snackbar(
                          "INFORMASI PENTING!!", "Anda Memasuki Halaman Daftar",
                          backgroundColor: Colors.pink);
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.purple),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange.shade100)),
                    onPressed: () {
                      Get.snackbar("INFORMASI PENTING!!",
                          "Anda Memasuki Page Lupa Password",
                          backgroundColor: Colors.green);
                    },
                    child: const Text(
                      "Lupa Password?",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.snackbar(
                "INFORMASI PENTING!!", "APLIKASI INI MASIH TAHAP PENGEMBANGAN",
                backgroundColor: Colors.red);
          },
          backgroundColor: Colors.orange.shade600,
          label: Row(
            children: [
              const Icon(Icons.info_rounded),
              SizedBox(
                width: Lebar / 40,
              ),
              const Text(
                "Informasi",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
