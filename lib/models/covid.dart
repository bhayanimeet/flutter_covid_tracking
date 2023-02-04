class Covid {
  final dynamic activeCase;
  final dynamic death;
  final dynamic recoverCase;
  final dynamic country;

  Covid({
    required this.activeCase,
    required this.death,
    required this.recoverCase,
    required this.country,
  });

  factory Covid.fromList({required Map data}){
    return Covid(
      activeCase: data['Total Cases_text'],
      death: data['Total Deaths_text'],
      recoverCase: data['Total Recovered_text'],
      country: data['Country_text'],
    );
  }
}
