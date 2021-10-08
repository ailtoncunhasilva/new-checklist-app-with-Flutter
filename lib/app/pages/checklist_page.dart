import 'package:check_list/app/core/const.dart';
import 'package:check_list/app/shared/widgets/avatar_widget.dart';
import 'package:check_list/app/shared/widgets/personalized_title_widget.dart';
import 'package:check_list/app/shared/widgets/textfield_widget.dart';
import 'package:check_list/app/shared/widgets/textfield_widget_template.dart';
import 'package:flutter/material.dart';

class ChecklistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: AvatarWidget(image: 'images/fachadaoficina.jpg'),
        title: Text('Centro Automotivo ServiCar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          PersonalizedTitleWidget(
            title: 'Checklist',
            icon: Icons.list,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: kSpacing / 2, vertical: kSpacing / 2),
              child: Column(
                children: [
                  _buildFormClientData(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormClientData() {
    return Column(
      children: [
        TextFieldWidget(
          outlineInputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          labelText: 'Nome do cliente',
        ),
        Padding(
          padding: const EdgeInsets.only(top: kSpacing / 2),
          child: TextFieldWidgetTemplate(
            widthDuble: 0.6,
            widgetChildFirst: TextFieldWidget(
              outlineInputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              labelText: 'CPF',
            ),
            widgetChildSecond: TextFieldWidget(
              outlineInputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              labelText: 'RG',
            ),
          ),
        ),
      ],
    );
  }
}
