import 'package:dartssh2/dartssh2.dart';



Future<void> sendLGCommand(String username, String password, String ipAddress, String command) async {
  
  final sshClient = SSHClient(
    await SSHSocket.connect(ipAddress, 22),
    username: username,
    onPasswordRequest: () => password,
  );

  final session = await sshClient.execute(command);
  session.close();
  sshClient.close();
}

void flyToEiffelTowerUsingSSH(String username, String password, String ipAddress) async {
final command = 'echo "flytoview=<LookAt><longitude>2.2945</longitude><latitude>48.8584</latitude><altitude>100</altitude><heading>0</heading><tilt>45</tilt><range>1000</range><altitudeMode>relativeToGround</altitudeMode></LookAt>" > /tmp/query.txt';
await sendLGCommand(username, password, ipAddress, command);
}

void flyToTajMahalUsingSSH(String username, String password, String ipAddress) async {
final command = 'echo "flytoview=<LookAt><longitude>78.0421</longitude><latitude>27.1751</latitude><altitude>100</altitude><heading>0</heading><tilt>45</tilt><range>1000</range><altitudeMode>relativeToGround</altitudeMode></LookAt>" > /tmp/query.txt';
await sendLGCommand(username, password, ipAddress, command);
}

void flyToStatueOfLibertyUsingSSH(String username, String password, String ipAddress) async {
final command = 'echo "flytoview=<LookAt><longitude>-74.0445</longitude><latitude>40.6892</latitude><altitude>100</altitude><heading>0</heading><tilt>45</tilt><range>1000</range><altitudeMode>relativeToGround</altitudeMode></LookAt>" > /tmp/query.txt';
await sendLGCommand(username, password, ipAddress, command);
}

void flyToGoldenGateBridgeUsingSSH(String username, String password, String ipAddress) async {
final command = 'echo "flytoview=<LookAt><longitude>-122.4797</longitude><latitude>37.8199</latitude><altitude>100</altitude><heading>0</heading><tilt>45</tilt><range>1000</range><altitudeMode>relativeToGround</altitudeMode></LookAt>" > /tmp/query.txt';
await sendLGCommand(username, password, ipAddress, command);
}

