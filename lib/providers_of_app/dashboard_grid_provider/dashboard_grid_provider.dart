import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../data/repositorys/repositories_app.dart';
import 'package:vcqru_bl/models/dashboard/dashboard_model.dart';
import '../../res/api_url/api_url.dart';
//
// class DashboardGridProvider with ChangeNotifier {
//   final _api = RepositoriesApp();
//
//   DashBoardModel? _dashboardModel;
//   bool _isLoading = true;
//   bool _hasError = false;
//   String _errorMessage = '';
//
//   DashBoardModel? get dashboardModel => _dashboardModel;
//   bool get isLoading => _isLoading;
//   bool get hasError => _hasError;
//   String get errorMessage => _errorMessage;
//
//   List<Map<String, dynamic>> _dashboardItems = [];
//
//   List<Map<String, dynamic>> get dashboardItems => _dashboardItems;
//
//   Future<void> getDashboardData() async {
//     _isLoading = true;
//     _hasError = false;
//     Map requestData = {"Comp_id": AppUrl.Comp_ID};
//     try {
//       final response = await _api.postRequest(requestData, AppUrl.DASHBOARD_API);
//       if (response['success'] && response['data'] != null) {
//         _isLoading = true;
//         _hasError = false;
//         _dashboardModel = DashBoardModel.fromJson(response);
//         notifyListeners();
//
//         _dashboardItems = [
//           {
//             'image': Image.asset('assets/new_gift.png'),
//             'label': 'Gift',
//
//             'isEnabled': true,//dashboardModel?.data?.giftRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_refer_earn.png'),
//             'label': 'Refer & Earn',
//
//             'isEnabled': true,//dashboardModel?.data?.referRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_wallet.png'),
//             'label': 'Wallet',
//
//             'isEnabled': true,//dashboardModel?.data?.walletRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_history.png'),
//             'label': 'History',
//
//             'isEnabled': true,//dashboardModel?.data?.supportRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_blog.png'),
//             'label': 'Blog',
//
//             'isEnabled': true,//dashboardModel?.data?.giftRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_catalogue.png'),
//             'label': 'Catalogue',
//
//             'isEnabled': true,//dashboardModel?.data?.referRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_help.png'),
//             'label': 'Help',
//
//             'isEnabled': true,//dashboardModel?.data?.walletRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_brochure.png'),
//             'label': 'Brochure',
//
//             'isEnabled': true,//dashboardModel?.data?.supportRequired ?? "false",
//           },
//           {
//             'image': Image.asset('assets/new_coded_details.png'),
//             'label': 'Code Details',
//
//             'isEnabled': true,//dashboardModel?.data?.supportRequired ?? "false",
//           },
//         ];
//         notifyListeners();
//       } else {
//         _isLoading = false;
//         _hasError = true;
//         _errorMessage = response['message'];
//         notifyListeners();
//       }
//     } catch (error) {
//       _isLoading = false;
//       _hasError = true;
//       _errorMessage = "'Something Went Wrong' Please Try Again Later";
//       notifyListeners();
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }

//
//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../data/repositorys/repositories_app.dart';
// import 'package:vcqru_bl/models/dashboard/dashboard_model.dart';
// import '../../res/api_url/api_url.dart';
//
// class DashboardGridProvider with ChangeNotifier {
//   final _api = RepositoriesApp();
//
//   DashBoardModel? _dashboardModel;
//   bool _isLoading = true;
//   bool _hasError = false;
//   String _errorMessage = '';
//
//   DashBoardModel? get dashboardModel => _dashboardModel;
//   bool get isLoading => _isLoading;
//   bool get hasError => _hasError;
//   String get errorMessage => _errorMessage;
//
//   List<Map<String, dynamic>> _dashboardItems = [];
//
//   List<Map<String, dynamic>> get dashboardItems => _dashboardItems;
//
//   Future<void> getDashboardData() async {
//     _isLoading = true;
//     _hasError = false;
//     Map requestData = {"Comp_id": AppUrl.Comp_ID};
//     try {
//       // final response = await _api.postRequest(requestData, AppUrl.DASHBOARD_API);
//       // if (response['success'] && response['data'] != null) {
//       // _isLoading = true;
//       // _hasError = false;
//       // _dashboardModel = DashBoardModel.fromJson(response);
//       // notifyListeners();
//
//       _dashboardItems = [
//         {
//           'image': Image.asset('assets/new_gift.png'),
//           'label': 'Gift',
//           'isEnabled': true, // dashboardModel?.data?.giftRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_refer_earn.png'),
//           'label': 'Refer & Earn',
//           'isEnabled': true, // dashboardModel?.data?.referRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_wallet.png'),
//           'label': 'Wallet',
//           'isEnabled': true, // dashboardModel?.data?.walletRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_history.png'),
//           'label': 'History',
//           'isEnabled': true, // dashboardModel?.data?.supportRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_blog.png'),
//           'label': 'Blog',
//           'isEnabled': true, // dashboardModel?.data?.giftRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_catalogue.png'),
//           'label': 'Catalogue',
//           'isEnabled': true, // dashboardModel?.data?.referRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_help.png'),
//           'label': 'Help',
//           'isEnabled': true, // dashboardModel?.data?.walletRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_brochure.png'),
//           'label': 'Brochure',
//           'isEnabled': true, // dashboardModel?.data?.supportRequired ?? "false",
//         },
//         {
//           'image': Image.asset('assets/new_coded_details.png'),
//           'label': 'Code Details',
//           'isEnabled': true, // dashboardModel?.data?.supportRequired ?? "false",
//         },
//       ];
//       notifyListeners();
//       // } else {
//       // _isLoading = false;
//       // _hasError = true;
//       // _errorMessage = response['message'];
//       // notifyListeners();
//       // }
//     } catch (error) {
//       _isLoading = false;
//       _hasError = true;
//       _errorMessage = "'Something Went Wrong' Please Try Again Later";
//       notifyListeners();
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../data/repositorys/repositories_app.dart';
// import 'package:vcqru_bl/models/dashboard/dashboard_model.dart';
// import '../../res/api_url/api_url.dart';

