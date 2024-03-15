class CountryLanguage {
  final String name;
  final String languageNameInEnglish;
  final String code; 
  final String flag; 

  CountryLanguage({
    required this.name,
    required this.languageNameInEnglish,
    required this.code,
    required this.flag,
  });

  static List<CountryLanguage> languageList() {
    return [
      CountryLanguage(
        name: "United States",
        languageNameInEnglish: "English",
        code: "en",
        flag: 'flags/us.png',
      ),
      CountryLanguage(
        name: "Canada",
        languageNameInEnglish: "English",
        code: "en", 
        flag: 'flags/ca.png',
    ),
    
    ];
  }
}