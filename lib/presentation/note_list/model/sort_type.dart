enum SortType {
  title,
  updateDate;

  @override
  String toString() {
    switch (this) {
      case SortType.title:
        return '제목';
      case SortType.updateDate:
        return '날짜';
    }
  }
}