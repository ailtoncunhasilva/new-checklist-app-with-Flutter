import 'package:check_list/app/core/const.dart';
import 'package:check_list/app/pages/checklist_page.dart';
import 'package:check_list/app/shared/widgets/elevated_button_widget.dart';
import 'package:check_list/app/shared/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            elevation: 8,
            margin: const EdgeInsets.symmetric(horizontal: kSpacing * 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kSpacing * 2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacing),
              child: Column(
                children: [
                  _buildLogoImage(),
                  _buildTextFieldNameUser(),
                  _buildTextFieldPasswordUser(),
                  _buildElevatedButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoImage() {
    return Image.asset('images/logotipopng.png');
  }

  Widget _buildTextFieldNameUser() {//this widget receive a String as user
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFieldWidget(
        icon: Icons.person,
        labelText: 'Digite seu usuário',
      ),
    );
  }

  Widget _buildTextFieldPasswordUser() {//this widget receive a String as password
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFieldWidget(
        icon: Icons.password,
        labelText: 'Digite sua senha',
      ),
    );
  }

  Widget _buildElevatedButton(BuildContext context) {//this widget create a login button
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButtonWidget(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ChecklistPage()),
          );
        },
        text: 'Entrar',
      ),
    );
  }
}
