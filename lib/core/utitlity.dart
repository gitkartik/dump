import 'dart:math';

mixin GlobalEncryption{
  String encrypt(String input) {
    try {
      if (input != null) {
        int inputLen = input.length;
        int randKey = Random().nextInt(9) + 1;
        List<int> inputChr = List<int>.filled(inputLen, 0);

        for (int i = 0; i < inputLen; i++) {
          inputChr[i] = input.codeUnitAt(i) - randKey;
        }

        StringBuffer sb = StringBuffer();
        for (int i in inputChr) {
          sb.write('$i  a');
        }

        sb.write((randKey.toString().codeUnitAt(0)) + 50);
        return sb.toString();
      } else {
        return "";
      }
    } catch (e) {
      return "";
    }
  }
}


