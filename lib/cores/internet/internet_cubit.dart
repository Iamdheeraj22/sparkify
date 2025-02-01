import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit() : super(const InternetState());

  //start the internet connection stream
  Future<void> startMonitoringInternet() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    updateInternetStatus(connectivityResult);

    //listen to the internet connection stream
    //and update the state accordingly
    Connectivity().onConnectivityChanged.listen(
          updateInternetStatus,
        );
  }

  void updateInternetStatus(List<ConnectivityResult> connectivityResult) {
    // This condition is for demo purposes only to explain every connection type.
    // Use conditions which work for your requirements.
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      // Mobile data is available.
      emit(
        state.copyWith(
          isInternetConnected: true,
          type: ConnectivityResult.mobile,
        ),
      );
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      // Wifi is available.
      emit(
        state.copyWith(
          isInternetConnected: true,
          type: ConnectivityResult.wifi,
        ),
      );
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      // Ethernet connection available.
      emit(
        state.copyWith(
          isInternetConnected: true,
          type: ConnectivityResult.ethernet,
        ),
      );
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      // Vpn connection active.
      // Note for iOS and macOS:
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
      emit(
        state.copyWith(
          isInternetConnected: true,
          type: ConnectivityResult.vpn,
        ),
      );
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      // Bluetooth connection available.
      emit(
        state.copyWith(
          isInternetConnected: true,
          type: ConnectivityResult.bluetooth,
        ),
      );
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      // Connected to a network which is not in the above mentioned networks.
      emit(
        state.copyWith(
          isInternetConnected: true,
          type: ConnectivityResult.other,
        ),
      );
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      // No available network types
      emit(
        state.copyWith(
          isInternetConnected: false,
          type: ConnectivityResult.none,
        ),
      );
    }
  }
}
