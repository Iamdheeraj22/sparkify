part of 'internet_cubit.dart';

class InternetState extends Equatable {
  const InternetState({
    this.isInternetConnected = false,
    this.type = ConnectivityResult.none,
  });

  final bool isInternetConnected;

  final ConnectivityResult type;

  InternetState copyWith({
    bool? isInternetConnected,
    ConnectivityResult? type,
  }) {
    return InternetState(
      isInternetConnected: isInternetConnected ?? this.isInternetConnected,
      type: type ?? this.type,
    );
  }

  @override
  List<Object> get props => [
        isInternetConnected,
        type,
      ];
}
