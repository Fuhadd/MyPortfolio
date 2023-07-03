class AppShowcase {
  final String title, content, imageUrl;

  AppShowcase({
    required this.title,
    required this.content,
    required this.imageUrl,
  });
}

// For demo list of AppShowcase
List<AppShowcase> wisperAppShowcases = [
  AppShowcase(
    title: "Onboarding",
    content: "Super simple authentication process using an email",
    imageUrl: "assets/wisper/onboarding.png",
  ),
  AppShowcase(
    title: "Email Sign In and Sign Up",
    content: "Super simple authentication process using an email.",
    imageUrl: "assets/wisper/login.png",
  ),
  AppShowcase(
    title: "Home Page",
    content: "Your central hub for Wispers' features and communities.",
    imageUrl: "assets/wisper/home.png",
  ),
  AppShowcase(
    title: "Discover Communities",
    content: "Explore diverse communities based on your interests.",
    imageUrl: "assets/wisper/communities.png",
  ),
  AppShowcase(
    title: "Community Details",
    content: "Get information about communities, members, and posts.",
    imageUrl: "assets/wisper/community_details.png",
  ),
  AppShowcase(
    title: "Create Community Post",
    content: "Share your thoughts and engage with the community.",
    imageUrl: "assets/wisper/post.png",
  ),
  AppShowcase(
    title: "Confession",
    content: "Anonymously share your thoughts and secrets.",
    imageUrl: "assets/wisper/confessions.png",
  ),
  AppShowcase(
    title: "Realtime Messaging",
    content: "Instantly connect and chat with your connections.",
    imageUrl: "assets/wisper/message.png",
  ),
];
