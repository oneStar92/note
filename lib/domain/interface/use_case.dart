import 'package:note/common/result.dart';

abstract class UseCase<T, U> {
  Future<Result<U>> execute({required T query});
}