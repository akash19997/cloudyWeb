String pattern =
    r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';
RegExp regExp = RegExp(pattern);

fieldValidator(String? value, String? flagController) {
  if (flagController == 'welcome') {
    if (value!.isEmpty) {
      return "";
    }
  }
}
  //   } else if (value.length > 35) {
  //     return ValidationConstant.constValid;
  //   }
  // } else if (flagController == LoginConstants.constPassword) {
  //   if (value!.isEmpty) {
  //     return ValidationConstant.constRequired;
  //   } else if (value.length > 30) {
  //     return ValidationConstant.constValid;
  //   }
  // } else if (flagController == BottomSheetConstant.constApplyFor) {
  //   if (value!.isEmpty) {
  //     return ValidationConstant.constRequired;
  //   } else if (value.length > 30) {
  //     return ValidationConstant.constValid;
  //   }
  // } else if (flagController == BottomSheetConstant.constStartDate) {
  //   if (value!.isEmpty) {
  //     return ValidationConstant.constRequired;
  //   } else if (value.length > 30) {
  //     return ValidationConstant.constValid;
  //   }
  // } else if (flagController == BottomSheetConstant.constEndDate) {
  //   if (value!.isEmpty) {
  //     return ValidationConstant.constRequired;
  //   } else if (value.length > 30) {
  //     return ValidationConstant.constValid;
  //   }
  // } else if (flagController == BottomSheetConstant.constReason) {
  //   if (value!.isEmpty) {
  //     return ValidationConstant.constRequired;
  //   } else if (value.length > 30) {
  //     return ValidationConstant.constValid;
  //   }
  // } else if (flagController == SettingsConstant.connectionUrl) {
  //   if (value!.isEmpty) {
  //     return ValidationConstant.constRequired;
  //   } else if (!regExp.hasMatch(value)) {
  //     return ValidationConstant.constValidUrl;
  //   }
  // }


// String? validatePasswordLogin(String? value) {
//   if (value!.isEmpty) {
//     return ValidationConstant.constRequired;
//   } else if (value.length > 30) {
//     return ValidationConstant.constValid;
//   }
//   return null;
// }

// String? validDropDown(selectedValue) {
//   if (selectedValue == null) {
//     return ValidationConstant.constRequired;
//   } else {
//     return null;
//   }
// }
