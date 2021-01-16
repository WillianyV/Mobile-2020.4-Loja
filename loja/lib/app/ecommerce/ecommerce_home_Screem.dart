import 'package:flutter/material.dart';
import 'package:loja/routes/AppRoutes.dart';
import 'package:loja/shared/Constants.dart';

class ECommecerHome extends StatefulWidget {
  @override
  _ECommecerHome createState() => _ECommecerHome();
}

class _ECommecerHome extends State<ECommecerHome> {
  //User user; vai ser loja

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
      onPressed: () {},
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
                  (Icon(Icons.account_circle, size: 30, color: whiteColor)),
              accountName: Text('Williany'), //loja.name
              accountEmail: Text('williany.veras@gmail.com'), //loja.email
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Início'),
              subtitle: Text('Tela de início'),
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.ECOMMECER_HOME),
            ),
            ListTile(
              leading: Icon(Icons.business_outlined),
              title: Text('Loja'),
              subtitle: Text('Minha conta'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Sair'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.LOGIN),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Página do Administrador'),
      ),
      body: _body(),
    );
  }
}
