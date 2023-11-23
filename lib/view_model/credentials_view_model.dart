class CredentialsViewModel {
  int count = 0;

  CredentialsViewModel({this.count = 0});

  CredentialsViewModel copyWith({int? count}) {
    return CredentialsViewModel()..count = count ?? this.count;
  }
}
