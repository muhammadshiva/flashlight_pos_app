import 'package:easy_stepper/easy_stepper.dart';
import 'package:flashlight_pos_app/core/components/buttons.dart';
import 'package:flashlight_pos_app/core/constant/routes/route_constants.dart';
import 'package:flashlight_pos_app/core/constant/styles/colors.dart';
import 'package:flashlight_pos_app/core/constant/styles/fonts.dart';
import 'package:flashlight_pos_app/presentation/customer/bloc/customer_bloc.dart';
import 'package:flashlight_pos_app/presentation/customer/components/forms/customer_data_form.dart';
import 'package:flashlight_pos_app/presentation/customer/components/forms/customer_vehicle_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerFormPage extends StatefulWidget {
  const CustomerFormPage({super.key});

  @override
  State<CustomerFormPage> createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends State<CustomerFormPage> {
  final formKey = GlobalKey<FormState>();
  late final FocusNode nameNode;
  late final FocusNode phoneNode;
  late final FocusNode licensePlateNode;
  late final TextEditingController nameCtrl;
  late final TextEditingController phoneCtrl;
  late final TextEditingController licensePlateCrtl;

  String selectedEngineCapacity = '';
  String selectedBrand = '';
  String selectedModel = '';
  int activeStep = 0;

  @override
  void initState() {
    nameNode = FocusNode();
    phoneNode = FocusNode();
    licensePlateNode = FocusNode();
    nameCtrl = TextEditingController();
    phoneCtrl = TextEditingController();
    licensePlateCrtl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameNode.dispose();
    phoneNode.dispose();
    licensePlateNode.dispose();
    nameCtrl.dispose();
    phoneCtrl.dispose();
    licensePlateCrtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerBloc, CustomerState>(
      listenWhen: (p, c) => p.licensePlate != c.licensePlate,
      listener: (context, state) {
        Navigator.pushNamed(
          context,
          RouteConstants.dashboard,
        );
      },
      child: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.sizeOf(context).height,
                padding:
                    EdgeInsets.symmetric(horizontal: 200.w, vertical: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EasyStepper(
                      activeStep: activeStep,
                      lineStyle: LineStyle(
                        lineLength: 100.w,
                        lineType: LineType.dotted,
                      ),
                      activeStepTextColor: AppColors.primary,
                      finishedStepTextColor: Colors.grey,
                      finishedStepBackgroundColor: Colors.grey,
                      activeStepBackgroundColor: Colors.orange,
                      defaultStepBorderType: BorderType.normal,
                      showLoadingAnimation: false,
                      stepRadius: 20,
                      internalPadding: 50.w,
                      steps: [
                        EasyStep(
                          enabled: false,
                          icon: Icon(
                            Icons.person,
                            color: activeStep == 0 ? Colors.white : Colors.grey,
                          ),
                          customTitle: Text(
                            'Customer Data',
                            textAlign: TextAlign.center,
                            style: AppTextStyle.poppins.copyWith(
                              color: activeStep == 0
                                  ? AppColors.primary
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        EasyStep(
                          enabled: false,
                          icon: Icon(
                            Icons.motorcycle_outlined,
                            color: activeStep == 1 ? Colors.white : Colors.grey,
                          ),
                          customTitle: Text(
                            'Vehicle Data',
                            textAlign: TextAlign.center,
                            style: AppTextStyle.poppins.copyWith(
                              color: activeStep == 1
                                  ? AppColors.primary
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                      onStepReached: (index) {
                        setState(() {
                          activeStep = index;
                        });
                      },
                    ),
                    Form(
                      key: formKey,
                      child: activeStep == 0
                          ? CustomerDataForm(
                              nameNode: nameNode,
                              phoneNode: phoneNode,
                              nameCtrl: nameCtrl,
                              phoneCtrl: phoneCtrl,
                            )
                          : CustomerVehicleForm(
                              engineCapacity: (value) {
                                setState(() {
                                  selectedEngineCapacity = value ?? '';
                                });
                              },
                              brand: (value) {
                                setState(() {
                                  selectedBrand = value ?? '';
                                });
                              },
                              model: (value) {
                                setState(() {
                                  selectedModel = value ?? '';
                                });
                              },
                              licensePlateNode: licensePlateNode,
                              licensePlateCtrl: licensePlateCrtl,
                            ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (activeStep > 0)
                          Button.outlined(
                            borderColor: AppColors.accentOrange,
                            textColor: AppColors.accentOrange,
                            color: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                activeStep--;
                              });
                            },
                            label: 'Back',
                            width: 150.w,
                          ),
                        SizedBox(width: 20.w),
                        Button.filled(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              if (activeStep < 1) {
                                context.read<CustomerBloc>().add(
                                      CustomerEvent.customerDataChanged(
                                        nameCtrl.text,
                                        phoneCtrl.text,
                                      ),
                                    );
                                setState(() {
                                  activeStep++;
                                });
                              } else {
                                context.read<CustomerBloc>().add(
                                      CustomerEvent.vehicleDataChanged(
                                        selectedEngineCapacity,
                                        selectedBrand,
                                        selectedModel,
                                        licensePlateCrtl.text,
                                      ),
                                    );
                              }
                            }
                          },
                          label: activeStep < 1 ? 'Next' : 'Submit',
                          width: 150.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
