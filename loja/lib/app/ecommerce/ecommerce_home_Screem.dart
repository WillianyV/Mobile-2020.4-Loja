import 'package:flutter/material.dart';
import 'package:loja/components/drawer_loja.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';
import 'package:loja/shared/repository_shared.dart';

class ECommecerHome extends StatefulWidget {
  @override
  _ECommecerHome createState() => _ECommecerHome();
}

class _ECommecerHome extends State<ECommecerHome> {
  //User user; vai ser loja
  RepositoryShared repositoryShared;

  void initState() {
    super.initState();
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            productsFlatButton(),
            Container(height: 20),
            userFlatButton(),
            Container(height: 20),
            salesFlatButton(),
          ],
        ),
      ),
    );
  }

  FlatButton salesFlatButton() {
    return FlatButton(
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: btnColor,
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Icons.business_center_outlined,
            color: primaryLightColor,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              'Vendas',
              style: TextStyle(color: textColor),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: greyColor,
          ),
        ],
      ),
    );
  }

  FlatButton userFlatButton() {
    return FlatButton(
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: btnColor,
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            color: primaryLightColor,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              'Usuários',
              style: TextStyle(color: textColor),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: greyColor,
          ),
        ],
      ),
    );
  }

  FlatButton productsFlatButton() {
    return FlatButton(
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: btnColor,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.PRODUCT_LIST);
      },
      child: Row(
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            color: primaryLightColor,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              'Produtos',
              style: TextStyle(color: textColor),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: greyColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerLoja(),
      appBar: AppBar(
        title: Text('Página do Administrador'),
      ),
      body: _body(),
    );
  }
}
