import 'package:loja/app/user/user_model.dart';

const DUMMY_USERS = {
  '1': const User(
      id: '1',
      name: 'administrator',
      nick: 'adm',
      email: 'adm.e-commerce@gmail.com',
      password: 'adm123',
      cpf: '512.287.030-60',
      phone: '(87)9 9999-9999',
      avatarUrl:
          'https://cdn.pixabay.com/photo/2016/08/20/05/36/avatar-1606914_960_720.png'),
  '2': const User(
      id: '2',
      name: 'manager',
      nick: 'mng',
      email: 'mng.e-commerce@gmail.com',
      password: 'mng123',
      cpf: '588.382.170-76',
      phone: '(87)9 9999-9991',
      avatarUrl:
          'https://cdn.pixabay.com/photo/2016/11/01/21/11/avatar-1789663_960_720.png'),
};
