class CredentialsViewModel {
  int count = 0;
  bool isLoading = false;

  CredentialsViewModel({this.count = 0});

  CredentialsViewModel copyWith({int? count, bool? isLoading}) {
    return CredentialsViewModel()
      ..isLoading = isLoading ?? this.isLoading
      ..count = count ?? this.count;
  }
}
