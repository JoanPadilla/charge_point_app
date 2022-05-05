import 'package:charge_point_app/models/models.dart';
import 'package:charge_point_app/services/charge_point_client_adapter.dart';
import 'package:charge_point_app/services/generated/charge_points.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ChargePointClient {
  
  //TODO: channel igual per a tots els serveis?
  //TODO: gastar un proto per a cada tipus de servei?
  late final ClientChannel channel;
  late final ChargePointAPIServiceClient stub;
  late final ChargePointClientAdapter adapter;
  
  ChargePointClient () {
    channel = ClientChannel(
      '10.0.2.2',
      port: 8080,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure())
    );
    stub = ChargePointAPIServiceClient(channel);
    adapter = ChargePointClientAdapter();
  }
  
  Future<List<ChargePoint>> getAllChargingPoints() async {
    final request = Empty();
    final call = await stub.allChargingPoints(request);
    var chargePointList = call.chargePointsList;
    return adapter.adaptCPList(chargePointList);
  }
  
  void closeChannel() {
    channel.shutdown();
  }
}
  
  