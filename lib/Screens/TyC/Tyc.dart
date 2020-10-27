
import 'package:bellava_prof/Utils/button_green.dart';

import 'package:flutter/material.dart';


class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {



  _buildTitle(title){
    return Container(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.blueGrey,
          ),
          ),
      );
  }

   _buildSubTitle(subTitle){
    return Container(
        child: Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 19,
            color: Colors.blueGrey,
          ),
          ),
      );
  }

  _buildParraf(parrafo){
    return Container(
        child: Text(
          parrafo,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.blueGrey,
          ),
          ),
      );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Stack(
        children: <Widget>[
         
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: ListView(children: <Widget>[
              _buildTitle("BELLAVÁ ® "),
              SizedBox(height: 20),
              _buildSubTitle("Términos y Condiciones Profesionales de Belleza"),
              SizedBox(height: 10),
              _buildParraf("Este contrato establece los Términos y Condiciones aplicables a los Profesionales de Belleza que (conforme se define más abajo) regulan la navegación y utilización que hagan, como persona humana o jurídica, de la plataforma virtual Bellavá desde la República Argentina, contenida en una página web y una aplicación para dispositivos móviles (la “Plataforma”), a través de la cual se exhiben productos y servicios, puestos a disposición por Bellavá ®  (en adelante,  “BELLAVÁ”)."),
              SizedBox(height: 7),
              _buildParraf("BELLAVÁ contacta entre personas (en adelante, “Consumidores”) que solicitan un servicio de belleza con personas humanas que ofrecen tal servicio (en adelante, “Profesionales de Belleza”), y que estas aceptan, a su propia cuenta como Profesionales de Belleza y repartidores mediante un contrato de mandato, a cambio de recibir una remuneración por parte del Consumidor como prestación por dicho Servicio, todo ello mediante la Plataforma, siendo BELLAVÁ entonces, una plataforma de encuentro entre oferta y demanda."),
              SizedBox(height: 7),
              _buildParraf(
                          "La celebración de la relación contractual entre los Consumidores y Profesionales de Bellezas, se llevará a cabo con Consumidores que se encuentren en la República Argentina que solicitan el servicio de belleza a los Profesionales de Belleza, el cual debe ser realizado dentro del país, pagando una contraprestación económica, mediante el sistema de pago electrónico por la plataforma electrónica que ponga a disposición BELLAVÁ o en dinero en efectivo al momento de la recepción de los productos, a elección del Consumidor. De este modo, BELLAVÁ se limita a intermediar entre los Consumidores y los Profesionales de Bellezas, percibiendo de los Consumidores y de los Profesionales de Bellezas una comisión establecida y que puede cambiar sin previo aviso “directo” por su prestación de intermediario entre ambas partes, siendo la comisión actual del 30%."),
              SizedBox(height: 7),
               _buildParraf("Mediante la aceptación de estos Términos y Condiciones se regula el acceso y uso por parte del Profesionales de Belleza de la Plataforma. De lo contrario, no podrá acceder a la misma, como tampoco podrá prestar los Servicios a los Consumidores que así lo soliciten. Estos Términos y Condiciones sustituyen expresamente los acuerdos o compromisos previos celebrados entre las partes. Asimismo, BELLAVÁ podrá poner fin de inmediato a los mismos, como así también dejar de ofrecer o denegar en forma unilateral y sin necesidad de causa alguna el acceso a la Plataforma, viéndose el Profesional de Belleza imposibilitado de aceptar la contratación de los Servicios por parte de los Consumidores, ya sea en forma total o parcial, en cualquier momento y por cualquier motivo de manera unilateral sin que ello dé lugar a reclamo y/o indemnización alguna a su favor. El Profesional de Belleza reconoce y acepta mediante el ingreso a la plataforma que: bajo ninguna circunstancia los Profesionales de Bellezas serán considerados empleados por BELLAVÁ, los Profesionales de Bellezas son trabajadores independientes que aceptan los términos y condiciones establecidos por BELLAVÁ, desligándolo de toda responsabilidad individual de los Profesionales de Bellezas, considerando a la Plataforma como un mero intermediario. "),
             
              SizedBox(height: 10),
              _buildSubTitle(
                "PRIMERA. Registro"),
              SizedBox(height: 10),
              _buildParraf(
                "1.1. Para conectarse a la Plataforma, el Profesionales de Belleza deberá poseer un Smartphone con sistema operativo Android, iOS y/u otro dispositivo de su propiedad compatible con la Plataforma. Al ingresar a la Plataforma, el Profesionales de Belleza asume a su propio cargo los costos que incurra relativos a la conexión a través de la red de telecomunicaciones suministrada por el proveedor de acceso contratado (ISP) por el Profesionales de Belleza, pudiendo únicamente el Profesionales de Belleza acceder a la Plataforma a través de los medios autorizados, previa aceptación de los Términos y Condiciones."),
              SizedBox(height: 7),
              _buildParraf(
                "1.2. Luego completará el formulario de registro para atender a una primera reunión       introductoria con BELLAVÁ donde se lo asesorará en todo lo relativo al uso de la Plataforma. Asimismo, se le brindará capacitación y exámenes sobre el servicio a realizar"),
              SizedBox(height: 7),
              _buildParraf(
                "1.3. Realizada la misma, el Profesionales de Belleza completará todos los campos del formulario con su información personal de manera exacta y verdadera (en adelante el “Registro”), asumiendo el compromiso de actualizar los datos consignados en el Registro ante cualquier modificación."),
              SizedBox(height: 7),
              _buildParraf(
                "Asimismo, será requisito necesario que el Profesionales de Belleza sea mayor de 18 años de edad en caso de que preste los Servicios dentro de la Ciudad Autónoma de Buenos Aires."),
              SizedBox(height: 7),
              _buildParraf(
                "1.4. Una vez registrado, BELLAVÁ otorgará al Profesionales de Belleza un uniforme distintivo de uso obligatorio y una cuenta personal para acceder a la Plataforma con la contraseña que dicho Profesionales de Belleza elija (la “Cuenta”). La Cuenta es de carácter personal, única e intransferible, y está prohibido que un mismo Profesionales de Belleza registre o posea más de una Cuenta. En caso de que BELLAVÁ detecte o razonablemente considere que distintas cuentas contienen datos coincidentes o relacionados, podrá cancelar, suspender o inhabilitar todas las Cuentas relacionadas sin que ello implique derecho a reclamo a alguno por parte de Profesionales de Bellezas. El Profesionales de Belleza será el único responsable por el cuidado de su Cuenta, y por mantener sus claves de acceso protegidas."),
              SizedBox(height: 7),
              _buildParraf(
                "1.5. Los Datos Personales introducidos por el Profesionales de Belleza deberán ser exactos, actuales y veraces en todo momento. BELLAVÁ se reserva el derecho de solicitar algún comprobante y/o dato adicional a efectos de corroborar los Datos Personales, y de suspender temporal y/o definitivamente a aquel Profesionales de Belleza cuyos datos no hayan podido ser confirmados dentro del tiempo indicado por BELLAVÁ. BELLAVÁ no se responsabiliza por la certeza de los datos consignados en el Registro atento a que los mismos son suministrados por el Profesionales de Belleza. El Profesionales de Belleza garantiza y responde, en cualquier caso, de la veracidad, exactitud, vigencia y autenticidad de sus Datos Personales. Los Datos Personales que el Profesionales de Belleza proporcione se integrarán en una base de datos personales de la que es responsable BELLAVÁ. BELLAVÁ podrá solicitar informes a distintas bases de datos públicas o privadas en relación a información y/o datos correspondientes a los Profesionales de Bellezas."),
              SizedBox(height: 7),
              _buildParraf(
                "1.6. BELLAVÁ a su exclusiva discreción podrá denegar el Registro de una persona como Profesionales de Belleza y/o darlo de baja en cualquier momento y con propia autonomía, sin que ello genere derecho a reclamo y/o indemnización alguna por dicha persona"),
              SizedBox(height: 7),
              _buildParraf(
                "1.7. Para poder acceder a la Plataforma y prestar los Servicios a los Consumidores, los Profesionales de Bellezas deberán cumplir con la legislación aplicable a los fines de la prestación de los Servicios solicitados por los Consumidores, siendo su cumplimiento responsabilidad exclusiva del Profesionales de Belleza. BELLAVÁ no será responsable de cualquier incumplimiento que tenga el Profesionales de Belleza antes, durante o con posterioridad a la prestación del Servicio a los Consumidores, bajo el entendido de que (i) el Profesionales de Belleza actúa en forma independiente, (ii) quien contrata al Profesionales de Belleza es el Consumidor directamente para la prestación del Servicio, y (iii) BELLAVÁ solo presta un servicio de intermediación en calidad de tercero, no interviniendo BELLAVÁ en el contrato de mandato entre el Profesionales de Belleza como mandatario y el Consumidor como mandante con relación a la prestación de los Servicios."),

              
              SizedBox(height: 10),

              _buildSubTitle(
                "SEGUNDA. Funcionamiento"),
              SizedBox(height: 10),
              _buildParraf(
                "2.1. El Profesional de Belleza prestará el Servicio a todos aquellos que requieran servicios de belleza y reparto. El Profesional de Belleza podrá recibir de parte de los Consumidores, en base a la demanda del Servicio que éstos pudieran tener, y a través de la Plataforma, una solicitud del Servicio en su Smartphone (la “Solicitud”), conforme su ubicación, cercanías al momento de la misma y demás parámetros fijados por la Plataforma. El Profesionales de Belleza podrá aceptar o rechazar la Solicitud a su voluntad. En caso que el Profesionales de Belleza decida en forma voluntaria aceptar la Solicitud, el Consumidor recibirá una notificación de aceptación de solicitud de Servicio, la cual incluirá ciertos datos personales del Profesionales de Belleza (nombre, mail y teléfono), incluyendo la posibilidad de ponerse en contacto con el mismo a través de un chat provisto por la Plataforma. Por su parte, en caso que el Profesionales de Belleza rechace la solicitud, ello no tendrá consecuencia alguna, por lo que quedará disponible para recibir una nueva Solicitud, para el caso que sea demandado el Servicio. Únicamente será susceptible de penalización si el Profesionales de Belleza acepta el pedido y luego no se hace responsable del mismo o si el Profesional de Belleza cancela un pedido aceptado, lo que se le notificará a cliente y recibirá una sanción económica por mal uso de la plataforma. Siendo que la demanda del Servicio depende de los Consumidores, BELLAVÁ no garantiza de modo alguno a los Profesionales de Bellezas la existencia o no de Solicitudes demandando los Servicios."),
              SizedBox(height: 7),
              _buildParraf("2.2. El Profesionales de Belleza dispone de libertad total y absoluta para determinar el día, hora y lugar en el que está dispuesto a prestar el Servicio. De este modo, el Profesionales de Belleza determinará en forma personal e inconsulta con BELLAVÁ en qué momento decide conectarse a la Plataforma para prestar el Servicio, así como las zonas u horarios. Ello implica que el Profesionales de Belleza no está sujeto a ingresar a la Plataforma y/o a aceptar Servicios dentro de plazo alguno, pudiendo hacerlo o no con la periodicidad que desee, sin que ello implique la baja su Cuenta."),
              SizedBox(height: 7),
              _buildParraf("2.3. Dado que BELLAVÁ no presta servicios de Belleza, sino que solo es intermediario entre el Consumidor que solicita el Servicio y el Profesional de Belleza que acepta la realización de dicho Servicio, no participando BELLAVÁ del Servicio que se realiza entre ellos, el Profesional de Belleza será responsable por todas las obligaciones y cargas impositivas y de la seguridad social que le puedan corresponder de acuerdo a la legislación aplicable por la prestación del Servicio, sin que pudiera imputársele a BELLAVÁ responsabilidad alguna por incumplimientos en tal sentido por parte del Profesional de Belleza. "),
              SizedBox(height: 7),
              _buildParraf("2.4. El Profesional de Belleza es el único responsable por el uso de su Cuenta y por la prestación de los Servicios. Resulta obligatorio para el Profesional de Belleza dar cumplimiento con toda la normativa aplicable para la prestación del Servicio."),
              SizedBox(height: 7),
              _buildParraf("2.5. Entre los Profesionales de Bellezas y BELLAVÁ no hay relación de exclusividad alguna, pudiendo los Profesionales de Bellezas prestar servicios libremente con cualquier otra plataforma similar a BELLAVÁ, aun mientras se encuentran conectados a la Plataforma.  "),
              SizedBox(height: 10),
              _buildSubTitle("TERCERA. Uso de la Plataforma"),
              SizedBox(height: 7),
              _buildParraf("3.1. BELLAVÁ estará facultado para denegar o restringir el acceso o posterior uso de la Plataforma a cualquier Profesionales de Belleza bajo su exclusivo criterio, sin que ello importe posibilidad de reclamar perjuicio alguno por parte del Profesionales de Belleza. El mismo se compromete a hacer un uso adecuado y lícito de la Plataforma de conformidad con la legislación aplicable, los presentes Términos y Condiciones, la moral y buenas costumbres generalmente aceptadas y el orden público. No obstante, la condición de independiente, al acceder y utilizar la Plataforma y durante la prestación de los Servicios, el Profesionales de Belleza acepta a:"),
              SizedBox(height: 7),
              _buildParraf("•	Prestar el Servicio para su uso personal, no pudiendo ceder su Cuenta a un tercero, como tampoco podrá subcontratar los servicios de terceros para la prestación de los Servicios"),
              SizedBox(height: 7),
              _buildParraf("•	No autorizar a terceros a usar su Cuenta, haciéndose completamente responsable por los actos que cualquier otra persona humana o jurídica realice a su nombre con o sin su consentimiento."),
              SizedBox(height: 7),
              _buildParraf("•	No utilizar una cuenta que esté sujeta a cualquier derecho de una persona que no sea el Profesional de Belleza sin la autorización adecuada."),
              SizedBox(height: 7),
              _buildParraf("•	No prestar el Servicio con fines ilícitos, ilegales, contrarios a lo establecido en los presentes Términos y Condiciones, a la legislación aplicable, a la buena fe y al orden público, lesivos de los derechos e intereses de terceros incluyendo, sin limitación, el transporte de material ilegal o con fines fraudulentos."),
              SizedBox(height: 7),
              _buildParraf("•	No dañar el Servicio o la Plataforma de ningún modo, ni acceder a recursos restringidos en la Plataforma."),
               SizedBox(height: 7),
              _buildParraf("•	Guardar de forma segura y confidencial la contraseña de su Cuenta y cualquier identificación facilitada para permitirle el acceso y uso de la Plataforma como así también la prestación de los Servicios."),
               SizedBox(height: 7),
              _buildParraf("•	No acceder, utilizar y/o manipular los datos de BELLAVÁ, Consumidores, aliados de BELLAVÁ y/u otros Profesionales de Bellezas."),
               SizedBox(height: 7),
              _buildParraf("3.2. No introducir ni difundir virus informáticos o cualesquiera otros sistemas físicos o lógicos que sean susceptibles de provocar daños en la Plataforma y/o dispositivos de terceros, de los Consumidores, comercios u otros Profesionales de Bellezas."),
              SizedBox(height: 10),
              _buildSubTitle("CUARTA. Tarifas. Facturación"),
              SizedBox(height: 7),
              _buildParraf("4.1. BELLAVÁ fijará y modificará de manera exclusiva la tarifa del Servicio a ser abonada por el Consumidor la cual se verá reflejada en la solicitud del Servicio que reciba el Profesionales de Belleza en su Cuenta, según el servicio de belleza a prestar y/otros parámetros por BELLAVÁ, debiendo el Consumidor pagar dicho Servicio a BELLAVÁ mediante los medios de pagos autorizados en su plataforma. El Profesionales de Belleza podrá negarse a aceptar la realización de un Servicio en caso de no estar de acuerdo con la tarifa a cobrar, toda vez que el acceso y uso de la Plataforma como así también la prestación del Servicio solicitado por el Consumidor es de carácter voluntario y no obligatorio para el Profesionales de Belleza. "),
              SizedBox(height: 7),
              _buildParraf("4.2. En caso que el Servicio sea abonado con tarjeta de crédito, débito o cualquier otro medio electrónico de pago, BELLAVÁ cobrará la tarifa por cuenta y orden del Profesional de Belleza, siendo liquidado conforme al punto siguiente. En caso de ser abonado el Servicio en efectivo, el Profesionales de Belleza cobrará en forma directa la tarifa del Servicio al Consumidor. Luego, el Profesional de Belleza tendrá 3 días hábiles para depositar dicho dinero en la cuenta provista por Bellavá. De no ser cumplido, se le aplicaran sanciones a determinar según el grado de incumplimiento."),
              SizedBox(height: 7),
              _buildParraf("4.3.  BELLAVÁ practicará la liquidación de los Servicios cuanto antes a través de Mercado Pago o cualquier otra billetera electrónica que crea conveniente."),
              SizedBox(height: 7),
              _buildParraf("4.4. El Profesionales de Belleza por medio de los presentes autoriza y faculta a BELLAVÁ a llevar a cabo las medidas judiciales y extrajudiciales que estime pertinentes para obtener el pago del monto debido por parte del Consumidor en virtud del Servicio prestado por el Profesional de Belleza"),
              SizedBox(height: 7),
              _buildParraf("4.5. Dado que el Profesional de Belleza es independiente, deberá emitir a favor del Consumidor la correspondiente factura por la totalidad del monto abonado por el Consumidor en relación al prestado."),
              SizedBox(height: 10),
              _buildSubTitle("QUINTA: Indemnidad y Responsabilidad. Independencia de las Partes"),
              SizedBox(height: 7),
              _buildParraf("5.1. El Profesionales de Belleza reconoce y asume como propia toda responsabilidad y riesgo que se presente a raíz de la prestación del Servicio solicitado por el Consumidor, ya sea que sean realizados durante la prestación del mismo o no, así como también por los daños, pérdidas, roturas o extravíos en el transporte de cosas, liberando en todo momento a BELLAVÁ de cualquier reclamo efectuado por el Usuario respecto de la calidad, cantidad, estado, integridad o legitimidad de los servicio y/o productos a ser transportados y brindados por el Profesional de Belleza, así como de la capacidad para contratar del Profesionales de Belleza y/o del Consumidor o de la veracidad de sus datos personales por ellos ingresados para la prestación de los Servicios, entre otros. En ningún caso BELLAVÁ será responsable por lucro cesante, o por cualquier otro daño y/o perjuicio que haya podido sufrir el Profesionales de Belleza, ya sea en forma directa y/o indirecta, debido al Servicio prestado a través de la Plataforma."),
              SizedBox(height: 7),
              _buildParraf("5.2. El Profesionales de Belleza se compromete a contratar un seguro para el caso hurto, robo, incendio o desperfecto eléctrico que pueda dañar el material/insumos propios."),
              SizedBox(height: 7),
              _buildParraf("5.3. Asimismo, las Partes reconocen que el Profesional de Belleza no tiene, ni tendrá relación laboral de dependencia con BELLAVÁ, siendo ambas partes autónomas e independientes entre sí, por lo tanto, responsables individualmente por sus obligaciones derivadas de la legislación aplicable. Tampoco crean ningún contrato de sociedad, de mandato, de franquicia entre BELLAVÁ y el Profesional de Belleza. "),
              SizedBox(height: 7),
              _buildParraf("5.4. El Profesional de Belleza se compromete a estar dado de alta ante AFIP, así como de los distintos organismos fiscales que puedan corresponder, a los fines de poder tributar"),
              SizedBox(height: 7),
              _buildParraf("5.5. El Profesional de Belleza deberá utilizar los productos e insumos recomendados por Bellavá de manera consiente y estandarizada, sujeto a sanción en caso de incumplimiento. BELLAVÁ recomienda actuar con prudencia y sentido común al momento de prestar el Servicio, debiendo para ello respetar la normativa aplicable relacionada a la prestación del mismo. En caso que uno o más Consumidores o algún tercero inicien cualquier tipo de reclamo o acciones legales contra un Profesional de Belleza y/o BELLAVÁ, dicho Profesional de Belleza exime de toda responsabilidad a BELLAVÁ y acuerda que mantendrá al mismo indemne de acuerdo a lo previsto en los presentes Términos y Condiciones."),
              SizedBox(height: 7),
              _buildParraf("5.6. El Profesional de Belleza se compromete a respetar todos los estándares brindados por BELLAVÁ, siendo susceptible de sanción en caso de incumplimiento"),
              SizedBox(height: 10),
              _buildSubTitle("SEXTA: Uso y Garantía de la Aplicación"),
              SizedBox(height: 7),
              _buildParraf("6.1. BELLAVÁ no garantiza la disponibilidad y continuidad del funcionamiento y/o acceso a la Plataforma. En consecuencia, BELLAVÁ no será en ningún caso responsable por cualesquiera daños y perjuicios que puedan derivarse de (i) la falta de disponibilidad o accesibilidad a la Plataforma, ya sea por fallas de BELLAVÁ y/o ajenas a ésta; (ii) la interrupción en el funcionamiento de la Plataforma y/o fallos informáticos, averías telefónicas, desconexiones, retrasos o bloqueos causados por deficiencias o sobrecargas en las líneas telefónicas, centros de datos, en el sistema de Internet o en otros sistemas electrónicos, producidos en el curso de su funcionamiento; y (iii) otros daños que puedan ser causados por terceros mediante intromisiones no autorizadas ajenas o no al control de BELLAVÁ"),
              SizedBox(height: 7),
              _buildParraf("6.2. BELLAVÁ no garantiza la ausencia de virus informáticos ni de otros elementos en la Plataforma introducidos por terceros ajenos a BELLAVÁ que puedan producir alteraciones en los sistemas electrónicos y/o lógicos de los Profesionales de Belleza y/o en los documentos electrónicos y ficheros almacenados en sus sistemas. En consecuencia, BELLAVÁ no será en ningún caso responsable de cualesquiera daños y perjuicios de toda naturaleza que pudieran derivarse de la presencia de virus y/u otros elementos que puedan producir alteraciones en los sistemas físicos y/o lógicos, documentos electrónicos y/o ficheros del Profesional de Belleza."),
              SizedBox(height: 7),
              _buildParraf("6.3. BELLAVÁ adopta diversas medidas de protección para proteger la Plataforma y los contenidos contra ataques informáticos de terceros. No obstante, BELLAVÁ no garantiza que terceros no autorizados no puedan conocer las condiciones, características y circunstancias en las cuales el Profesional de Belleza accede a la Plataforma. En consecuencia, BELLAVÁ no será en ningún caso responsable de los daños y perjuicios que pudieran derivarse de dicho acceso no autorizado."),
              SizedBox(height: 7),
              _buildParraf("6.4. Mediante el acceso a la Plataforma y consecuente aceptación de los presentes Términos y Condiciones, Ud. declara que mantendrá indemne a BELLAVÁ, su sociedad matriz, representantes legales, directores, socios, empleados, consultores y agentes frente a cualquier reclamo derivado del (i) incumplimiento por parte del Profesionales de Belleza de cualquier disposición contenida los presentes en los Términos y Condiciones y/o de cualquier ley o regulación aplicable a las mismas, (ii) incumplimiento o violación de los derechos de terceros incluyendo, a título meramente enunciativo, otros Profesionales de Bellezas, peatones, ciclistas o motociclistas; y (iii) incumplimiento del uso permitido de la Plataforma."),
              SizedBox(height: 10),
              _buildSubTitle("SEPTIMA: Derechos de Propiedad Intelectual e Industrial"),
              SizedBox(height: 7),
              _buildParraf("7.1. Todos los derechos de propiedad intelectual e industrial sobre los contenidos y/o cualesquiera otros elementos insertados en la Plataforma son propiedad exclusiva de BELLAVÁ siendo reconocido por los usuarios, no implicando el acceso a la plataforma y/o aceptación de los presentes, cesión de derecho alguno a favor del Profesional de Belleza."),
              SizedBox(height: 7),
              _buildParraf("7.2. BELLAVÁ autoriza al Profesional de Belleza a utilizar, visualizar, imprimir, descargar y almacenar los contenidos y/o los elementos insertados en la Plataforma exclusivamente para su uso personal y privado y únicamente relacionados con la prestación de los Servicios, salvo en los casos que exceptúe y decida BELLAVÁ libremente, absteniéndose de realizar sobre los mismos cualquier acto de des compilación, ingeniería inversa, modificación, divulgación o suministro. Cualquier otro uso y/o explotación de cualesquiera contenidos y/u otros elementos insertados en la Plataforma distinto de los aquí expresamente previstos estará sujeto a la autorización previa y por escrito de BELLAVÁ."),
              SizedBox(height: 10),
              _buildSubTitle("OCTAVA: Protección de Datos"),
              SizedBox(height: 7),
              _buildParraf("8.1. Los Datos Personas que Ud. proporciona en el Registro se integrarán en una base de datos personales del que es responsable BELLAVÁ, cuya dirección figura en el encabezamiento del presente documento. El Profesional de Belleza autoriza para que BELLAVÁ almacene, guarde, transfiera o transmita los datos personales a servidores ubicados en la República Argentina o en el exterior, todo ello de acuerdo a la legislación aplicable y a las Políticas de Privacidad de BELLAVÁ."),
              SizedBox(height: 10),
              _buildSubTitle("NOVENA: Notificaciones"),
             
              SizedBox(height: 7),
              _buildParraf("9.1. BELLAVÁ estará facultado para realizar las notificaciones oportunas a través de una notificación general en la Plataforma."),
              SizedBox(height: 10),
              _buildSubTitle("DECIMA: Cesión"),
              SizedBox(height: 7),
              _buildParraf("10.1. El Profesional de Belleza no podrá ceder sus derechos y obligaciones previstos en los Términos y Condiciones sin el previo consentimiento escrito de BELLAVÁ. BELLAVÁ podrá ceder, sin necesidad de recabar el consentimiento previo del Profesional de Belleza, los presentes Términos y Condiciones a cualquier entidad comprendida dentro de su grupo de sociedades, en todo el mundo, así como a cualquier persona o entidad que le suceda en el ejercicio de su negocio por cualesquiera títulos."),
              SizedBox(height: 10),
              _buildSubTitle("DECIMA PRIMERA: Ley Aplicable y Jurisdicción"),
              SizedBox(height: 7),
              _buildParraf("10.1. Los presentes Términos y Condiciones se regirán e interpretarán con arreglo a la legislación vigente en la República Argentina"),
              SizedBox(height: 50),
           
                          ],),
          ),
          
          Center(
          heightFactor: 50,
          child: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom:10),
            child: Container(
              
              child: ButtonGreen(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                text:"Listo" ,
                onPressed: (){
                  Navigator.pop(context);
                },
                ),
            ),
          ),
        ),
        
        ],
      ),
    );
  }


}