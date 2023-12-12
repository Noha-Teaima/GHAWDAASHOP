import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/ecotextfield.dart';
import '../../../widgets/header.dart';
import '../../core/components/component_screen.dart';
import '../payment/cubit/cubit.dart';
import '../payment/cubit/state.dart';
import '../payment/toggle_screen.dart';
import '../widgets/default_button.dart';
import '../widgets/default_textformfiled.dart';
import '../widgets/show_snack.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PaymentCubit()..getAuthToken(),
        child: Scaffold(
          appBar: PreferredSize(
              child: Header(
                title: "Payment Integration",
              ),
              preferredSize: Size.fromHeight(7.h)),
          body: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('cart').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                final res = snapshot.data!.docs;
                dynamic sum = 0;
                for (int i = 0; i < res.length; i++) {
                  sum += res[i]['price'];
                }

                return BlocConsumer<PaymentCubit, PaymentStates>(
                  listener: (context, state) {
                    if (state is PaymentRequestTokenSuccessStates) {
                      showSnackBar(
                        context: context,
                        text: 'Success get final token',
                        color: Colors.green,
                      );
                      navigateTo(context, const ToggleScreen());
                    }
                  },
                  builder: (context, state) {
                    var cubit = PaymentCubit.get(context);
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'lib/images/Delivery.png',
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.42,
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: DefaultTextFormFiled(
                                          controller: firstNameController,
                                          type: TextInputType.name,
                                          hintText: 'First name',
                                          prefix: Icons.person,
                                          validate: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your first name!';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: DefaultTextFormFiled(
                                          controller: lastNameController,
                                          validate: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your last name !';
                                            }
                                            return null;
                                          },
                                          type: TextInputType.name,
                                          hintText: 'Last name',
                                          prefix: Icons.person,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  DefaultTextFormFiled(
                                    controller: emailController,
                                    validate: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your email  !';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.emailAddress,
                                    hintText: 'Email',
                                    prefix: Icons.email,
                                  ),
                                  const SizedBox(height: 10),
                                  DefaultTextFormFiled(
                                    controller: phoneController,
                                    validate: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your phone !';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.number,
                                    hintText: 'Phone',
                                    prefix: Icons.phone,
                                  ),
                                  const SizedBox(height: 10),
                                  DefaultTextFormFiled(
                                    controller: priceController,
                                    validate: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your price !';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.number,
                                    hintText: '$sum',
                                    prefix: Icons.monetization_on,
                                  ),
                                  const SizedBox(height: 20),
                                  DefaultButton(
                                    buttonWidget: state
                                            is! PaymentRequestTokenLoadingStates
                                        ? const Text(
                                            'Register',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              letterSpacing: 1.6,
                                            ),
                                          )
                                        : const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                    function: () {
                                      if (_formKey.currentState!.validate()) {
                                        cubit.getOrderRegistrationID(
                                          firstName: firstNameController.text,
                                          lastName: lastNameController.text,
                                          email: emailController.text,
                                          phone: phoneController.text,
                                          price: priceController.text,
                                        );
                                      }
                                    },
                                    width: MediaQuery.of(context).size.width,
                                    radius: 10.0,
                                    backgroundColor: Colors.green,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
        ));
  }
}
