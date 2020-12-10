import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Text(
            'HBD Virla !!!',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildfoto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200.0,
          height: 250.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage('assets/images/IMG_Virla.jpg')),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.people_sharp,
              color: Color(0xfff48fb1),
            ),
            labelText: 'Username'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xfff48fb1),
          ),
          labelText: 'Password',
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: Color(0xfff48fb1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildfoto(),
                _buildEmailRow(),
                _buildPasswordRow(),
                _buildLoginButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xfff0f3f2),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff48fb1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/pink-background.jpg"),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                items: [
                  'Dear Vivi, i`m lucky that i was given a chance to meet someone like you. whatever happens and wherever we are, i’ll always treasure you because i know i’ll never have another friend like you.',
                  'Happy Birthday babe! may your birthday be as fantastic and heavenly as our friendship and may you and yoga always be together through thick and thin. love you incredibly and inevitably<3  -kya',
                  'Happy bday vv yg sekarang udah jadi wanita karier!! moga selalu bahagia dan ga gampang nyerah, ngeluh sebanyak2nya boleh kok wkwk. Hmm cita-citamu keknya masih banyak deh jd kejar terusss apapun rintangannya pasti bisa krn km quaattt💪🏻. Plis kalo nikah undang aku y! sekali lagi met ultah teman sepermainan SMA🌈🌈',
                  'Vi makasih ya udah mau jadi temanku, pokoknya.. duh ga tau deh mo ngomong apa, pokoknya jadi temenku aja terus ya. sedih nah... walaupun aku nyebelin buat km, km juga. cape temenan tp kangen, trs kepikiran km gimana-gimana,',
                  'Karena km selalu sendiri dan km selalu berusaha keliatan ✨gapapa✨ tahan sedikit lagi yaa, selalu ingat itu kalo km lagi capee, ditahan dikit capenyaa okaay. kami (siapapun itu) sebisa mungkin, dgn segala keterbatasan manusia ini, akan selalu ada buat kamu. met ulang tahun🤍',
                  'Happy birthday pi! always remember, the sun will rise, and we can always try again tommorrow. jadi jangan terlalu keras sama diri sendiri dan try to enjoy growing up! ❤️, tac',
                  'Happy birthday pi! always remember, the sun will rise, and we can always try again tommorrow. jadi jangan terlalu keras sama diri sendiri dan try to enjoy growing up! ❤️, tac',
                  'Happy birthday pi! always remember, the sun will rise, and we can always try again tommorrow. jadi jangan terlalu keras sama diri sendiri dan try to enjoy growing up! ❤️, tac',
                  'Kepada yth Ibu negara dwiputra. Selamat ulang tahun, kami doakan selaku pasangan dari bekasi, semoga ibu diberi kelancaran dan kemudahan dalam hidupnya. Serta tak lupa kami doakan semoga diberikan umur yang panjang dan rezeki yang melimpah. Semoga apapun perjalanan yang nantinya ibu tempuh akan selalu dalam lindungan tuhan yang maha kuasa. Sekali lagi kami ucapkan selamat ulang tahun. Salam hormat dari kami, hasbi & aqila',
                  'Happy birthday buat virla mabro, semoga kuat di kotabaru langgeng terus sama yoga terus biasanya orang ulang tahun quotesnya apa aja ya? yauda apa ajala tentang virla nanti aku aminin.'
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Color(0xfff48fb1)),
                          child: Text(
                            ' $i',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ));
                    },
                  );
                }).toList(),
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: Duration(seconds: 1),
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              )
            ]),
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                items: [
                  'assets/images/virla6.jpeg',
                  'assets/images/virla7.jpeg',
                  'assets/images/virla8.jpeg',
                  'assets/images/virla9.jpeg',
                  'assets/images/virla9.jpeg',
                  'assets/images/virla10.jpeg',
                  'assets/images/virla11.jpeg',
                  'assets/images/virla12.jpeg',
                  'assets/images/hasbi.JPG',
                  'assets/images/adam.jpeg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Image.asset(
                            i,
                            fit: BoxFit.fill,
                          ));
                    },
                  );
                }).toList(),
                height: 500,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: Duration(seconds: 1),
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              Container(
                height: 1.4 * (MediaQuery.of(context).size.height / 20),
                width: 10 * (MediaQuery.of(context).size.width / 10),
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  elevation: 5.0,
                  color: Color(0xfff48fb1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: MediaQuery.of(context).size.height / 40,
                    ),
                  ),
                ),
              ),
            ]),
      ],
    ));
  }
}

void onPlayAudio() async {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  assetsAudioPlayer.open(Audio("assets/audios/you are apple.mp3"));
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Image(
        image: AssetImage("assets/images/pink-background.jpg"),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 3 * (MediaQuery.of(context).size.height / 20),
            width: 10 * (MediaQuery.of(context).size.width / 10),
            margin: EdgeInsets.only(bottom: 20),
            child: RaisedButton(
              elevation: 5.0,
              color: Color(0xfff48fb1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              onPressed: () {},
              child: Text(
                "FOTO-FOTO KITA❤❤❤",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: MediaQuery.of(context).size.height / 30,
                ),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              'assets/images/virla1.jpg',
              'assets/images/virla2.jpg',
              'assets/images/virla3.jpg',
              'assets/images/virla4.jpg',
              'assets/images/virla5.jpg',
              'assets/images/vv1.png',
              'assets/images/vv2.jpg',
              'assets/images/vv3.jpg',
              'assets/images/vv4.jpg',
              'assets/images/vv5.jpg',
              'assets/images/vv6.jpg',
              'assets/images/vv7.jpg',
              'assets/images/vv8.jpg',
              'assets/images/vv9.jpg',
              'assets/images/v10.jpg',
              'assets/images/v11.jpg',
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image.asset(
                        i,
                        fit: BoxFit.fill,
                      ));
                },
              );
            }).toList(),
            height: 500,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: Duration(seconds: 1),
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 1.4 * (MediaQuery.of(context).size.height / 20),
                width: 10 * (MediaQuery.of(context).size.width / 10),
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  elevation: 5.0,
                  color: Color(0xfff48fb1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page4()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: MediaQuery.of(context).size.height / 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ]));
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/pink-background.jpg"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 3 * (MediaQuery.of(context).size.height / 20),
                width: 10 * (MediaQuery.of(context).size.width / 10),
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  elevation: 5.0,
                  color: Color(0xfff48fb1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page4()));
                  },
                  child: Text(
                    "Maafya Belum Selesai :(",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: MediaQuery.of(context).size.height / 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
