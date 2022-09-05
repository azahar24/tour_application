import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:tour_application/business_logics/form.dart';

import '../../const/app_colors.dart';
import '../styles/styles.dart';
import '../widgets/violatebutton.dart';

class UserForm extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  Rx<TextEditingController> _dobController = TextEditingController().obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  String? dob;
  String gender = "Male";



  _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );

    if (selected != null && selected != selectedDate) {
      dob = "${selected.day} - ${selected.month} - ${selected.year}";
      _dobController.value.text = dob!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tell Us More About You.",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.violetColor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "We will not share your information\n outside this application.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                FormFild(_nameController, TextInputType.name, 'name'),
                FormFild(_phoneController, TextInputType.number, 'number'),
                FormFild(_addressController, TextInputType.text, 'address'),
                Obx(
                  () => TextFormField(
                    controller: _dobController.value,
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: 'Date of birth',
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () => _selectDate(context),
                            icon: Icon(Icons.calendar_month_rounded))),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: [
                    'Male',
                    'Female',
                  ],
                  onToggle: (index) {
                    if (index == 0) {
                      gender = "Male";
                    } else {
                      gender = "Female";
                    }
                    print('switched to: $index');
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                ViolateButton(
                  text: 'Submit',
                  onAction: () => UsersInfo().sendFromDataToDB(
                      _nameController.text,
                      int.parse(_phoneController.text),
                      _addressController.text,
                      dob!,
                      gender),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget FormFild(controller, inpuType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inpuType,
    decoration: AppStyle().textFieldDecoration(hint),
  );
}
