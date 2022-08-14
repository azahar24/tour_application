class UnbordingContent {
  String image;
  String title;
  String discription;


  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> lottieFile = [
  UnbordingContent(
      title: 'Welcome',
      image: 'assets/files/welcome.json',
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
  ),
  UnbordingContent(
      title: 'Support',
      image: 'assets/files/support.json',
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
  ),
  UnbordingContent(
      title: 'Catagoris',
      image: 'assets/files/catagoris.json',
      discription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
  ),
];