class Recommendation {
  final String name;
  final String source;
  final String description;

  Recommendation(
      {required this.name, required this.source, required this.description});
}

List<Recommendation> recommendations = [
  Recommendation(
      name: "Marko Kostovski (tutti.ch)",
      source: "LinkedIn",
      description:
          """Nemanja is a guy that I would always love to have on my team. He is very productive, always gets the job done, and focuses on quality. Seeks deep understanding. He set the architecture of our messaging and filter projects, which will be used for the rest of the app.\nNemanja is always direct and will speak his mind. Empathic, he will create strong bonds with his teammates and product. He loves and needs challenges, and even tho he is a high achiever he doesn't have a big ego."""),
  Recommendation(
      name: "Stefan Cvetic (tutti.ch)",
      source: "LinkedIn",
      description:
          """I am really lucky to have met and worked with Nemanja because he helped me grow both personally and professionally. He is a prime example of how a colleague should be: easy to work with, empathic, very rational and practical, has a true passion for what he does and is also great at it. Whenever we had a discussion, he spoke honestly and always gave clear and constructive arguments. 

His technical skills are superb; he set up navigation, filters and messaging architecture for our app, that is being used by hundreds of thousands of monthly active users. On top of that, he has a knack for learning new technologies and design patterns, and it's always delightful to check out his merge requests and see how he applies all of it in a practical manner.

I loved working with Nemanja and hope that we'll work sometime again, but regardless of that outcome I will always try to be the kind of colleague to my future colleagues that Nemanja was to me!""")
];
