class Transaction {
  int id;
  String date;
  int nominal;
  String description;
  String category;

  Transaction({
    required this.id,
    required this.date,
    required this.nominal,
    required this.description,
    required this.category,
  });
}

var transactionList = [
  Transaction(
    id: 1,
    date: '15-09-2022',
    nominal: 200000,
    description: 'Submit Sinta-2',
    category: 'expanse',
  ),
  Transaction(
    id: 2,
    date: '11-10-2022',
    nominal: 450000,
    description: 'Joki Web',
    category: 'income',
  ),
  Transaction(
    id: 3,
    date: '25-10-2022',
    nominal: 24000,
    description: 'Beli kopi',
    category: 'expanse',
  ),
  Transaction(
    id: 4,
    date: '15-09-2022',
    nominal: 200000,
    description: 'Submit Sinta-2',
    category: 'expanse',
  ),
  Transaction(
    id: 5,
    date: '11-10-2022',
    nominal: 450000,
    description: 'Joki Web',
    category: 'income',
  ),
  Transaction(
    id: 6,
    date: '25-10-2022',
    nominal: 24000,
    description: 'Beli kopi',
    category: 'expanse',
  ),
  Transaction(
    id: 7,
    date: '15-09-2022',
    nominal: 200000,
    description: 'Submit Sinta-2',
    category: 'expanse',
  ),
  Transaction(
    id: 8,
    date: '11-10-2022',
    nominal: 450000,
    description: 'Joki Web',
    category: 'income',
  ),
  Transaction(
    id: 9,
    date: '25-10-2022',
    nominal: 24000,
    description: 'Beli kopi',
    category: 'expanse',
  ),
  Transaction(
    id: 10,
    date: '11-10-2022',
    nominal: 450000,
    description: 'Joki Web',
    category: 'income',
  ),
  Transaction(
    id: 11,
    date: '25-10-2022',
    nominal: 210000,
    description: 'Beli jaker',
    category: 'expanse',
  ),
];
