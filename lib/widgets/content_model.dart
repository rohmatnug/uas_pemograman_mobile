class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'pick Our food from our menu More than 35 times',
      image: 'images/screen1.png',
      title: 'Select from Our Best Menu'),
  UnboardingContent(
      description:
          'You can pay cash on delivery and\n     Card payment is availabel',
      image: 'images/screen2.png',
      title: 'Easy and Online Payment'),
  UnboardingContent(
      description: 'Delivery your food at your\n   Doorstep',
      image: 'images/screen3.png',
      title: 'Quick Delivery at Your Doorstep')
];
