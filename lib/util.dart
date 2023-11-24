//armazenar métodos utilitários

import 'package:intl/intl.dart';

final _formatter = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$",
);

String formatCurrency(double value) => _formatter.format(value);