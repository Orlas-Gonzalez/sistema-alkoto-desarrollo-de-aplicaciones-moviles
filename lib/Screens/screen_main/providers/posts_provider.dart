import 'package:flutter_auth/Screens/screen_main/models/post_model.dart';

class PostProvider {
  List<Post> posts = [];

  List<Post> getPost() {
    posts = [
      Post(
        userPhoto:
            "https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/5bc6fca5db24d5c1d5f7bd6d4c4a1fef~c5_720x720.jpeg?x-expires=1637769600&x-signature=hBzOtPV6pNKU0lK8sMkAlMkYWOk%3D",
        userName: "Orlando González",
        postPhoto:
            "https://media.revistagq.com/photos/5d89c9335d07090008d92dd6/16:9/w_2560%2Cc_limit/2020-mclaren-senna-mmp-1545234547.jpg",
        caption:
            "Si algún día la velocidad me quita la vida, no lloren por mi, porque estaré sonriendo, en mi bocho.",
        date: "Febrero 23",
        likes: 225,
        topLikes: ["Orlando", "Jennifer"],
      ),
      Post(
        userPhoto:
            "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1661296429410309~c5_720x720.jpeg?x-expires=1637769600&x-signature=2Lk7cJ5tCgp0W%2F7liYAK7AmuUHM%3D",
        userName: "Jennifer Guzmán",
        postPhoto:
            "https://www.eltiempo.com/files/image_640_428/uploads/2021/01/25/600ed62904858.jpeg",
        caption:
            "La fiesta, el trabajo, el dinero hasta arriba y el perreo hasta abajo. Como lo mueve esa muchachota.",
        date: "Febrero 14",
        likes: 330,
        topLikes: ["Jesús", "Eduardo"],
      ),
      Post(
        userPhoto:
            "https://scontent.fqro4-1.fna.fbcdn.net/v/t1.18169-9/15622610_1198494143579219_2494528917004995371_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=E1PZBzJuhuwAX9KrBr8&_nc_ht=scontent.fqro4-1.fna&oh=a0061457884e0a2b1b2ea80510549314&oe=61C3753E",
        userName: "Chuchijin Duarte",
        postPhoto:
            "https://www.cambiatufisico.com/wp-content/uploads/2016/01/peso-gimnasio-696x464.jpg",
        caption:
            "No pain, no gain. #Puro_corrido_tumbado #Vida_fit #Critiquen #Uno_WZ_O_Queso?",
        date: "Diciembre 24",
        likes: 115,
        topLikes: ["Antonio", "Martha"],
      ),
      Post(
        userPhoto:
            "https://scontent.fqro4-1.fna.fbcdn.net/v/t1.6435-9/132451569_3739998112706596_2347543360958618675_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=S_PqoV9h5soAX_Zmbyi&_nc_ht=scontent.fqro4-1.fna&oh=6968f968c6d47981dfc9312fc06f1769&oe=61C37BDE",
        userName: "El Edu Pai",
        postPhoto:
            "https://as01.epimg.net/masdeporte/imagenes/2021/08/18/reportajes/1629287252_471087_1632935001_noticiareportajes_grande.jpg",
        caption:
            "Sho creo que este partdio se jugo bien, la vera es ejque el equipo dio todo de si y lo único que queda es prepararnos para el siguiente partido.",
        date: "Marzo 26",
        likes: 451,
        topLikes: ["Jesús", "Jennifer"],
      ),
      Post(
        userPhoto:
            "https://scontent.fqro4-1.fna.fbcdn.net/v/t39.30808-6/244471039_786331486098649_5583083979832349605_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nwMD43TD0uEAX8MWVTv&_nc_ht=scontent.fqro4-1.fna&oh=800f70c61d3ed48e057f1de05148e3f3&oe=61A1CECC",
        userName: "Diego Segovia",
        postPhoto:
            "https://s1.significados.com/foto/depositphotos-70826925-s-2019_bg.jpg",
        caption:
            "A Michael Jordan le faltan manos para estar a la altura de este dios en este deporte. #Basquet_mi_droga",
        date: "Marzo 22",
        likes: 120,
        topLikes: ["Orlando", "Ana"],
      ),
      Post(
        userPhoto:
            "https://i.pinimg.com/originals/17/fc/97/17fc9732fbb08f974ed29ced0366ef66.png",
        userName: "Diana Villar",
        postPhoto: "https://i.ytimg.com/vi/0FN10TWI9y4/maxresdefault.jpg",
        caption:
            "Hey, llegó el sensei, fiesta al cien. Algo bien, pa'l DJ. Every day, every night. Bien bien high, aquí si hay",
        date: "Abril 16",
        likes: 654,
        topLikes: ["Edu Pai", "Jennifer"],
      ),
      Post(
        userPhoto:
            "https://2.bp.blogspot.com/-D_LNxvQlwpc/XJfhizHIy5I/AAAAAAAAHOs/5-Q4F1CmVmkwCBb7UqP1Bvq52vGROna6ACLcBGAs/s1600/846ee3c1627e14201797e611a36aef6f.jpg",
        userName: "Nonemi Córtes",
        postPhoto:
            "https://content.skyscnr.com/m/78c0adee87cafb12/original/eyeem-26694340-142112507.jpg?resize=1800px:1800px&quality=100",
        caption:
            "El acto de amor mas grande es alejarse cuando es pertinente, al final si te quedas a la fuerza no servirá de nada.",
        date: "Octubre 21",
        likes: 1000,
        topLikes: ["Orlando", "Marcos"],
      ),
      Post(
        userPhoto:
            "https://1.bp.blogspot.com/-wd6ZhnRIFsk/Xe8uovd1fcI/AAAAAAAAARc/XvFtOsq3Mr8F7kUidCislm4ql3BAEQsbwCLcBGAsYHQ/s1600/148bb60b3bd7b3ded1de810a79cdef99.jpg",
        userName: "Karen Ceballos",
        postPhoto:
            "https://www.aguaeden.es/sites/default/files/blog_migrate/iStock_000019015566_Large.jpg",
        caption:
            "Andamos al 100% en el jale, con un gran equipo de trabajo, todo se puede si todo se quiere.",
        date: "Noviembre 15",
        likes: 875,
        topLikes: ["Orlando", "Jesús"],
      ),
      Post(
        userPhoto:
            "https://i.pinimg.com/736x/cb/5d/64/cb5d64be736ab84602ee1bcd20303d4e.jpg",
        userName: "Daniel Ortiz",
        postPhoto:
            "https://estaticos.muyinteresante.es/uploads/images/article/5e85933a5bafe86f6986f8ea/vidamarina2_0.jpg",
        caption:
            "Comeme tierra y escupeme en cacúuuuuuuuuuuuuuuuuuuuuuuuuuuun, quiero volver a donde fui feliz.",
        date: "Enero 21",
        likes: 114,
        topLikes: ["Diana", "Jennifer"],
      ),
      Post(
        userPhoto:
            "https://leonelaarguello.com/wp-content/uploads/2020/10/poses-para-selfies-mujeres.jpg",
        userName: "Edel Rodriguez",
        postPhoto:
            "https://i.blogs.es/73720c/photo-1519317245869-d6943e4a4f9a/1366_2000.jpeg",
        caption:
            "Una foto, porque sino no funciona, poco a poco pero ahi esta el trabajo honezto.",
        date: "Julio 23",
        likes: 450,
        topLikes: ["Orlando", "Marcos"],
      )
    ];
    return posts;
  }
}
