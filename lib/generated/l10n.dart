// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Academic Year`
  String get academic_year {
    return Intl.message(
      'Academic Year',
      name: 'academic_year',
      desc: '',
      args: [],
    );
  }

  /// `Odd`
  String get odd {
    return Intl.message('Odd', name: 'odd', desc: '', args: []);
  }

  /// `Even`
  String get even {
    return Intl.message('Even', name: 'even', desc: '', args: []);
  }

  /// `Home`
  String get menu_home {
    return Intl.message('Home', name: 'menu_home', desc: '', args: []);
  }

  /// `School`
  String get menu_school {
    return Intl.message('School', name: 'menu_school', desc: '', args: []);
  }

  /// `Foundation`
  String get menu_foundation {
    return Intl.message(
      'Foundation',
      name: 'menu_foundation',
      desc: '',
      args: [],
    );
  }

  /// `Branch`
  String get menu_branch {
    return Intl.message('Branch', name: 'menu_branch', desc: '', args: []);
  }

  /// `Division`
  String get menu_division {
    return Intl.message('Division', name: 'menu_division', desc: '', args: []);
  }

  /// `Organizational Structure`
  String get menu_structure {
    return Intl.message(
      'Organizational Structure',
      name: 'menu_structure',
      desc: '',
      args: [],
    );
  }

  /// `Employees`
  String get menu_employees {
    return Intl.message(
      'Employees',
      name: 'menu_employees',
      desc: '',
      args: [],
    );
  }

  /// `Students`
  String get menu_students {
    return Intl.message('Students', name: 'menu_students', desc: '', args: []);
  }

  /// `Announcements`
  String get menu_announcements {
    return Intl.message(
      'Announcements',
      name: 'menu_announcements',
      desc: '',
      args: [],
    );
  }

  /// `Class`
  String get menu_class {
    return Intl.message('Class', name: 'menu_class', desc: '', args: []);
  }

  /// `Classroom`
  String get menu_classroom {
    return Intl.message(
      'Classroom',
      name: 'menu_classroom',
      desc: '',
      args: [],
    );
  }

  /// `Class Promotion`
  String get menu_class_promotion {
    return Intl.message(
      'Class Promotion',
      name: 'menu_class_promotion',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get menu_payments {
    return Intl.message('Payments', name: 'menu_payments', desc: '', args: []);
  }

  /// `Tuition Fees`
  String get menu_tuition_fees {
    return Intl.message(
      'Tuition Fees',
      name: 'menu_tuition_fees',
      desc: '',
      args: [],
    );
  }

  /// `Other Fees`
  String get menu_other_fees {
    return Intl.message(
      'Other Fees',
      name: 'menu_other_fees',
      desc: '',
      args: [],
    );
  }

  /// `Kustom SPP`
  String get menu_custom_tuition {
    return Intl.message(
      'Kustom SPP',
      name: 'menu_custom_tuition',
      desc: '',
      args: [],
    );
  }

  /// `Manual Payment`
  String get menu_manual_payment {
    return Intl.message(
      'Manual Payment',
      name: 'menu_manual_payment',
      desc: '',
      args: [],
    );
  }

  /// `Create Invoice`
  String get menu_create_invoice {
    return Intl.message(
      'Create Invoice',
      name: 'menu_create_invoice',
      desc: '',
      args: [],
    );
  }

  /// `Bulk Invoice`
  String get menu_bulk_invoice {
    return Intl.message(
      'Bulk Invoice',
      name: 'menu_bulk_invoice',
      desc: '',
      args: [],
    );
  }

  /// `Payment History`
  String get menu_payment_history {
    return Intl.message(
      'Payment History',
      name: 'menu_payment_history',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get menu_reports {
    return Intl.message('Reports', name: 'menu_reports', desc: '', args: []);
  }

  /// `Student Attendance`
  String get menu_student_attendance {
    return Intl.message(
      'Student Attendance',
      name: 'menu_student_attendance',
      desc: '',
      args: [],
    );
  }

  /// `Employee Attendance`
  String get menu_employee_attendance {
    return Intl.message(
      'Employee Attendance',
      name: 'menu_employee_attendance',
      desc: '',
      args: [],
    );
  }

  /// `Tuition Payments`
  String get menu_tuition_payments {
    return Intl.message(
      'Tuition Payments',
      name: 'menu_tuition_payments',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get menu_others {
    return Intl.message('Others', name: 'menu_others', desc: '', args: []);
  }

  /// `Student Tuition Summary`
  String get menu_tuition_summary {
    return Intl.message(
      'Student Tuition Summary',
      name: 'menu_tuition_summary',
      desc: '',
      args: [],
    );
  }

  /// `Student Attendance Summary`
  String get menu_attendance_summary {
    return Intl.message(
      'Student Attendance Summary',
      name: 'menu_attendance_summary',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get menu_settings {
    return Intl.message('Settings', name: 'menu_settings', desc: '', args: []);
  }

  /// `Payments`
  String get menu_settings_payments {
    return Intl.message(
      'Payments',
      name: 'menu_settings_payments',
      desc: '',
      args: [],
    );
  }

  /// `Academic Year`
  String get menu_academic_year {
    return Intl.message(
      'Academic Year',
      name: 'menu_academic_year',
      desc: '',
      args: [],
    );
  }

  /// `Tagihan`
  String get menu_bill {
    return Intl.message('Tagihan', name: 'menu_bill', desc: '', args: []);
  }

  /// `Riwayat Transaksi`
  String get menu_transaction {
    return Intl.message(
      'Riwayat Transaksi',
      name: 'menu_transaction',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
