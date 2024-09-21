import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tranquilo_app/core/helpers/spacing.dart';
import 'package:tranquilo_app/core/theming/colors_manger.dart';
import 'package:tranquilo_app/features/home/ui/widgets/routine_app_bar.dart';
import 'package:tranquilo_app/features/home/ui/widgets/task_routine.dart';

class MorningRoutine extends StatelessWidget {
  const MorningRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //verticalSpace(24),
              const RoutineAppBar(
                titleAppBar: 'Morning Routine',
              ),
              verticalSpace(18),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/task_line.svg',
                          height: 550.h,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.h, left: 30.w),
                          child: const TaskRoutine(
                            containerColor: ColorsManager.firstTaskContainer,
                            taskTitle: 'Mindfulness\nMeditation',
                            taskDesc:  'Start the day with\n15-20 minutes of\ngrounding exercises\nor progressive muscle\nrelaxation to soothe\nintense anxiety',
                            image: 'assets/svgs/first_morning_task.svg',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60.h, left: 30.w),
                          child: const TaskRoutine(
                            containerColor: ColorsManager.secondTaskContainer,
                            taskTitle: 'Soothing\nActivity',
                            taskDesc:  'Focus on gentle, soothing\nactivities in the morning,\nlike taking a slow walk\noutside, practicing yoga,\nor listening to calming\nnature sounds',
                            image: 'assets/svgs/second_morning_task.svg',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60.h, left: 30.w),
                          child: const TaskRoutine(
                            containerColor: ColorsManager.thirdTaskContainer,
                            taskTitle: 'Small Achievements\nFocus',
                            taskDesc: 'Break down the first\ntask of the day into\nvery small,\nmanageable steps,\nand reward yourself\nafter completing\neach step',
                            image: 'assets/svgs/third_morning_task.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(43),
            ],
          ),
        ),
      ),
    );
  }
}
