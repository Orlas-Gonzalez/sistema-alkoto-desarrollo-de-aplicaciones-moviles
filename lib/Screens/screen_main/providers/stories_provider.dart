import 'package:flutter_auth/Screens/screen_main/models/stories_model.dart';

class StoriesProvider {
  List<Storie> stories = [];

  List<Storie> getStories() {
    stories = [
      Storie(
          name: "Chuchijin",
          photo:
              "https://scontent.fqro4-1.fna.fbcdn.net/v/t1.18169-9/15622610_1198494143579219_2494528917004995371_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=E1PZBzJuhuwAX9KrBr8&_nc_ht=scontent.fqro4-1.fna&oh=a0061457884e0a2b1b2ea80510549314&oe=61C3753E"),
      Storie(
          name: "Orlas",
          photo:
              "https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/5bc6fca5db24d5c1d5f7bd6d4c4a1fef~c5_720x720.jpeg?x-expires=1637769600&x-signature=hBzOtPV6pNKU0lK8sMkAlMkYWOk%3D"),
      Storie(
          name: "Jenny",
          photo:
              "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1661296429410309~c5_720x720.jpeg?x-expires=1637769600&x-signature=2Lk7cJ5tCgp0W%2F7liYAK7AmuUHM%3D"),
      Storie(
          name: "Edu Pai",
          photo:
              "https://scontent.fqro4-1.fna.fbcdn.net/v/t1.6435-9/132451569_3739998112706596_2347543360958618675_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=S_PqoV9h5soAX_Zmbyi&_nc_ht=scontent.fqro4-1.fna&oh=6968f968c6d47981dfc9312fc06f1769&oe=61C37BDE"),
      Storie(
          name: "Coach Diego",
          photo:
              "https://scontent.fqro4-1.fna.fbcdn.net/v/t39.30808-6/244471039_786331486098649_5583083979832349605_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nwMD43TD0uEAX8MWVTv&_nc_ht=scontent.fqro4-1.fna&oh=800f70c61d3ed48e057f1de05148e3f3&oe=61A1CECC"),
      Storie(
          name: "Danny",
          photo:
              "https://i.pinimg.com/736x/cb/5d/64/cb5d64be736ab84602ee1bcd20303d4e.jpg"),
      Storie(
          name: "Edel",
          photo:
              "https://leonelaarguello.com/wp-content/uploads/2020/10/poses-para-selfies-mujeres.jpg")
    ];
    return stories;
  }
}
