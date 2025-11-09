// loops_example.dart
// Dövrlər mövzusu üçün uzun nümunə faylı

void main() {
  // print('===== FOR DÖVRÜ NÜMUNƏLƏRİ =====');
  // forSimple();
  // forEvenNumbers();
  // forSumExample();
  // forReverse();
  // forNested();

  // print('\n===== WHILE DÖVRÜ NÜMUNƏLƏRİ =====');
  // whileSimple();
  // whileBalance();
  // whileBreakContinue();

  // print('\n===== DO-WHILE DÖVRÜ NÜMUNƏLƏRİ =====');
  // doWhileAtLeastOnce();
  // doWhileCountdown();

  print('\n===== FOREACH DÖVRÜ NÜMUNƏLƏRİ =====');
  // forEachListExample();
  // forEachSquares();
  // forEachMapExample();
  forEachFindMax();
}

///////////////////////
//  FOR DÖVRÜ NÜMUNƏLƏRİ
///////////////////////

// 1) Sadə for — 1-dən 5-ə qədər say
void forSimple() {
  print('\n[forSimple] 1-dən 5-ə qədər say:');
  for (int i = 1; i <= 5; i++) {
    print('Sayı: $i');
  }
}

// 2) Cüt ədədlər — 2, 4, 6, 8, 10
void forEvenNumbers() {
  print('\n[forEvenNumbers] 1-dən 10-a qədər cüt ədədlər:');
  for (int i = 0; i <= 10; i += 2) {
    print('Cüt ədəd: $i');
  }
}

// 3) 1-dən n-ə qədər ədədlərin cəmini tapmaq
void forSumExample() {
  print('\n[forSumExample] 1-dən 5-ə qədər ədədlərin cəmi:');
  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    sum += i; // sum = sum + i
  }
  print('Cəm: $sum');
}

// 4) Geri sayma — 5-dən 1-ə
void forReverse() {
  print('\n[forReverse] 5-dən 1-ə qədər geri sayım:');
  for (int i = 5; i >= 1; i--) {
    print('Geri sayım: $i');
  }
}

// 5) Daxili for (nested loop) — sətir və sütun çapı
void forNested() {
  print('\n[forNested] Nested for dövrü nümunəsi:');
  for (int i = 1; i <= 3; i++) {
    // i ==1
    for (int j = 1; j <= 3; j++) {
      // j ==2
      // i = 1, j = 2
      print('i = $i, j = $j');
    }
  }

  // Kiçik “ulduz” pattern nümunəsi
  print('\n[forNested] Kiçik ulduz pattern nümunəsi:');
  // int height = 4;
  for (int row = 1; row <= 4; row++) {
    String line = 'row: $row ';
    for (int col = 1; col <= row; col++) {
      line += '* ';
    }
    print(line);
  }
}

///////////////////////
//  WHILE DÖVRÜ NÜMUNƏLƏRİ
///////////////////////

// 1) Sadə while — 1-dən 5-ə qədər say
void whileSimple() {
  print('\n[whileSimple] 1-dən 5-ə qədər say:');
  int i = 1;
  while (i <= 5) {
    print('While dövrü: $i');
    i++; // i = i + 1
  }
}

// 2) Balans 0 olana qədər pul azaldan nümunə
void whileBalance() {
  print('\n[whileBalance] Balans 0 olana qədər azaldırıq:');
  int balance = 100;

  while (balance > 0) {
    balance -= 30; // balance = balance - 30
    print('Balans: $balance AZN');
  }

  print('Balans artıq 0-dır və ya 0-dan kiçikdir.');
}

// 3) while + break + continue nümunəsi
void whileBreakContinue() {
  print('\n[whileBreakContinue] break və continue nümunəsi:');
  int i = 0;

  while (i < 10) {
    i++;

    // Əgər i == 3-dürsə, bu iterasiyanı ötür (continue)
    if (i >= 3 && i <= 5) {
      // print('3-ü ötürürük (continue işlədi)');
      continue;
    }

    print('i = $i');

    // Əgər i == 5-dirsə, dövrü tam dayandır (break)
    if (i == 10) {
      print('10-a çatdıq, dövr dayanır (break).');
      // break;
    }
  }
}

////////////////////////
//  DO-WHILE DÖVRÜ NÜMUNƏLƏRİ
////////////////////////

// 1) Şərt ilk başda yalnış olsa belə, ən azı 1 dəfə işləyən nümunə
void doWhileAtLeastOnce() {
  print('\n[doWhileAtLeastOnce] Şərt yalnış olsa da, 1 dəfə işləyir:');

  int i = 10; // Şərt olaraq deyək ki, i < 5 olmalıdır, amma i = 10-dur.

  do {
    print('Do-while içində i dəyəri: $i');
    i++;
  } while (i < 5); // İlk yoxlama dövr işləyəndən sonra aparılır
}

// 2) Do-while ilə sadə geri sayma
void doWhileCountdown() {
  print('\n[doWhileCountdown] Do-while ilə geri sayım:');

  int count = 3;

  do {
    print('Sayım: $count');
    count--;
  } while (count > 0);

  print('Sayım bitdi.');
}

///////////////////////
//  FOREACH DÖVRÜ NÜMUNƏLƏRİ
///////////////////////

// 1) List-dəki adları çap etmək
void forEachListExample() {
  print('\n[forEachListExample] List üzərində forEach:');

  List<String> adlar = ['Aysel', 'Tural', 'Emin', 'Nigar'];

  adlar.reversed.forEach((ad) {
    print('Salam, $ad!');
  });
}

// 2) Ədədlərin kvadratını hesablamaq
void forEachSquares() {
  print('\n[forEachSquares] Ədədlərin kvadratı:');

  List<int> ededler = [1, 2, 3, 4, 5];

  ededler.forEach((x) {
    int kvadrat = x * x;
    print('$x kvadratı: $kvadrat');
  });
}

// 3) Map üzərində forEach — məhsul və qiymət
void forEachMapExample() {
  print('\n[forEachMapExample] Map (meyvə → qiymət) üzərində forEach:');

  Map<String, int> qiymetler = {'Alma': 2, 'Banan': 3, 'Kivi': 5};

  qiymetler.forEach((meyve, qiymet) {
    print('$meyve qiyməti: $qiymet AZN');
  });
}

// 4) List-də ən böyük ədədi tapmaq
void forEachFindMax() {
  print('\n[forEachFindMax] List-də ən böyük ədədi tapmaq:');

  List<int> numbers = [12, 45, 3, 67, 23, 99, 14];
  int max = numbers.first; // başlanğıc üçün ilk elementi götürürük

  numbers.forEach((n) {
    print("Muqayisə edilir $n ile $max");
    if (n > max) {
      print('Yeni maksimum: $n');
      max = n;
    } else {
      print('Maksimum dəyişmir: $max');
    }
  });

  print('Ən böyük ədəd: $max');
}
