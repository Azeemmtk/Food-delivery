List<Map> Data = [];

void adddata(
    {required String image,
    required String name,
    required int qty,
    required String rate,
    required String pmethod,
    required double amount}) {
  Map<String, dynamic> map = {
    'image': image,
    'Name': name,
    'Rating': rate,
    'qty': qty,
    'Pyment_method': pmethod,
    'Amount': amount,
  };
  Data.add(map);
  print(Data);
}

void deletedata({required int indux}) {
  Data.removeAt(indux);
}
