import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants/image/image_constant.dart';
import '../core/constants/utils/size_utils.dart';
import '../core/theme/app_text_theme.dart';

// ignore: must_be_immutable
class CustomCountry extends StatelessWidget {
  CustomCountry({
    super.key,
    required this.country,
    required this.onTap,
  });

  Country country;

  Function(Country) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _openCountryPicker(context);
      },
      child: Row(
        children: [
          CountryPickerUtils.getDefaultFlagImage(
            country,
          ),
          const SizedBox(width: 3),
          Text(
            "+${country.phoneCode}",
            style: AppStyle.txtRobotoRegular14Gray400,
          ),
          const SizedBox(
            width: 3,
          ),
          SvgPicture.asset(ImageConstant.imgArrowdown),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: const TextStyle(fontSize: 14),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14),
          ),
          isSearchable: true,
          title: const Text('Select your phone code',
              style: TextStyle(fontSize: 14)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
