
class Pair<L, R> {
  const Pair(this.left, this.right);

  final L left;
  final R right;

  @override
  String toString() => 'Pair[$left, $right]';
}