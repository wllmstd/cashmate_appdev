class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "CashMate",
    image: "assets/images/image1.png",
    desc: "The future of currency interaction.",
  ),
  OnboardingContents(
    title: "Welcome to CashMate!",
    image: "assets/images/image2.png",
    desc:
        "Unlock the Power of Your Pocket with CashMate: Where Money Meets Innovation!",
  ),
  OnboardingContents(
    title: "Meet Cashy  ",
    image: "assets/images/image3.png",
    desc:
        "Your personal voice assistant. Elevate your financial game with Cashy today!",
  ),
];
