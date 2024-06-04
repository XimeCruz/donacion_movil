class Notificacion {
  final int id;
  final String mensaje;
  final int? idDonacion;
  final bool visto;

  Notificacion({
    required this.id,
    required this.mensaje,
    this.idDonacion,
    required this.visto,
  });

  factory Notificacion.fromJson(Map<String, dynamic> json) {
    return Notificacion(
      id: json['id'],
      mensaje: json['mensaje'],
      idDonacion: json['idDonacion'],
      visto: json['visto'],
    );
  }
}