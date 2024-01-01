class Coffees {
  final List<dynamic> coffees;

  static final List coffeeCategories = [
    ["Cappuccino", "https://images.unsplash.com/photo-1572442388796-11668a67e53d?q=80&w=2135&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"],
    ["Black", "https://images.unsplash.com/photo-1621267860478-dbdd589372db?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"],
    ["Latte", "https://images.unsplash.com/photo-1620360289473-bfafadc16c57?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"],
    ["Tea", "https://images.unsplash.com/photo-1594631252845-29fc4cc8cde9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]
  ];
  Coffees({required this.coffees});

  factory Coffees.fromJson(List jsonData){
    return Coffees(coffees: jsonData);
  }
}