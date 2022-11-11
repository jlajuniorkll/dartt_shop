import 'package:dartt_shop/src/models/cart_itemmodel.dart';
import 'package:dartt_shop/src/models/item_model.dart';
import 'package:dartt_shop/src/models/order_model.dart';
import 'package:dartt_shop/src/models/user_model.dart';

// Produtos
ItemModel apple = ItemModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
  imgUrl: 'assets/fruits/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  imgUrl: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  imgUrl: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  imgUrl: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  imgUrl: 'assets/fruits/papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

// Lista de produtos
List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

// Lista de categoria
List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais'
];

// Produtos do carrinho
List<CartItemModel> cartItem = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: guava, quantity: 5),
];

// Usuário
UserModel user = UserModel(
    name: "Jorge Luiz Alves Júnior",
    email: "jlajuniorkll@gmail.com",
    senha: "061229",
    cpf: "013240840655",
    phone: "54981557745");

// Pedidos
List<OrderModel> orders = [
  OrderModel(
      id: '1',
      createdDateTime: DateTime.parse('2023-06-08 11:00:10.456'),
      overdueDateTime: DateTime.parse('2023-06-08 11:00:10.352'),
      items: [
        CartItemModel(item: apple, quantity: 2),
        CartItemModel(item: mango, quantity: 4)
      ],
      status: 'pending_payment',
      copyAndPaste: 'copyAndPaste',
      doubleTotal: 0.0),
  OrderModel(
      id: '2',
      createdDateTime: DateTime.parse('2023-06-08 11:00:10.456'),
      overdueDateTime: DateTime.parse('2023-06-08 11:00:10.352'),
      items: [CartItemModel(item: grape, quantity: 2)],
      status: 'shipping',
      copyAndPaste: 'copyAndPaste',
      doubleTotal: 0.0),
];
