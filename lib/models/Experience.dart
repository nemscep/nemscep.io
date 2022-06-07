class Experience {
  final String name;
  final String period;
  final String description;
  final String link;

  Experience(
      {required this.name,
      required this.period,
      required this.description,
      required this.link});
}

List<Experience> experiences = [
  Experience(
      link: "https://www.quickbit.com",
      name: "Quickbit",
      period: "Jun 2022 - Present",
      description: """Just started!\nWill be updated soon!"""),
  Experience(
      link: "https://www.tutti.ch",
      name: "tutti.ch",
      period: "Jan 2021 - Jun 2022\n",
      description: """- Developing features such as messaging, filters, billing
- Establishing quality centered environment with main focus on scalable and clean code covered with unit tests
- Refactoring code to comply with clean and MVVM architecture
- Setting up a Material Components theme configuration and refactoring project to use its attributes
- Publishing app updates on Google Play regularly
- Defining Bitrise configuration with appropriate triggers - Changing from trunk based development to GitFlow
- Conducting various dev testing sessions with main focus on improving quality of testing within apps team
- Conducting Android and app distribution technical interviews
- Refactoring project to single activity approach with jetpack navigation library"""),
  Experience(
      link: "https://www.lotusflare.com",
      name: "LotusFlare",
      period: "Feb 2019 - Jan 2021\n",
      description:
          """- Working on multiple projects, on one being a team lead to a team of 3 people
- Integrating new technologies into projects such as Kotlin Coroutines and Flow, Navigation Component, View Models, Live Data and more
- Ensuring project's code base stability by improving its cleanliness
- Managing discussions regarding how features are going to be implemented and providing estimations to how much time is needed in order to complete them
- Writing unit tests (major in-house advocate of TDD) in order to increase app's and project's stability furthermore
- Publishing app updates on Google Play and Huawei stores regularly - Improving app's performance"""),
];