class DashboardGridProvider with ChangeNotifier {
  final _api = RepositoriesApp();

  DashBoardModel? _dashboardModel;
  bool _isLoading = true;
  bool _hasError = false;
  String _errorMessage = '';

  DashBoardModel? get dashboardModel => _dashboardModel;
  bool get isLoading => _isLoading;
  bool get hasError => _hasError;
  String get errorMessage => _errorMessage;

  List<Map<String, dynamic>> _dashboardItems = [];

  List<Map<String, dynamic>> get dashboardItems => _dashboardItems;

  DashboardGridProvider() {
    // Initialize with mock data for testing
    getDashboardData();
  }

  Future<void> getDashboardData() async {
    _isLoading = true;
    _hasError = false;
    Map requestData = {"Comp_id": AppUrl.Comp_ID};
    try {
      // final response = await _api.postRequest(requestData, AppUrl.DASHBOARD_API);
      // if (response['success'] && response['data'] != null) {
      // _isLoading = true;
      // _hasError = false;
      // _dashboardModel = DashBoardModel.fromJson(response);
      // notifyListeners();

      // Mock data for testing
      _dashboardItems = [
        {
          'image': 'assets/new_gift.png',//Image.asset('assets/new_gift.png',scale: 60,),
          'label': 'Gift',
          'isEnabled': true, // dashboardModel?.data?.giftRequired ?? "false",
        },
        {
          'image': 'assets/new_refer_earn.png',//Image.asset('assets/new_refer_earn.png',scale: 60,),
          'label': 'Refer & Earn',
          'isEnabled': true, // dashboardModel?.data?.referRequired ?? "false",
        },
        {
          'image': 'assets/new_wallet.png',//Image.asset('assets/new_wallet.png',scale: 60,),
          'label': 'Wallet',
          'isEnabled': true, // dashboardModel?.data?.walletRequired ?? "false",
        },
        {
          'image': 'assets/new_history.png',//Image.asset('assets/new_history.png',scale: 60,),
          'label': 'History',
          'isEnabled': true, // dashboardModel?.data?.supportRequired ?? "false",
        },
        {
          'image': 'assets/new_blog.png',//Image.asset('assets/new_blog.png',scale: 60,),
          'label': 'Blog',
          'isEnabled': true, // dashboardModel?.data?.giftRequired ?? "false",
        },
        {
          'image': 'assets/new_catalogue.png',//Image.asset('assets/new_catalogue.png',scale: 60,),
          'label': 'Catalogue',
          'isEnabled': true, // dashboardModel?.data?.referRequired ?? "false",
        },
        {
          'image': 'assets/new_help.png',//Image.asset('assets/new_help.png',scale: 60,),
          'label': 'Help',
          'isEnabled': true, // dashboardModel?.data?.walletRequired ?? "false",
        },
        {
          'image': 'assets/new_brochure.png',//Image.asset('assets/new_brochure.png',scale: 60,),
          'label': 'Brochure',
          'isEnabled': true, // dashboardModel?.data?.supportRequired ?? "false",
        },
        {
          'image': 'assets/new_coded_details.png',//Image.asset('assets/new_coded_details.png',scale: 60,),
          'label': 'Code Details',
          'isEnabled': true, // dashboardModel?.data?.supportRequired ?? "false",
        },
      ];
      _isLoading = false;
      notifyListeners();
      // } else {
      // _isLoading = false;
      // _hasError = true;
      // _errorMessage = response['message'];
      // notifyListeners();
      // }
    } catch (error) {
      _isLoading = false;
      _hasError = true;
      _errorMessage = "'Something Went Wrong' Please Try Again Later";
      notifyListeners();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
