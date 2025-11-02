void main() {
  // print("=== SET ƏMƏLİYYATLARI NÜMUNƏSİ ===");

  // 1. Set yaratmaq
  Set<String> names = {"Shahin", "Subhan", "Ali"};
  print("İlkin set: $names");

  // // 2. Element əlavə etmək
  names.add("Leyla");
  print("Add sonra: $names");

  // // 3. Birdən çox element əlavə etmək
  names.addAll({
    "Leyla",
    "Emin",
    "Shahin",
  }); // 'Shahin' artıq var, əlavə olunmaz
  print("AddAll sonra: $names");

  // // 4. Element silmək
  names.remove("Ali");
  print("Remove sonra: $names");

  // // 5. Set boşdurmu?
  print("Boşdur? ${names.isEmpty}");
  print("Boşdur? ${names.isNotEmpty}");

  // // 6. Elementin olub-olmadığını yoxlamaq
  print("‘Subhan’ var? ${names.contains("Subhan")}");

  // // 7. Set uzunluğu
  print("Set uzunluğu: ${names.length}");

  // // 8. ToList – set-i listə çevirmək
  List<String> namesList = names.toList();
  print("List formatında: $namesList");

  // // 9. Map – elementləri dəyişmək
  var upper = names.map((n) => n.toUpperCase()).toSet();
  print("Böyük hərflə: $upper");

  // // 10. Where – filtrasiya
  // var filtered = names.where((n) => n.startsWith("S")).toSet();
  // print("‘S’ ilə başlayanlar: $filtered");

  // // 11. Union – birləşdirmə
  Set<String> others = {"Emin", "Rashad", "Tural"};
  print("Union: ${names.union(others)}");

  // // 12. Intersection – ortaq elementlər
  print("Intersection: ${names.intersection(others)}");

  // // 13. Difference – fərqli elementlər
  print("Difference: ${names.difference(others)}");

  // // 14. Clear – təmizləmək
  Set<String> temp = {"Shahin", "Subhan"};
  temp.clear();
  print("Clear sonrası: $temp");

  // print("\n=== Set əməliyyatları bitdi ===");
}
