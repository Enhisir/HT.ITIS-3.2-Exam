import 'package:grpc/grpc.dart';

class GrpcClient {
  static final GrpcClient _instance = GrpcClient._internal();

  factory GrpcClient() => _instance;

  late ClientChannel channel;

  GrpcClient._internal();

  void init(String host, int port) {
    channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  void shutdown() async {
    await channel.shutdown();
  }
}
