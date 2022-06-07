class Project {
  final String title;
  final String description;
  final String link;

  Project({required this.title, required this.description, required this.link});
}

List<Project> projects = [
  Project(
      title: "burrito",
      link: "https://github.com/nemscep/burrito",
      description:
          """Burrito library is made for making data-domain layer interaction domain centric.
This library is mostly made for my personal preference in order to speed things up when
starting projects from scratch."""),
  Project(
      title: "mac-setup-scripts",
      link: "https://github.com/nemscep/mac-setup-scripts",
      description: """Scripts for automated mac setup"""),
  Project(
      link: "",
      title: "nemscep.io",
      description: """Online portfolio site built for fun using Flutter.""")
];
