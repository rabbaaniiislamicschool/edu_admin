

import 'package:hive_ce_flutter/adapters.dart';

import '../../features/auth/data/local/models/user_login_data.dart';
part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<UserLoginData>(),
])

class HiveAdapters {}