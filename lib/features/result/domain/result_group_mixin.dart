import 'entities/result_entity.dart';

enum ResultGroup {
  president('President'),
  boardOfDirectory('Board Of Director'),
  other('Other');

  const ResultGroup(this._value);
  final String _value;

  String get get => _value;
}

mixin ResultGroupMixin on ResultEntity {
  bool get isPresident => group?.contains(ResultGroup.president.get) ?? false;
}
