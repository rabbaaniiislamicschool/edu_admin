import 'package:flutter/material.dart';
import 'package:edu_admin/core/routes/nested_routes.dart';
import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/core/utils/currency_utils.dart';
import 'package:edu_admin/core/utils/custom_date_utils.dart';
import 'package:edu_admin/features/home/domain/entities/student_class.dart';
import 'package:edu_admin/features/home/presentation/manager/student_class_bloc.dart';
import 'package:edu_admin/features/home/presentation/manager/student_class_event.dart';
import 'package:edu_admin/features/home/presentation/manager/student_class_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logger/logger.dart';
import 'package:gap/gap.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import '../../../../core/res/colors.dart';
import '../../../../di/di.dart';
import 'package:flutter/material.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final refreshKey = useMemoized(() => GlobalKey<RefreshIndicatorState>());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<StudentClassBloc>()..add(StudentClassEvent.load()),
        ),
      ],
      child: Scaffold(
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: () => _refreshData(context),
          child: BlocBuilder<StudentClassBloc, StudentClassState>(
            builder: (context, state) {
              if (state.errorMessage != null) {
                context.showMessage(state.errorMessage!);
              }
              final student = state.studentClass?.student;
              final user = student?.user;
              final fullName = user?.fullName ?? state.currentUser?.fullName;
              final className = _getClassName(state.studentClass);

              return ListView(
                children: [
                  _buildAppBar(context, state, fullName, className),
                  _buildQuickActions(context),
                  _buildTransactionHistory(context, refreshKey),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _refreshData(BuildContext context) async {
    context.read<StudentClassBloc>().add(StudentClassEvent.getCurrentUser());
  }

  Widget _buildAppBar(
    BuildContext context,
    StudentClassState state,
    String? fullName,
    String className,
  ) {
    return Stack(
      children: [
        _buildBackground(context),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: context.secondaryColor,
                    child: Text(
                      fullName != null ? StringUtils.getInitials(fullName) : '',
                      style: TextStyle(
                        color: context.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Assalamu\'alaikum',
                          style: TextStyle(
                            fontSize: 16,
                            color: context.onPrimaryColor,
                          ),
                        ),
                        Text(
                          fullName ?? '-',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: context.onPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(4),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                className,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: context.onPrimaryColor,
                                ),
                              ),
                            ),
                            ShadBadge(
                              backgroundColor: context.onPrimaryColor,
                              hoverBackgroundColor: context.onPrimaryColor,
                              onPressed: () {

                              },
                              child: Text(
                                'PILIH SISWA',
                                style: TextStyle(
                                  color: context.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Gap(16),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      color: context.primaryColor,
      width: double.infinity,
      height: 180,
    );
  }


  Widget _buildQuickActions(BuildContext context) {
    return Row(
      children: [
        _buildQuickActionButton(
          context,
          'SPP Sekolah',
          Icons.school,
          context.greenColor,
          context.greenSurfaceColor,
          () {
            ProfileRoute().go(context);
          },
        ),
        _buildQuickActionButton(
          context,
          'Biaya Lain',
          Icons.monetization_on,
          context.yellowColor,
          context.yellowSurfaceColor,
          () {
            ProfileRoute().go(context);
          },
        ),
        _buildQuickActionButton(
          context,
          'Transaksi',
          Icons.history,
          context.blueColor,
          context.blueSurfaceColor,
          () {
            ProfileRoute().go(context);
          },
        ),
        _buildQuickActionButton(
          context,
          'Biodata',
          Icons.person,
          context.purpleColor,
          context.purpleSurfaceColor,
          () {
            ProfileRoute().go(context);
          },
        ),
      ],
    );
  }

  Widget _buildQuickActionButton(
    BuildContext context,
    String label,
    IconData icon,
    Color? iconColor,
    Color? backgroundColor,
    VoidCallback onPressed,
  ) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: backgroundColor,
            // size: ShadButtonSize.lg,
            onPressed: onPressed,
            child: Icon(
              icon,
              size: 28,
              color: iconColor,
            ),
          ),
          Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: context.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHistory(
    BuildContext context,
    GlobalKey<RefreshIndicatorState> refreshKey,
  ) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        const Gap(24),
        Row(
          children: [
            const Text(
              'Riwayat Pembayaran',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            // TextButton(
            //   child: const Text('Lihat semua'),
            //   onPressed: () => refreshKey.currentState?.show(),
            // ),
          ],
        ),
        const Gap(8),
      ],
    ); //.withPadding(all: 24);
  }

  String _getClassName(StudentClass? studentClass) {
    final classes = studentClass?.classes;
    return classes != null
        ? '${classes.className} ${classes.description}'
        : '-';
  }


}
