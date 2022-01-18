class Job {
  String? company;
  String? logoUrl;
  bool? isMarked;
  String? title;
  String? location;
  String? jobType;
  List<String>? req;

  Job({
    this.company,
    this.logoUrl,
    this.isMarked,
    this.title,
    this.location,
    this.jobType,
    this.req,
  });

  static List<Job> generateJobs() {
    return [
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/google_logo.png',
        isMarked: false,
        title: 'Principal Product Designer',
        location: '412 Marion st, New York\nUnited States',
        jobType: 'Full-time',
        req: [
          'Creative with an eye for shape and color',
          'Undertand difference in materials and production methods',
          'Techinical, Scientific, and practical knowledges',
          'Interested in the way people choose and use product'
        ],
      ),
      Job(
        company: 'Airbnb LLC',
        logoUrl: 'assets/images/airbnb_logo.png',
        isMarked: true,
        title: 'Booking Specialist',
        location: '5400 Carol st, New York\nUnited States',
        jobType: 'Part-time',
        req: [
          'Creative with an eye for shape and color',
          'Undertand difference in materials and production methods',
          'Techinical, Scientific, and practical knowledges',
          'Interested in the way people choose and use product'
        ],
      ),
      Job(
        company: 'LinkedIn',
        logoUrl: 'assets/images/linkedin_logo.png',
        isMarked: false,
        title: 'Promotion Specialist',
        location: '1222 Janer st, New York\nUnited States',
        jobType: 'Full-time',
        req: [
          'Creative with an eye for shape and color',
          'Undertand difference in materials and production methods',
          'Techinical, Scientific, and practical knowledges',
          'Interested in the way people choose and use product'
        ],
      ),
    ];
  }
}
