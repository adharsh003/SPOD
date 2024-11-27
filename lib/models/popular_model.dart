class PopularactivitysModel {
  String name;
  String iconPath;
  String location;
  bool boxIsSelected;

  PopularactivitysModel({
    required this.name,
    required this.iconPath,
    required this.location,
    required this.boxIsSelected
  });

  static List < PopularactivitysModel > getPopularactivitys() {
    List < PopularactivitysModel > popularactivitys = [];

    popularactivitys.add(
      PopularactivitysModel(
       name: 'Anfield Stadium',
       iconPath: 'assets/football/football 1.jpg',
       location: 'Liverpool',
       boxIsSelected: false,
      )
    );

    popularactivitys.add(
      PopularactivitysModel(
       name: 'Emirites Stadium',
       iconPath: 'assets/football/football 2.jpg',
       location: 'London',
       boxIsSelected: false,
      )
    );

    popularactivitys.add(
      PopularactivitysModel(
       name: 'Ethihad Stadium',
       iconPath: 'assets/football/football 3.jpeg',
       location: 'Manchester',
       boxIsSelected: false,
      )
    );

    return popularactivitys;
  }
}