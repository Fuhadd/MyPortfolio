class RecentWork {
  final String image, category, title;
  final int id;
  final List<String> tool;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.tool,
      required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title:
        "MyInvestar MOBILE APP: Simplify financial goals. Available on Playstore & Appstore.",
    category: "Mobile Development",
    image: "assets/images/my_investar_copy.png",
    tool: [
      'Flutter',
      'Riverpod',
      'Crashlytics',
      'Firebase Messaging',
      'VAPT',
      'Unit Testing'
    ],
  ),
  RecentWork(
    id: 2,
    title:
        "Wispers: Connect and communicate with communities. Post via direct messages or anonymously.",
    category: "Mobile Development",
    image: "assets/images/wisper_mock2.png",
    tool: [
      'Flutter',
      'Riverpod',
      'Dynamic Linking',
      'Animations',
      'Unit Testing'
    ],
  ),
  RecentWork(
    id: 4,
    title: "Wispers WEB APP: Accessible on any web browser.",
    category: "Website Development",
    image: "assets/images/wisper_web.png",
    tool: [
      'Flutter Web',
      'Dynamic Linking',
      'Javascript',
      'Firebase Hosting',
    ],
  ),
  RecentWork(
    id: 3,
    title:
        "Tinder MOBILE APP: Spark meaningful connections. Explore profiles, chat, and meet new people",
    category: "Mobile Development",
    image: "assets/images/dating_app_mock.png",
    tool: [
      'Flutter',
      'Bloc',
      "C# ASP.NET",
      "Firebase Messaging",
      "Web API",
    ],
  ),
];
