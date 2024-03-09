import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:captain_iraq/shared/custom_header.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/action_dialog.dart';
import 'package:captain_iraq/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di.dart';
import '../../logic/main_view/main_view_bloc.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/colors.dart';
import '../accounts_history/accounts_history_view.dart';
import '../auth/change_pass/change_pass_view.dart';
import '../free_trip/free_trip_view.dart';
import '../reservation/reservation_history.dart';
import '../settings/settings_view.dart';
import '../wallet/add_money.dart';
import '../wallet/fav_payment.dart';
import '../wallet/wallet_view.dart';

class MainNavPages extends StatelessWidget {
  const MainNavPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainViewBloc()),
        BlocProvider(
          create: (context) => Di.getLocations..get(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => Di.getBanner..get(),
          lazy: false,
        ),
      ],
      child: BlocBuilder<MainViewBloc, MainViewState>(
        builder: (context, state) {
          final mainBloc = MainViewBloc.of(context);
          return WillPopScope(
            onWillPop: () async {
              ActionDialog(
                title: Tr.get.exit_question,
                approveAction: Tr.get.yes_message,
                cancelAction: Tr.get.no_message,
                onApproveClick: () {
                  Navigator.pop(context);
                  SystemNavigator.pop();
                },
                onCancelClick: () {
                  Navigator.pop(context);
                },
              ).show<void>(context);
              return false;
            },
            child: Scaffold(
              backgroundColor: KColors.mainColor,
              extendBody: true,
              appBar: CustomHeader(
                showClientImage: mainBloc.showClientImage,
                showClientName: mainBloc.showClientName,
                // showNotification: mainBloc.showNotification,
                showTitle: mainBloc.showTitle,
              ),
              body: PageView(
                controller: MainViewBloc.of(context).pageCtrl,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeView(),
                  ReservationHistory(),
                  AccountsHistory(),
                  SettingsView(),
                  WalletView(),
                  AddMoneyView(),
                  ChangePassView(),
                  FreeTripsView(),
                  FavPaymentMethod()
                ],
              ),
              bottomNavigationBar: AnimatedBottomNavigationBar.builder(
                tabBuilder: (int index, bool isActive) {
                  return Column(
                    children: [
                      Expanded(
                        child: ImageIcon(
                          AssetImage(MainViewBloc.of(context).navItems[index]),
                          size: 24,
                          color: isActive
                              ? KColors.mainColor
                              : KColors.unselectedColor,
                        ),
                      ),
                      Text(
                        MainViewBloc.of(context).label[index],
                        style: KTextStyle.of(context).ten.copyWith(
                            color: isActive
                                ? KColors.mainColor
                                : KColors.unselectedColor),
                      )
                    ],
                  );
                },
                activeIndex: state.index,
                shadow: const Shadow(color: KColors.shadowD, blurRadius: 10),
                backgroundColor: KColors.whiteColor,
                gapLocation: GapLocation.none,
                notchSmoothness: NotchSmoothness.defaultEdge,
                onTap: MainViewBloc.of(context).navTaped,
                itemCount: 4,
              ),
            ),
          );
        },
      ),
    );
  }
}
