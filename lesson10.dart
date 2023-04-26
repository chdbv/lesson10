import 'dart:math';

//2) Написать две дополнительные функции для проверки количества шагов,
//за которое компьютер угадал число. Компьютер играет сам с собой и возвращает количество шагов.
int randomSearchSteps(int target) {
  Random rand = new Random();
  int guess;
  int steps = 0;

  do {
    guess = rand.nextInt(101);
    steps++;
  } while (guess != target);

  return steps;
}

int binarySearchSteps(int target) {
  int low = 0;
  int high = 100;
  int mid;
  int steps = 0;

  while (low <= high) {
    mid = (low + high) ~/ 2;
    steps++;
    if (mid == target) {
      return steps;
    } else if (mid < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void main() {
  int target = 42;
  int randomSteps = randomSearchSteps(target);
  int binarySteps = binarySearchSteps(target);
  print(
      "Random search took $randomSteps steps."); // выводим количество шагов для рандомного поиска
  print(
      "Binary search took $binarySteps steps."); // выводим количество шагов для бинарного поиска
}

//1) Написать функцию рандомного поиска.
//(Пользователь загадывает число, программа выдает ему число от 0 до 100 рандомным образом и так до тех,
// пор пока пользователь не скажет, что число верно. Алгоритм работы схож с бинарным поиском).
