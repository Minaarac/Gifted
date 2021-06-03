class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Spor, dans',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Müzik',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'El işi',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Kitap okumak',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Oyun',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Seyehat Etmek',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Diğer',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'Hepsi',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Kadın',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Erkek',
      isSelected: true,
    ),
  ];
}
