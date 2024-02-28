import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Shared/Constants/app_strings.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeStateSuccess());
    List<String> servicesTitles = [
    AppStrings.ourServicesTitle1,
    AppStrings.ourServicesTitle2,
    AppStrings.ourServicesTitle3,
    AppStrings.ourServicesTitle4,
    AppStrings.ourServicesTitle5,
    AppStrings.ourServicesTitle6,
    AppStrings.ourServicesTitle7,
    AppStrings.ourServicesTitle8,
    AppStrings.ourServicesTitle9,
  ];

}
