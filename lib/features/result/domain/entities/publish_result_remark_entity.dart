import './result_entity.dart';

enum ResultRemarks {
  elected('Elected');

  const ResultRemarks(this._value);
  final String _value;
  String get get => _value;
}

mixin PublishResultRemarkEntity on ResultEntity {
  @override
  bool get isElected => (remark?.compareTo(ResultRemarks.elected.get) ?? 1) == 0;
}
