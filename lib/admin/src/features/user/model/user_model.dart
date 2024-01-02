class UserModel {
  final String image;
  final String name;
  final String email;

  UserModel({
    required this.name,
    required this.image,
    required this.email,
  });
}

final List<UserModel> userList = [
  UserModel(
    name: "Riyazur Rohman Kachar",
    image: "https://images.augustman.com/wp-content/uploads/sites/3/2022/04/07161423/stacey-franco-ex9kqrn1mj0-unspla.jpeg",
    email: "rrk@gmail.com",
  ),
  UserModel(
    name: "Asaduzzaman Apu",
    image: "https://thumbs.dreamstime.com/b/open-book-hardback-books-wooden-table-education-background-back-to-school-copy-space-text-76106466.jpg",
    email: "apu@gmail.com",
  ),
  UserModel(
    name: "Nadim",
    image: "https://w0.peakpx.com/wallpaper/246/663/HD-wallpaper-al-quran-beautiful-al-quran-blue-al-quran-holy-quran-islam-islamic.jpg",
    email: "nadim@gmail.com",
  ),
  UserModel(
    name: "Rafhy Azam",
    image: "https://e0.pxfuel.com/wallpapers/70/57/desktop-wallpaper-beautiful-open-quran-for-pc-quran-islamic-quran-holy-quran.jpg",
    email: "azam@gmail.com",
  ),
];
