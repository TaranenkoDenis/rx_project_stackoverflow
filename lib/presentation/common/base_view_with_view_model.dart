import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_rx/di/injection.dart';
import 'package:test_rx/presentation/common/i_base_view_model.dart';
import 'package:test_rx/presentation/common/i_route_auto_wrapper.dart';

abstract class BasePage<ViewModel extends BaseViewModel> extends StatelessWidget
    implements AutoRouteWrapper {
  const BasePage({Key key}) : super(key: key);

  ViewModel getViewModelInstance() => getIt<ViewModel>();

  @override
  Widget wrappedRoute(BuildContext context) => Provider<ViewModel>(
        create: (_) => getViewModelInstance(),
        dispose: (_, vm) => vm.dispose(),
        child: this,
      );
}
