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

void flyToEiffelTowerUsingKML(String username, String password, String ipAddress) async {
  final lookAtKML = '''
  <LookAt>
    <longitude>2.2945</longitude>
    <latitude>48.8584</latitude>
    <altitude>100</altitude>
    <heading>0</heading>
    <tilt>45</tilt>
    <range>1000</range>
    <altitudeMode>relativeToGround</altitudeMode>
  </LookAt>
  ''';

  final escapedLookAt = lookAtKML.replaceAll('"', '\\"').replaceAll('\n', '');

  final command = 'echo "flytoview=$escapedLookAt" > /tmp/query.txt';

  await sendLGCommand(username, password, ipAddress, command);
}

void flyToTajMahalUsingKML(String username, String password, String ipAddress) async {
  final lookAtKML = '''
  <LookAt>
    <longitude>78.0421</longitude>
    <latitude>27.1751</latitude>
    <altitude>100</altitude>
    <heading>0</heading>
    <tilt>45</tilt>
    <range>1000</range>
    <altitudeMode>relativeToGround</altitudeMode>
  </LookAt>
  ''';

  final escapedLookAt = lookAtKML.replaceAll('"', '\\"').replaceAll('\n', '');

  final command = 'echo "flytoview=$escapedLookAt" > /tmp/query.txt';

  await sendLGCommand(username, password, ipAddress, command);
}

void flyToStatueOfLibertyUsingKML(String username, String password, String ipAddress) async {
  final lookAtKML = '''
  <LookAt>
    <longitude>-74.0445</longitude>
    <latitude>40.6892</latitude>
    <altitude>100</altitude>
    <heading>0</heading>
    <tilt>45</tilt>
    <range>1000</range>
    <altitudeMode>relativeToGround</altitudeMode>
  </LookAt>
  ''';

  final escapedLookAt = lookAtKML.replaceAll('"', '\\"').replaceAll('\n', '');

  final command = 'echo "flytoview=$escapedLookAt" > /tmp/query.txt';

  await sendLGCommand(username, password, ipAddress, command);
}

void flyToGoldenGateBridgeUsingKML(String username, String password, String ipAddress) async {
  final lookAtKML = '''
  <LookAt>
    <longitude>-122.4787</longitude>
    <latitude>37.8199</latitude>
    <altitude>100</altitude>
    <heading>0</heading>
    <tilt>45</tilt>
    <range>1000</range>
    <altitudeMode>relativeToGround</altitudeMode>
  </LookAt>
  ''';

  final escapedLookAt = lookAtKML.replaceAll('"', '\\"').replaceAll('\n', '');

  final command = 'echo "flytoview=$escapedLookAt" > /tmp/query.txt';

  await sendLGCommand(username, password, ipAddress, command);
}

void showLogoUsingKML(String username, String password, String ipAddress) async {
  final kmlCommand = '''echo '<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
  <name>Logo Overlay</name>
  <ScreenOverlay id="logo">
    <name>Logo</name>
    <Icon>
      <href>http://$ipAddress:81/LIQUIDGALAXYLOGO.png</href>
    </Icon>
    <drawOrder>99</drawOrder>
    <overlayXY x="0" y="1" xunits="fraction" yunits="fraction"/>
    <screenXY x="0.05" y="0.95" xunits="fraction" yunits="fraction"/>
    <size x="0.3" y="0.3" xunits="fraction" yunits="fraction"/>
    <screens>3</screens>
  </ScreenOverlay>
</Document>
</kml>' > /var/www/html/kml/overlay.kml && echo "http://$ipAddress:81/kml/overlay.kml" > /var/www/html/kmls.txt''';

  await sendLGCommand(username, password, ipAddress, kmlCommand);
}

void clearLogoUsingSSH(String username, String password, String ipAddress) async {
  final command = '''
    rm -f /var/www/html/kml/overlay.kml
    sed -i '/overlay.kml/d' /var/www/html/kmls.txt
  ''';
  await sendLGCommand(username, password, ipAddress, command);
}

void clearKMLSUsingSSH(String username, String password, String ipAddress) async {
  final lookAtKML = '''
  <LookAt>
    <longitude>-50</longitude>
    <latitude>50</latitude>
    <altitude>100</altitude>
    <heading>0</heading>
    <tilt>45</tilt>
    <range>40000000</range>
    <altitudeMode>relativeToGround</altitudeMode>
  </LookAt>
  ''';

  final escapedLookAt = lookAtKML.replaceAll('"', '\\"').replaceAll('\n', '');

  final command = 'echo "flytoview=$escapedLookAt" > /tmp/query.txt';

  await sendLGCommand(username, password, ipAddress, command);
}