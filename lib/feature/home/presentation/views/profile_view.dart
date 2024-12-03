import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/feature/home/presentation/controller/user_cubit/user_cubit.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/build_custom_app_bar.dart';
import '../../../../core/widgets/custom_snak_bar.dart';
import 'widgets/user_profile_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCustomAppBar(context, 'Profile'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetUserProfileFailure) {
              return Center(
                child: Text(state.errorMessage),
              );
            }
            if (state is GetUserProfileSuccess) {
              return Column(
                children: [
                  UserProfileCard(
                    title: 'NAME',
                    subtitle: state.userEntity.name,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  UserProfileCard(
                    title: 'Phone',
                    subtitle: state.userEntity.phoneNumber,
                    trailing: IconButton(
                        onPressed: () async {
                          final textToCopy = state.userEntity.phoneNumber;
                          if (textToCopy.isNotEmpty) {
                            try {
                              await Clipboard.setData(
                                  ClipboardData(text: textToCopy));
                              successSnackBar('Copied to clipboard', context);
                            } catch (e) {
                              errorSnackBar(e.toString(), context);
                            }
                          }
                        },
                        icon: SvgPicture.asset('assets/images/copy.svg')),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  UserProfileCard(
                    title: 'Level',
                    subtitle: state.userEntity.level,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  UserProfileCard(
                    title: 'Years of experience',
                    subtitle: state.userEntity.yearsOfExperience.toString(),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  UserProfileCard(
                    title: 'Location',
                    subtitle: state.userEntity.location,
                  ),
                ],
              );
            } else {
              var primaryColor;
              return Center(
                  child: CircularProgressIndicator(color: primaryColor));
            }
          },
        ),
      ),
    );
  }
}
