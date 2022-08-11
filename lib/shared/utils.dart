import 'package:flutter/material.dart';
import 'package:teste_timeline/colors.dart';
import 'package:teste_timeline/text_styles.dart';

class Utils {
  static navigateToAndRemove(String route, BuildContext context) =>
      Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);

  static navigateTo(String route, BuildContext context) =>
      Navigator.pushNamed(context, route);

  static String formatDate(DateTime date) {
    String day = date.day < 10 ? '0${date.day}' : '${date.day}';
    String month = date.month < 10 ? '0${date.month}' : '${date.month}';
    return '$day/$month/${date.year}';
  }

  static String formatDateMonthYear(DateTime date) {
    String month = date.month.toString().padLeft(2, '0');
    String year = date.year.toString().substring(2, 4);
    return '$month/$year';
  }

  static String formatFirstName(String name) {
    if (name == null) return '';
    if (name == '') return '';
    try {
      String firstName = name.split(' ').first.toLowerCase().replaceFirst(
          name.substring(0, 1).toLowerCase(),
          name.substring(0, 1).toUpperCase());

      return firstName;
    } catch (e) {
      return name;
    }
  }

  static double strValueToMoney(String value) {
    try {
      return double.parse(value
          .replaceAll("R\$", "")
          .replaceAll(".", "")
          .replaceAll(",", ".")
          .trim());
    } catch (e) {
      return 0;
    }
  }

  static String selectFullMonth(int mes) {
    switch (mes) {
      case 1:
        return "Janeiro";
        break;
      case 2:
        return "Fevereiro";
        break;
      case 3:
        return "Março";
        break;
      case 4:
        return "Abril";
        break;
      case 5:
        return "Maio";
        break;
      case 6:
        return "Junho";
        break;
      case 7:
        return "Julho";
        break;
      case 8:
        return "Agosto";
        break;
      case 9:
        return "Setembro";
        break;
      case 10:
        return "Outubro";
        break;
      case 11:
        return "Novembro";
        break;
      case 12:
        return "Dezembro";
        break;
      default:
        return "ERR";
    }
  }

  static String formatNumeroLoteria(String number) {
    while (number.length < 6) {
      number = '0$number';
    }
    return number;
  }

  static String removeSpecialCharacter(String txt) {
    if (txt == null || txt.isEmpty) return txt;
    return txt.replaceAll(RegExp(r'[^\w\s]+'), '').trim();
  }

  static removeFocus(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static ColorComponent selectColor(DefaultColors color) {
    switch (color) {
      case DefaultColors.ERROR:
        return ColorComponent(backGroundColor: Colors.red);
        break;
      case DefaultColors.SUCCESS:
        return ColorComponent(
            backGroundColor: StyleColors.primary,
            textColor: StyleColors.colorComplement1);
        break;
      case DefaultColors.INFO:
        return ColorComponent(backGroundColor: Colors.blueAccent);
        break;
      case DefaultColors.WARN:
        return ColorComponent(backGroundColor: Colors.orange);
        break;
      default:
        return ColorComponent(
            backGroundColor: Colors.white, textColor: Colors.black26);
    }
  }

  static String formatMessage(String message) {
    if (message == null || message.isEmpty) return "";
    if (message.contains("\n")) return message.split("\n")[1];
    return message;
  }

  static Future<bool> showConfirmationMessage(
    BuildContext context,
    String message, {
    String title = 'Confirmação',
    int duration = 3,
    DefaultColors color = DefaultColors.SUCCESS,
    String okButtonTitle = "OK",
    String cancelButtonTitle = 'Cancelar',
    bool dismissable = false,
    Function positiveFunction,
    Function negativeFunction,
  }) async {
    /* if (LoginResponseModel.activeUser != null) {
      if (JwtDecoder.isExpired(LoginResponseModel.activeUser.token)) {
        navigatorKey.currentState
            .pushNamedAndRemoveUntil("/session_expired", (route) => false);
        return;
      }
    }
 */
    /* ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      navigatorKey.currentState.pushNamed("/no_connection");
      return;
    } */
    Widget okButton = TextButton(
        onPressed: positiveFunction == null
            ? () => Navigator.pop(context, true)
            : positiveFunction,
        child: Text(okButtonTitle, style: StyleText.alertButton));

    Widget cancelButton = TextButton(
        onPressed: positiveFunction == null
            ? () => Navigator.pop(context, false)
            : negativeFunction,
        child: Text(cancelButtonTitle, style: StyleText.alertButton));

    Widget buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[okButton],
    );

    if (negativeFunction != null) {
      buttons = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[cancelButton, okButton],
      );
    }

    return showDialog(
        context: context,
        barrierDismissible: dismissable,
        builder: (BuildContext context) {
          return AlertDialog(
            titlePadding: EdgeInsets.all(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            elevation: 10,
            backgroundColor: Colors.white,
            title: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 2 - 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.zero,
                      topRight: Radius.circular(5)),
                  color: StyleColors.colorPrimary),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: StyleText.alertTitle,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: StyleText.alertMessage,
                  ),
                ),
                SizedBox(height: 15),
                Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
                SizedBox(height: 10),
                buttons
              ],
            ),
          );
        });

    // Flushbar(
    //   onTap: (_) => Navigator.pop(context),
    //   mainButton: textButton == null
    //       ? null
    //       : TextButton(
    //           onPressed: () => functionButton,
    //           child: Text(
    //             textButton,
    //             style: TextStyle(color: colorComponent.textColor),
    //           )),
    //   backgroundColor: colorComponent.backGroundColor,
    //   title: title,
    //   titleColor: colorComponent.textColor,
    //   message: formatMessage(message),
    //   messageColor: colorComponent.textColor,
    //   flushbarStyle: FlushbarStyle.FLOATING,
    //   borderRadius: BorderRadius.circular(5),
    //   duration: Duration(seconds: duration),
    //   flushbarPosition: FlushbarPosition.TOP,
    //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    // ).show(context);
  }

  static int cleanVersion(String version) {
    if (version == null) return -1;
    return int.parse(version.replaceAll('.', '').trim());
  }

  static String tratarMensagemSituacaoCobranca(String sts) {
    return sts
        .toUpperCase()
        .replaceAll("Ã", "A")
        .replaceAll("Á", "A")
        .replaceAll("Ç", "C")
        .replaceAll("Õ", "O")
        .replaceAll("Ó", "O")
        .replaceAll("Í", "I")
        .toLowerCase();
  }

  static String getUserFirstName(String name) {
    if (name == null || name.isEmpty) return "";
    try {
      return name.split(" ")[0];
    } catch (e) {
      return name;
    }
  }

  static String formatDateTimeString(String date) {
    String formattedDate = "";
    try {
      String txtDate = date.substring(0, 10).trim();
      if (txtDate.contains('-')) {
        formattedDate = txtDate.split('/').reversed.join('-');
        return formattedDate;
      }
      formattedDate = txtDate;
      return formattedDate;
    } catch (e) {
      return formattedDate;
    }
  }

  static showMessageAlertDialog(
    BuildContext context,
    String message, {
    Color cor,
    String titulo = "Atenção",
    String okButtonTitle = "OK",
    String cancelButtonTitle = '',
    @required Function positiveFunction,
    Function negativeFunction,
    bool dismissible = false,
  }) async {
    Widget okButton = TextButton(
        onPressed: positiveFunction,
        child: Text(okButtonTitle, style: StyleText.alertButton));

    Widget cancelButton = TextButton(
        onPressed: negativeFunction,
        child: Text(cancelButtonTitle, style: StyleText.alertButton));

    Widget buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[okButton],
    );

    if (negativeFunction != null) {
      buttons = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[cancelButton, okButton],
      );
    }

    await showDialog(
        context: context,
        barrierDismissible: dismissible,
        builder: (BuildContext context) {
          return AlertDialog(
            titlePadding: EdgeInsets.all(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            elevation: 10,
            backgroundColor: Colors.white,
            title: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 2 - 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.zero,
                      topRight: Radius.circular(5)),
                  color: StyleColors.colorPrimary),
              child: Center(
                child: Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: StyleText.alertTitle,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: StyleText.alertMessage,
                  ),
                ),
                SizedBox(height: 15),
                Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
                SizedBox(height: 10),
                buttons
              ],
            ),
          );
        });
  }

  static String removerZerosNumeroGrupo(String grupo) {
    if (grupo == null || grupo.isEmpty) return "";
    if (grupo.length == 6 && grupo.substring(0, 2) == "00")
      return grupo.substring(2);
    else
      return grupo;
  }

  static String ajusteNomeDescricaoBem(String nmDescricaoBem) {
    if (nmDescricaoBem == null || nmDescricaoBem.isEmpty) return "";

    if (nmDescricaoBem.toUpperCase() == "IMOVEL") return "IMÓVEL";
    if (nmDescricaoBem.toUpperCase() == "SERVICO" ||
        nmDescricaoBem.toUpperCase() == "SERVICOS") return "SERVIÇOS";

    return nmDescricaoBem;
  }

  static String formatErrorMessage(String message) {
    try {
      return message.split("-").first;
    } catch (e) {
      return message;
    }
  }
}

class ColorComponent {
  Color backGroundColor;
  Color textColor;

  ColorComponent({this.backGroundColor, this.textColor = Colors.white});
}

enum DefaultColors { ERROR, SUCCESS, INFO, WARN }
