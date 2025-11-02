// list_example.dart

void main() {
  // print("=== LIST ƏMƏLİYYATLARI NÜMUNƏSİ ===");

  // // 1. List yaratmaq
  List<String> names = ["Shahin", "SUBHAN", "ali"];
  List<String> names2 = ["Elekber", "Mehemmed"];
  Set<String> names3 = {"Shahin", "Subhan", "Ali"};

  names.addAll(names3.toList());

  print("İlkin list: $names");

  // 2. Element əlavə etmək
  names.add("Nigar");
  print("Add sonra: $names");

  // 3. Birdən çox element əlavə etmək

  names.addAll(["Leyla", "Emin"]);
  print("AddAll sonra: $names");
  print(names);

  // 4. İndekslə element daxil etmək

  names.insert(0, "Aysel");
  print("Insert sonra: $names");

  // 5. Birdən çox elementi müəyyən yerə əlavə etmək
  names.insertAll(3, ["Tural", "Rashad"]);
  print("InsertAll sonra: $names");

  // // 6. Element silmək
  // names.remove("Ali");
  // print("Remove sonra: $names");

  // // 7. İndeks üzrə silmək
  // names.removeAt(1);
  // print("RemoveAt(0) sonra: $names");

  // // 8. Sonuncu elementi silmək
  // names.removeLast();
  // print("RemoveLast sonra: $names");

  // // 9. Aralıq silmək
  // names.removeRange(0, 2);
  // print("RemoveRange(0,2) sonra: $names");

  // // 10. Elementin olub-olmadığını yoxlamaq
  // print("‘Nigar’ var? ${names.contains("Nigar")}");

  // // 11. Elementin indeksini tapmaq
  // print("‘Leyla’ indeks: ${names.indexOf("Leyla")}");
  // names.removeAt(3);
  // print("RemoveAt(3) sonra: $names");

  // // 12. List-in uzunluğu
  print("Uzunluq: ${names.length}");

  // 13. List-i sıralamaq
  // names.sort();
  // print("Sort sonrası: $names");

  // // 14. Əks sıra
  print("Reversed: ${names.reversed.toList()}");

  // // 15. Filter – şərtlə elementlər
  var filtered = names.where((n) => n.startsWith("S")).toList();
  print("‘S’ ilə başlayanlar: $filtered");
  // print("RemoveAt(0) sonra: $names");

  // // 16. Map – elementləri dəyişmək
  var upperNames = names.map((n) => n.toUpperCase()).toList();
  print("Böyük hərflə: $upperNames");

  // // 17. Join – elementləri birləşdirmək
  print("Join ilə: ${names.join(':')}");

  // // 18. Sublist – hissə götürmək
  // if (names.length > 2) {
  //   print("Sublist(0,2): ${names.sublist(0, 3)}");
  // }

  // 19. Any və Every
  print("Any(S ilə başlayan)? ${names.any((n) => n.startsWith('S'))}");
  print("Every(S ilə başlayan)? ${names.every((n) => n.startsWith('S'))}");

  // // 20. ToSet – təkrarlananları silmək
  // List<String> repeated = ["Shahin", "Shahin", "Subhan"];
  // print("Təkrarlı: $repeated → ToSet: ${repeated.toSet().toList()}");

  // print("\n=== List əməliyyatları bitdi ===");
}
