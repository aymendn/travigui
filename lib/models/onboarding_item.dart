class OnboardingItem {
  final String title;
  final String description;
  final String image;

  const OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}

final List<OnboardingItem> onboardingItems = [
  const OnboardingItem(
    title: 'Welcome to the app',
    description: 'This is a description of the first onboarding screen',
    image: 'assets/images/onboarding_1.png',
  ),
  const OnboardingItem(
    title: 'Welcome to the app',
    description: 'This is a description of the second onboarding screen',
    image: 'assets/images/onboarding_2.png',
  ),
  const OnboardingItem(
    title: 'Welcome to the app',
    description: 'This is a description of the third onboarding screen',
    image: 'assets/images/onboarding_3.png',
  ),
];
