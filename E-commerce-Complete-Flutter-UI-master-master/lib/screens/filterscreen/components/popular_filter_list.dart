class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Siyah',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Beyaz',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Mavi',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Kırmızı',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Pembe',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Mor',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Sarı',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Yeşil',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'Hepsi',
      isSelected: true,
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
