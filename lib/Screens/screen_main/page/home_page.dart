import 'package:flutter_auth/Screens/screen_main/models/post_model.dart';
import 'package:flutter_auth/Screens/screen_main/models/stories_model.dart';
import 'package:flutter_auth/Screens/screen_main/providers/posts_provider.dart';
import 'package:flutter_auth/Screens/screen_main/providers/stories_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StoriesProvider st = StoriesProvider();
  PostProvider pv = PostProvider();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _etiquetas(),
            _historias(),
            const Divider(color: Colors.grey, height: 0, thickness: 0.5),
            _posts()
          ],
        ),
      ),
      bottomNavigationBar: _tabBar(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          color: Colors.black38,
          height: 0.75,
        ),
      ),
      backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
      elevation: 0,
      centerTitle: true,
      title: Container(
        margin: const EdgeInsets.only(top: 10),
        child: SizedBox(
            height: 40, child: Image.asset('assets/img/alkoto_icon.png')),
      ),
      leading: IconButton(
          onPressed: () {
            _messageAlert(context, "[ Inicianlizando Cámara ]",
                "El servicio de la cámara se ha levantado.");
          },
          icon: const Image(
            image: AssetImage("assets/img/camera_icon.png"),
            width: 30,
          )),
      actions: <Widget>[
        IconButton(
            onPressed: () {
              _messageAlert(context, "[ Inicianlizando TV ]",
                  "Ah ingresado en el servicio de TV, disftute de los mejores programas de Alkoto");
            },
            icon: const Image(
              image: AssetImage("assets/img/tv_icon.png"),
              width: 30,
            )),
        IconButton(
            onPressed: () {
              _messageAlert(context, "[ Inicianlizando Mensajes ]",
                  "El servicio de mensajes se ha levantado, ahora puede chatear.");
            },
            icon: const Image(
              image: AssetImage("assets/img/message_icon.png"),
              width: 30,
            )),
      ],
    );
  }

  Widget _etiquetas() {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Historias",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: const [
              Icon(Icons.arrow_right, color: Colors.white),
              Text("Ver Todo",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _historias() {
    return Container(
      height: 105,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10, left: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        children: st.getStories().map((storie) {
          return _crearHistoria(storie);
        }).toList(),
      ),
    );
  }

  Widget _crearHistoria(Storie storie) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  width: 3, color: const Color.fromRGBO(255, 255, 0, 1))),
          child: Container(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: NetworkImage(storie.photo),
                height: 65,
                width: 65,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          storie.name,
          style: const TextStyle(
              fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _posts() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: pv.getPost().length,
          itemBuilder: (context, i) {
            return _crearPost(pv.getPost()[i]);
          }),
    );
  }

  Widget _crearPost(Post post) {
    List<Widget> userLikes = [];
    userLikes.add(const Text(
      'Le gusta a ',
      style: TextStyle(color: Colors.white),
    ));
    int count = 1;
    int countUserLikes = post.topLikes.length;
    for (var name in post.topLikes) {
      Widget _temp = Text(
        count != countUserLikes ? name + ", " : name,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 128, 0, 1)),
      );
      userLikes.add(_temp);
      count == countUserLikes
          ? userLikes.add(const Text(
              ' y ',
              style: TextStyle(color: Colors.white),
            ))
          : null;
      count == countUserLikes
          ? userLikes.add(Text("otras ${post.likes} personas.",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 128, 255, 1))))
          : null;
      count++;
    }
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 12, left: 18, bottom: 12, right: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: NetworkImage(post.userPhoto),
                        height: 45,
                        width: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  post.userName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
          ),
          FadeInImage(
              placeholder: const AssetImage('assets/img/load.gif'),
              image: NetworkImage(post.postPhoto)),
          Container(
              padding:
                  const EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                        icon: const Image(
                          image: AssetImage("assets/img/heart_icon.png"),
                          width: 30,
                        ),
                        onPressed: () {
                          _messageAlert(context, "[ Me gusta ]",
                              "Has indicado que te gusta esta publicación.");
                        },
                      ),
                      IconButton(
                        icon: const Image(
                          image: AssetImage("assets/img/comment_icon.png"),
                          width: 30,
                        ),
                        onPressed: () {
                          _messageAlert(context, "[ Comentarios ]",
                              "Se ha iniciado el servicio de comentarios. Comenta esta publicación.");
                        },
                      ),
                      IconButton(
                        icon: const Image(
                          image: AssetImage("assets/img/send_icon.png"),
                          width: 30,
                        ),
                        onPressed: () {
                          _messageAlert(context, "[ Compartir ]",
                              "Se ha iniciado el servicio de compartir. El autor de la imagen puede ver los elementos compartidos.");
                        },
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        _messageAlert(context, "[ Bookmarks ]",
                            "Esta publicación se ha guardado en tus marcadores.");
                      },
                      icon: const Image(
                        image: AssetImage("assets/img/save_icon.png"),
                        width: 30,
                      )),
                ],
              )),
          Container(
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 10),
            child: Row(
              children: userLikes,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 10),
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        // ignore: unnecessary_string_interpolations
                        text: post.userName + " ",
                        style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 0, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    TextSpan(
                        text: post.caption,
                        style: const TextStyle(color: Colors.white))
                  ]),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      post.date,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black38, width: 0.75)),
      ),
      child: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentPage,
        selectedItemColor: Colors.black,
        iconSize: 28,
        elevation: 0,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/img/homepage.png"),
              width: 30,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/img/search_icon.png"),
              width: 30,
            ),
            label: "Buscar",
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/img/plus.png"),
              width: 30,
            ),
            label: "Cargar",
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/img/likes.png"),
              width: 30,
            ),
            label: "Likes",
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/img/user_icon.png"),
              width: 30,
            ),
            label: "Cuenta",
          )
        ],
      ),
    );
  }

  _messageAlert(BuildContext context, String title, String message) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text(title,
                  style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 0, 1),
                      fontWeight: FontWeight.bold)),
              backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
              content: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ));
  }
}
