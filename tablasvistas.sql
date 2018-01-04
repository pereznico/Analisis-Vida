  -- Create table
create table A1000900
(
-- cod_cia              NUMBER(2) not null,
--  abr_cia              VARCHAR2(5) not null,
--  nom_cia              VARCHAR2(50) not null,
--  nom_cor_cia          VARCHAR2(10) not null,
--  nom_razon_social     VARCHAR2(30) not null,
--  tip_docum_cia        VARCHAR2(3) not null,
--  cod_docum_cia        VARCHAR2(20) not null,
--  ape_resp_cia         VARCHAR2(30),
--  nom_resp_cia         VARCHAR2(30),
--  tip_domicilio        NUMBER(3),
--  nom_domicilio1       VARCHAR2(40),
--  nom_domicilio2       VARCHAR2(40),
--  nom_domicilio3       VARCHAR2(40),
  cod_pais             VARCHAR2(3) not null,
  cod_prov             NUMBER(5),
  num_apartado         VARCHAR2(15),
  nom_localidad        VARCHAR2(30),
  cod_postal           VARCHAR2(15),
--  tlf_pais             VARCHAR2(3),
--  tlf_zona             VARCHAR2(5),
--  tlf_numero           VARCHAR2(10),
  fax_numero           VARCHAR2(10),
  email                VARCHAR2(60),
  cod_mon              NUMBER(2) not null,
  cod_cia_patronal     VARCHAR2(5),
  cod_usr              VARCHAR2(8) not null,
  fec_actu             DATE not null,
  cod_estado           NUMBER(2),
  cod_imptos_munic     VARCHAR2(3),
  cod_localidad        NUMBER(5),
  cod_cia_financiera   NUMBER(2),
  mca_mon_local_origen VARCHAR2(1) not null
);

-- Add comments to the table 
comment on table A1000900
  is 'TABLA DE COMPAYIAS';
-- Add comments to the columns 
comment on column A1000900.cod_cia
  is 'CODIGO DE LA COMPANIA ';
comment on column A1000900.abr_cia
  is 'ABREVIATURA DE LA COMPANIA ';
comment on column A1000900.nom_cia
  is 'NOMBRE  DE LA COMPANIA ';
comment on column A1000900.nom_cor_cia
  is 'NOMBRE CORTO DE LA COMPANIA ';
comment on column A1000900.nom_razon_social
  is 'RAZON SOCIAL DE LA COMPANIA ';
comment on column A1000900.tip_docum_cia
  is 'TIPO DE DOCUMENTO ';
comment on column A1000900.cod_docum_cia
  is 'CODIGO DE DOCUMENTO TERCERO ';
comment on column A1000900.ape_resp_cia
  is 'APELLIDO DE RESPONSABLE DE LA COMPANIA ';
comment on column A1000900.nom_resp_cia
  is 'NOMBRE DEL RESPONSABLE DE LA COMPANIA ';
comment on column A1000900.tip_domicilio
  is 'TIPO DE DOMICILIO, CALLE/AVENIDA, ETC ';
comment on column A1000900.nom_domicilio1
  is 'DOMICILIO DE LA COMPAYIA COASEGURADORA. LINEA1';
comment on column A1000900.nom_domicilio2
  is 'DOMICILIO DE LA COMPAYIA COASEGURADORA. LINEA2';
comment on column A1000900.nom_domicilio3
  is 'DOMICILIO DE LA COMPAYIA COASEGURADORA. LINEA3';
comment on column A1000900.cod_pais
  is 'CODIGO DE PAIS DE LA COMPAYIA ';
comment on column A1000900.cod_prov
  is 'CODIGO PROVINCIA - LOCALIDAD';
comment on column A1000900.num_apartado
  is 'NUMERO DEL APARTADO POSTAL DE LA COMPAYIA';
comment on column A1000900.nom_localidad
  is 'NOMBRE DE LA LOCALIDAD DE LA COMPAYIA';
comment on column A1000900.cod_postal
  is 'DISTRITO POSTAL DE LA COMPANIA ';
comment on column A1000900.tlf_pais
  is 'PREFIJO TELEFONO DEL PAIS';
comment on column A1000900.tlf_zona
  is 'PREFIJO DE LA ZONA';
comment on column A1000900.tlf_numero
  is 'NUMERO DEL TELEFONO';
comment on column A1000900.fax_numero
  is 'NUMERO DEL FAX';
comment on column A1000900.email
  is 'CLAVE DE EMAIL ';
comment on column A1000900.cod_mon
  is 'CODIGO DE MONEDA DE LA COMPA?IA ';
comment on column A1000900.cod_cia_patronal
  is 'CODIGO DE LA PATRONAL';
comment on column A1000900.cod_usr
  is 'CODIGO DE USUARIO QUE ACTUALIZA LA TABLA ';
comment on column A1000900.fec_actu
  is 'FECHA EN QUE SE ACTUALIZA LA TABLA ';
comment on column A1000900.cod_estado
  is 'CODIGO DEL ESTADO';
comment on column A1000900.cod_imptos_munic
  is 'CODIGO DE IMPUESTO MUNICIPAL';
comment on column A1000900.cod_localidad
  is 'CODIGO DE LOCALIDAD';
comment on column A1000900.cod_cia_financiera
  is 'CODIGO DE LA COMPAYIA FINANCIERA';
comment on column A1000900.mca_mon_local_origen
  is '(S) EL CAMBIO DE MONEDAS TOM A COMO REFERENCIA LA MONEDA DEL PAIS, (N) TOMA COMO REFERENCIA LA MONEDA EXTRANJERA';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1000900
  add constraint PK_A1000900 primary key (COD_CIA)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
  -- Create table
create table A1000200
(
  cod_cia                   NUMBER(2) not null,
  cod_sector                NUMBER(4) not null,
  nom_sector                VARCHAR2(30) not null,
  abr_sector                VARCHAR2(5) not null,
  num_pol_reserva           NUMBER(3) not null,
  num_sol_reserva           NUMBER(3),
  mca_subsector_estadistico VARCHAR2(1) not null,
  mca_emision               VARCHAR2(1) not null,
  cod_usr                   VARCHAR2(8) not null,
  fec_actu                  DATE not null
)
comment on table A1000200
  is 'SECTORES ( AGRUPACION DE RAMOS) DE LA COMPA?IA. PRIMER NIVEL DE LA ESTRUCTURA DE PRODUCTOS';
  
  
 



-- Create table
create table A1001800
(
--  cod_cia                      NUMBER(2) not null,
--  cod_sector                   NUMBER(4) not null,
--  cod_subsector                NUMBER(4) not null,
--  cod_ramo                     NUMBER(3) not null,
--  nom_ramo                     VARCHAR2(30) not null,
--  abr_ramo                     VARCHAR2(5) not null,
--  mca_clausula                 VARCHAR2(1) not null,
--  mca_anexo                    VARCHAR2(1) not null,
--  mca_prorrata                 VARCHAR2(1) not null,
--  mca_cambia_prorrata          VARCHAR2(1) not null,
--  mca_riesgos                  VARCHAR2(1) not null,
--  mca_periodos                 VARCHAR2(1) not null,
--  mca_recibo_por_periodo       VARCHAR2(1) not null,
--  mca_emision                  VARCHAR2(1) not null,
--  mca_cambio_nivel_3           VARCHAR2(1) not null,
--  mca_calcula_fracc_pago       VARCHAR2(1) not null,
--  mca_spto_en_plan_pago        VARCHAR2(1) not null,
--  mca_cambio_plan_pago         VARCHAR2(1) not null,
--  mca_certificados             VARCHAR2(1) not null,
--  mca_inh                      VARCHAR2(1) not null,
--  mca_comis_coa_ext            VARCHAR2(1) not null,
--  mca_365_dias                 VARCHAR2(1) not null,
--  mca_obliga_presupuesto       VARCHAR2(1) not null,
--  mca_autoriza_presupuesto     VARCHAR2(1) not null,
--  mca_cambio_num_poliza        VARCHAR2(1) not null,
--  mca_cambio_num_poliza_apli   VARCHAR2(1) not null,
--  mca_val_stro_en_spto         VARCHAR2(1) not null,
--  mca_remesa_recibo            VARCHAR2(1) not null,
--  mca_recibo_manual            VARCHAR2(1) not null,
--  mca_comis_manual             VARCHAR2(1) not null,
--  NominaPagadora
--  mca_busca_insp_emision       VARCHAR2(1) not null,
--  mca_emision_sin_recibo       VARCHAR2(1) not null,
--  mca_reutiliza_presupuesto    VARCHAR2(1) not null,
--  mca_reutiliza_declaracion    VARCHAR2(1) not null,
--  mca_aplica_at_en_riesgo      VARCHAR2(1) not null,
--  tip_coaseguro_permitido      NUMBER(1) not null,
--  mca_cuadro_coaseguro_obl     VARCHAR2(1) not null,
  tip_primas_manuales          VARCHAR2(1) not null,
--  num_agt                      NUMBER(1) not null,
--  num_riesgos_traspaso_directo NUMBER(5) not null,
--  num_riesgos_impresion        NUMBER(5) not null,
  nom_prg_riesgo               VARCHAR2(61) not null,
--  tip_formacion_modalidad      VARCHAR2(3) not null,
--  cod_usr                      VARCHAR2(8) not null,
--  fec_actu                     DATE not null,
--  nom_prg_busca_insp_emision   VARCHAR2(61),
--  cod_tratamiento              VARCHAR2(1) not null,
--  cod_tratamiento_sini         VARCHAR2(1) not null,
 -- cod_tratamiento_ctable       VARCHAR2(1) not null,
--  nom_prg_emision_sin_recibo   VARCHAR2(61),
--  cod_proceso                  VARCHAR2(8),
--  cod_proceso_p                VARCHAR2(8),
--  cod_proceso_r                VARCHAR2(8),
--  cod_est_dv_poliza            VARCHAR2(10),
--  cod_est_riesgo               VARCHAR2(10),
--  cod_est_modalidad            VARCHAR2(10),
--  cod_est_accesorios           VARCHAR2(10),
--  cod_est_plan_pago            VARCHAR2(10),
--  cod_est_inspec               VARCHAR2(10),
--  nom_prg_coef_cob             VARCHAR2(61),
--  nom_prg_busca_insp           VARCHAR2(61),
--  nom_prg_excluye_insp         VARCHAR2(61),
--  tip_dst_comis                NUMBER(1),
--  nom_prg_dst_comis            VARCHAR2(61),
--  nom_prg_remesa_recibo        VARCHAR2(61),
--  mca_mod_org_ase              VARCHAR2(1) not null,
--  mca_mod_com_cuota_interv     VARCHAR2(1) not null,
--  mca_rechazo_susp_a_todos     VARCHAR2(1) not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001800
  is 'RAMOS DE LA COMPANIA';
-- Add comments to the columns 
comment on column A1001800.cod_cia
  is 'CODIGO DE COMPA?IA';
comment on column A1001800.cod_sector
  is 'CODIGO DE SECTOR';
comment on column A1001800.cod_subsector
  is 'CODIGO DE SUBSECTOR';
comment on column A1001800.cod_ramo
  is 'CODIGO DEL RAMO';
comment on column A1001800.nom_ramo
  is 'NOMBRE DEL RAMO';
comment on column A1001800.abr_ramo
  is 'ABREVIATURA DEL RAMO';
comment on column A1001800.mca_clausula
  is 'TIENE CLAUSULAS ASOCIADAS';
comment on column A1001800.mca_anexo
  is 'PUEDE INCLUIRSE TEXTO LIBRE';
comment on column A1001800.mca_prorrata
  is 'LAS POLIZAS TEMPORALES SE CALCULA A PRORRATA O ESCALA';
comment on column A1001800.mca_cambia_prorrata
  is 'SI EN EMISION EL CAMPO QUE INDICA SI SE CALCULA A PRORRATA O ESCALA ES MODIFICABLE';
comment on column A1001800.mca_riesgos
  is 'SE PERMITE QUE LAS POLIZAS DEL RAMO TENGAN MAS DE UN RIESGO';
comment on column A1001800.mca_periodos
  is 'SE PERMITEN EMISIONES DE MAS DE UN PERIODO';
comment on column A1001800.mca_recibo_por_periodo
  is 'POLIZAS MULTIPERIODO CON RECIBOS POR EL PERIODO COMPLETO O RECIBOS POR CADA UNO DE LOS PERIODOS';
comment on column A1001800.mca_emision
  is 'RAMO REAL O FICTICIO';
comment on column A1001800.mca_cambio_nivel_3
  is 'SI PERMITE LA MODIFICACION DE LA OFICINA COMERCIAL EN LA EMISION';
comment on column A1001800.mca_calcula_fracc_pago
  is 'NO SE USA';
comment on column A1001800.mca_spto_en_plan_pago
  is 'UN CAMBIO DE PLAN DE PAGO GENERA UN SUPLEMENTO (SM)';
comment on column A1001800.mca_cambio_plan_pago
  is 'SI PERMITE CAMBIAR DE PLAN DE PAGO EN SUPLEMENTOS';
comment on column A1001800.mca_certificados
  is 'EL RAMO TRABAJA CON CERTIFICADOS';
comment on column A1001800.mca_inh
  is 'RAMO INHABILITADO';
comment on column A1001800.mca_comis_coa_ext
  is 'INDICA EN CASO DE COASEGURO CEDIDO, SI SE PERMITE DEJAR LA COMISION SIN VALOR.';
comment on column A1001800.mca_365_dias
  is 'NUMERO DE DIAS PARA CALCULO, (S)/365, (N)/360';
comment on column A1001800.mca_obliga_presupuesto
  is 'NO SE PUEDE EMITIR SI NO EXISTE UN PRESUPUESTO';
comment on column A1001800.mca_autoriza_presupuesto
  is 'SE DEBEN AUTORIZAR LOS CONTROLES TECNICOS QUE SALTEN EN PRESUPUESTOS ANTES DE PODER EMITIR';
comment on column A1001800.mca_cambio_num_poliza
  is 'EN CASO DE EMISION/RENOVACION, SE CAMBIA EL NUMERO DE POLIZA';
comment on column A1001800.mca_cambio_num_poliza_apli
  is 'CAMBIO DE NUMERO POLIZA EN APLICACIONES';
comment on column A1001800.mca_val_stro_en_spto
  is 'SE COMPRUEBA LA EXISTENCIA DE SINIESTROS EN CASO DE REALIZAR UN SUPLEMENTO';
comment on column A1001800.mca_remesa_recibo
  is 'LOS RECIBOS SALEN REMESADOS';
comment on column A1001800.mca_recibo_manual
  is 'SE PERMITE LA MODIFICACION MANUAL DE RECIBOS (SI EL ROL LO PERMITE)';
comment on column A1001800.mca_comis_manual
  is 'SE PERMITE LA MODIFICACION MANUAL DE COMISIONES (SI EL ROL LO PERMITE)';
comment on column A1001800.mca_busca_insp_emision
  is 'SI LA BUSQUEDA DE INSPECCION SE HARA EN LA EMISION';
comment on column A1001800.mca_emision_sin_recibo
  is 'SE PERMITE LA EMISION DE POLIZAS SIN RECIBO';
comment on column A1001800.mca_reutiliza_presupuesto
  is 'INDICA SI SE PERMITE REUTILIZAR UN PRESUPUESTO QUE YA HA SIDO TRASPASADO A POLIZA';
comment on column A1001800.mca_reutiliza_declaracion
  is 'INDICA SI SE PERMITE REUTILIZAR UNA DECLARACION QUE YA HA SIDO TRASPASADA A APLICACION';
comment on column A1001800.mca_aplica_at_en_riesgo
  is 'INDICA SI AL DAR DE BAJA UN RIESGO, EL CALCULO SERA COMO LA ANULACION DE POLIZAS (COEF_ANULACION)';
comment on column A1001800.tip_coaseguro_permitido
  is 'TIPO DE COASEGURO PERMITIDO (0)NO COASEGURO, (1)CEDIDO, (2)ACEPTADO, (3)AMBOS';
comment on column A1001800.mca_cuadro_coaseguro_obl
  is 'SI EL RAMO PERMITE COASEGURO CEDIDO, SI LAS EMISIONES SE REALIZAN SOLO MEDIANTE CUADROS DE COASEGURO PREDEFINIDOS';
comment on column A1001800.tip_primas_manuales
  is 'FORMAS PERIMITIDAS DEL CALCULO';
comment on column A1001800.num_agt
  is 'NUMERO DE AGENTES PERMITIDOS (PRINCIPAL MAS SECUNDARIOS)';
comment on column A1001800.num_riesgos_traspaso_directo
  is 'NUMERO DE RIESGOS MAXIMO PARA TRANSPASO DIRECTO';
comment on column A1001800.num_riesgos_impresion
  is 'NUMERO DE RIESGOS MAXIMO PARA IMPRESION "ON LINE"';
comment on column A1001800.nom_prg_riesgo
  is 'OBJETO QUE GENERA LA DESCRIPCION DEL RIESGO';
comment on column A1001800.tip_formacion_modalidad
  is 'MANERA DE FORMAR MODALIDADES';
comment on column A1001800.cod_usr
  is 'DE USUARIO QUE ACTUALIZA';
comment on column A1001800.fec_actu
  is 'FECHA DE ULTIMA ACTUALIZACION';
comment on column A1001800.nom_prg_busca_insp_emision
  is 'OBJETO PARA DETERMINAR SI SE BUSCA LA INSPECCION EN LA EMISION';
comment on column A1001800.cod_tratamiento
  is 'CODIGO DE TRATAMIENTO PARA EMISION';
comment on column A1001800.cod_tratamiento_sini
  is 'CODIGO DE TRATAMIENTO PARA SINIESTROS';
comment on column A1001800.cod_tratamiento_ctable
  is 'CODIGO DE TRATAMIENTO PARA CONTABILIDAD';
comment on column A1001800.nom_prg_emision_sin_recibo
  is 'OBJETO QUE DETERMINA CUANDO SE PERMITE UNA EMISION SIN RECIBO';
comment on column A1001800.cod_proceso
  is 'CODIGO DE PROCESO QUE IMPRIME LAS CONDICIONES PARTICULARES';
comment on column A1001800.cod_proceso_p
  is 'CODIGO DE PROCESO QUE IMPRIME UN PRESUPUESTO';
comment on column A1001800.cod_proceso_r
  is 'PROCESO QUE SE EJECUTA SI SE RECHAZA UNA POLIZA RETENIDA POR C. TECNICO';
comment on column A1001800.cod_est_dv_poliza
  is 'CODIGO DE ESTRUCTURA PARA LA PETICION DE DATOS VARIABLES NIVEL DE POLIZA';
comment on column A1001800.cod_est_riesgo
  is 'CODIGO DE ESTRUCTURA PARA LA PETICION DE DATOS VARIABLES NIVEL DE RIESGO';
comment on column A1001800.cod_est_modalidad
  is 'CODIGO DE ESTRUCTURA PARA LA PE TICION DE DATOS VARIABLES NIVEL DE MODALIDAD';
comment on column A1001800.cod_est_accesorios
  is 'CODIGO DE ESTRUCTURA PARA LA PETICION DE ACCESORIOS';
comment on column A1001800.cod_est_plan_pago
  is 'CODIGO DE ESTRUCTURA PARA LA PETICION DEL PLAN DE PAGO';
comment on column A1001800.cod_est_inspec
  is 'CODIGO DE ESTRUCTURA PARA LA INSPECCION';
comment on column A1001800.nom_prg_coef_cob
  is 'OBJETO QUE RECUPERA EL COEFICIENTE DE CONSTITUCION';
comment on column A1001800.nom_prg_busca_insp
  is 'OBJETO QUE DEVUELVE LA INSPECCION QUE SE DEBE ASOCIAR AL RIESGO';
comment on column A1001800.nom_prg_excluye_insp
  is 'OBJETO QUE DETERMINA SI SE EXCLUYE LA OBLIGATORIEDAD DE LA INSPECCION PARA EL RIESGO';
comment on column A1001800.tip_dst_comis
  is 'TIPO DE DISTRIBUCION DE COMISIONES EN CUOTAS 1- PROPORCIONAL 2- 100% A LA PRIMERA CUOTA (FORMAS DE PAGO)';
comment on column A1001800.nom_prg_dst_comis
  is 'OBJETO QUE DETERMINA EL TIPO DE DISTRIBUCION DE LAS COMISIONES';
comment on column A1001800.mca_mod_org_ase
  is 'Permite modificar el codigo de organizador o asesor del agente';
comment on column A1001800.mca_mod_com_cuota_interv
  is 'Permite modificar el porcentaje de comision por cuota e intervencion';
comment on column A1001800.mca_rechazo_susp_a_todos
  is 'Permite emitir a cualquier usuario las polizas rechazadas suspendidas';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001800
  add constraint PK_A1001800 primary key (COD_RAMO, COD_CIA)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  create table A1002050
(
  cod_cia  NUMBER(2) not null,
  cod_cob  NUMBER(4) not null,
  nom_cob  VARCHAR2(30) not null,
  tip_cob  VARCHAR2(1) not null,
  mca_inh  VARCHAR2(1) not null,
  cod_usr  VARCHAR2(8) not null,
  fec_actu DATE not null
)
comment on column A1002050.tip_cob
  is 'TIPO DE COBERTURA:1.- INFORMATIVA2.- BASICA ADICIONAL3.- REAL DEPENDIENTE4.- REAL INDEPENDIENTE5.- R ';
  
  
-- Create table
create table A1002150
(
--  cod_cia                        NUMBER(2) not null,
--  cod_ramo                       NUMBER(3) not null,
--  cod_modalidad                  NUMBER(5) not null,
--  num_secu                       NUMBER(4) not null,
--  cod_cob                        NUMBER(4) not null,
--  nom_cob                        VARCHAR2(30) not null,
--  cod_mon_capital                NUMBER(2),
--  mca_unidad                     VARCHAR2(1) not null,
--  imp_unidad                     NUMBER,
--  mca_tip_capital                VARCHAR2(1),
--  cod_cob_relacionada            NUMBER(4),
--  pct_participacion              NUMBER,
--  mca_pct_participaci-on_variable VARCHAR2(1),
--  nom_prg_pre_cob                VARCHAR2(61),
--  cod_agrup_cob_1                VARCHAR2(5),
 -- cod_agrup_cob_2                VARCHAR2(5),
--  cod_agrup_cob_3                VARCHAR2(5),
--  cod_agrup_cob_4                VARCHAR2(5),
--  cod_ramo_ctable                VARCHAR2(9),
--  coef_inventario                NUMBER,
--  mca_imp_obligatoria            VARCHAR2(1) not null,
--  mca_accesorios                 VARCHAR2(1) not null,
--  mca_franquicia                 VARCHAR2(1) not null,
--  mca_boni                       VARCHAR2(1) not null,
--  mca_sobre_tasas                VARCHAR2(1) not null,
--  mca_comis_npr                  VARCHAR2(1) not null,
  --mca_comis_car                  VARCHAR2(1) not null,
--  mca_obligatorio                VARCHAR2(1) not null,
--  mca_inh                        VARCHAR2(1) not null,
--  mca_mod_suma_aseg              VARCHAR2(1) not null,
--  mca_baja_suma_aseg_stro        VARCHAR2(1) not null,
  --mca_reaseguro                  VARCHAR2(1) not null,
  --mca_financiable                VARCHAR2(1) not null,
 -- mca_inspec                     VARCHAR2(1) not null,
--  mca_nuevo_capital              VARCHAR2(1) not null,
--  tip_regulariza                 VARCHAR2(1) not null,
--  tip_regulariza_esp             VARCHAR2(1),
--  pct_regulariza_esp             NUMBER,
--  cod_indice                     NUMBER(2),
--  nom_prg_regulariza_esp         VARCHAR2(61),
--  cod_mon_tarifa                 NUMBER(2),
--  tip_calculo_cob                VARCHAR2(2) not null,
--  tasa_calculo                   NUMBER,
--  imp_calculo                    NUMBER,
--  nom_tabla_calculo              VARCHAR2(30),
--  tip_tabla_calculo              VARCHAR2(1),
--  nom_campo_tabla_calculo        VARCHAR2(30),
--  nom_prg_calculo                VARCHAR2(61),
--  nom_tabla_correctora           VARCHAR2(30),
--  nom_campo_tabla_correctora     VARCHAR2(30),
--  tip_calculo_aux                VARCHAR2(1),
--  cod_calculo_aux                NUMBER(4),
--  nom_calculo_aux                VARCHAR2(30),
--  tip_prima_minima               VARCHAR2(1),
--  imp_prima_minima               NUMBER,
--  nom_tabla_prima_minima         VARCHAR2(30),
--  nom_campo_tabla_prima_minima   VARCHAR2(30),
 -- nom_prg_prima_minima           VARCHAR2(61),
--  tip_act_aum_no_mod             VARCHAR2(1) not null,
--  nom_prg_aum_no_mod             VARCHAR2(61),
--  tip_act_aum_si_mod             VARCHAR2(1) not null,
--  nom_prg_aum_si_mod             VARCHAR2(61),
--  tip_act_baj_no_mod             VARCHAR2(1) not null,
 -- nom_prg_baj_no_mod             VARCHAR2(61),
 -- tip_act_baj_si_mod             VARCHAR2(1) not null,
 -- nom_prg_baj_si_mod             VARCHAR2(61),
 -- tip_act_man_no_mod             VARCHAR2(1) not null,
 -- nom_prg_man_no_mod             VARCHAR2(61),
  --tip_act_man_si_mod             VARCHAR2(1) not null,
 -- nom_prg_man_si_mod             VARCHAR2(61),
  mca_validacion_prima           VARCHAR2(1) not null,
  mca_validacion_suma_aseg       VARCHAR2(1) not null,
  nom_prg_validacion             VARCHAR2(61),
--  nom_prg_pre_franquicia         VARCHAR2(61),
  fec_validez                    DATE not null,
  cod_usr                        VARCHAR2(8) not null,
  fec_actu                       DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1152K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1002150
  is 'TABLA DE COBERTURAS POR RAMO';
-- Add comments to the columns 
comment on column A1002150.cod_cia
  is 'CODIGO DE LA COMPA?IA';
comment on column A1002150.cod_ramo
  is 'CODIGO DEL RAMO ';
comment on column A1002150.cod_modalidad
  is 'CODIGO DE MODALIDAD';
comment on column A1002150.num_secu
  is 'NUMERO DE ORDEN DE LA COBERTURA. LO UTILIZAN LOS PROGRAMAS DE EMISION PARA ORDENAR LA VISUALIZACION EN PANTALLA';
comment on column A1002150.cod_cob
  is 'CODIGO DE LA COBERTURA (DEBE ESTAR DADO DE ALTA EN LA A1002050 PARA ESA COMPA?IA).';
comment on column A1002150.nom_cob
  is 'DESCRIPCION DE LA COBERTURA. PUEDE SER DISTINTA A LA QUE EXISTE EN LA TABLA GENERAL.';
comment on column A1002150.cod_mon_capital
  is 'CODIGO DE LA MONEDA EN LA QUE ESTA EXPRESADO EL CAPITAL DE LA COBERTURA';
comment on column A1002150.mca_unidad
  is 'INDICA SI SE CONTRATAN UNIDADES O CAPITALES. ';
comment on column A1002150.imp_unidad
  is 'EN EL CASO DE QUE LA COLUMNA MCA_CAPITAL_UNIDAD TENGA (S), SE INFORMA AQUI CUANTO REPRESENTA CADA UNIDAD';
comment on column A1002150.mca_tip_capital
  is 'TIPO DE CAPITAL DE LA COBERTURA';
comment on column A1002150.cod_cob_relacionada
  is 'INDICA EL CODIGO DE COBERTURA RELACIONADA (DEPENDIENTES E INDEPENDIENTES).';
comment on column A1002150.pct_participacion
  is 'SE INDICA AQUI QUE PORCENTAJE DEL CAPITAL TOMARA DE LA COBERTURA RELACIONADA';
comment on column A1002150.mca_pct_participacion_variable
  is 'SI SE PERMITE MODIFICAR EL CAPITAL INDICANDO UN PORCENTAJE DE PARTICIPACION DE LA COBERTURA PRINCIPAL';
comment on column A1002150.nom_prg_pre_cob
  is 'NOMBRE DEL PROCEDIMIENTO PRE-COBERTURA';
comment on column A1002150.cod_agrup_cob_1
  is 'CODIGO DE AGRUPAMIENTO 1 DE COBERTURA';
comment on column A1002150.cod_agrup_cob_2
  is 'CODIGO DE AGRUPAMIENTO 2 DE COBERTURA';
comment on column A1002150.cod_agrup_cob_3
  is 'CODIGO DE AGRUPAMIENTO 3 DE COBERTURA';
comment on column A1002150.cod_agrup_cob_4
  is 'CODIGO DE AGRUPAMIENTO 4 DE COBERTURA';
comment on column A1002150.cod_ramo_ctable
  is 'CODIGO DEL RAMO CONTABLE';
comment on column A1002150.coef_inventario
  is 'COEFICIENTE DEL COSTE ADMINISTRATIVO DE LA COBERTURA.';
comment on column A1002150.mca_imp_obligatoria
  is 'MARCA DE IMPRESION OBLIGATORIA. INDICA QUE LA COBERTURA DEBE IMPRIMIRSE EN LAS CONDICIONES PARTICULARES.';
comment on column A1002150.mca_accesorios
  is 'INDICA SI LA COBERTURA PUEDE TENER O NO ACCESORIOS.';
comment on column A1002150.mca_franquicia
  is 'INDICA SI LA COBERTURA PUEDE TENER O NO FRANQUICIAS.';
comment on column A1002150.mca_boni
  is 'INDICA SI LA COBERTURA LLEVA DESCUENTOS POR BAJA SINIESTRALIDAD.';
comment on column A1002150.mca_sobre_tasas
  is 'INDICA SI LA COBERTURA PUEDE TENER SOBREPRIMAS.';
comment on column A1002150.mca_comis_npr
  is 'INDICA SI LA COBERTURA TIENE COMISIONES EN NUEVA PRODUCCION.';
comment on column A1002150.mca_comis_car
  is 'INDICA SI LA COBERTURA TIENE COMISIONES EN LA CARTERA.';
comment on column A1002150.mca_obligatorio
  is 'INDICA SI LA CONTRATACION DE LA COBERTURA ES OBLIGATORIA.';
comment on column A1002150.mca_inh
  is 'SI LA COBERTURA ESTA OPERATIVA.';
comment on column A1002150.mca_mod_suma_aseg
  is 'INDICA SI SE PUEDE MODIFICAR LA SUMA ASEGURADA DE LA COBERTURA.';
comment on column A1002150.mca_baja_suma_aseg_stro
  is 'INIDCA SI LA SUMA ASEGURADA SE VA AGOTANDO POR LOS SINIESTROS SUFRIDOS';
comment on column A1002150.mca_reaseguro
  is 'INDICA SI LA COBERTURA LLEVA REASEGURO.';
comment on column A1002150.mca_financiable
  is 'INDICA SI LA COBERTURA ES O NO FINANCIABLE (NO SE USA)';
comment on column A1002150.mca_inspec
  is 'INDICA SI LA CONTRATACION DE LA COBERTURA PROVOCA LA NECESIDAD DE TENER INSPECCIONADO EL RIESGO';
comment on column A1002150.mca_nuevo_capital
  is 'INDICA SI EN SUPLEMENTOS SE DESEA RESPETAR EL CAPITAL DE LA COBERTURA O EJECUTAR DE NUEVO EL PROCEDIMIENTO PRE-CAPITAL O DEPENDENCIA DE COBERTURA';
comment on column A1002150.tip_regulariza
  is 'INDICA SI REVALORIZA O NO EN LA RENOVACION (1) NO REGULARIZA (2) ESPECIAL (3) RIESGO';
comment on column A1002150.tip_regulariza_esp
  is 'INDICA LA FORMA EN QUE SE REVALORIZA (0) NO REGULARIZA (1) CAPITAL ACTUAL (2) CAPITAL INICIAL (3) IPC (4) OTRO INDICE (5) OBJETO';
comment on column A1002150.pct_regulariza_esp
  is 'EN CASO DE REVALORIZAR POR CAPITAL ACTUAL O CAPITAL INICIAL EN ESTE CAMPO SE INDICA EL PORCENTAJE DE REGULARIZACION';
comment on column A1002150.cod_indice
  is 'EN CASO DE REVALORIZAR POR IPC U OTRO INDICE EN ESTE CAMPO SE INDICA EL CODIGO DEL INDICE';
comment on column A1002150.nom_prg_regulariza_esp
  is 'EN CASO DE REVALORIZAR POR OBJETO, ESTE CAMPO INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.cod_mon_tarifa
  is 'INDICA EL CODIGO DE LA MONEDA EN LA QUE ESTA EXPRESADA LA TARIFA.';
comment on column A1002150.tip_calculo_cob
  is 'INDICA EL TIPO DE CALCULO DE LA COBERTURA.';
comment on column A1002150.tasa_calculo
  is 'PORCENTAJE O TANTO POR MIL DEL CALCULO';
comment on column A1002150.imp_calculo
  is 'IMPORTE FIJO O FIJO POR UNIDAD';
comment on column A1002150.nom_tabla_calculo
  is 'SI SE DEFINE QUE LA PRIMA SE RESCATA DE UNA TABLA, AQUI SE INFORMA EL NOMBRE DE LA TABLA';
comment on column A1002150.tip_tabla_calculo
  is 'SI LA PRIMA SE RESCATA DE UNA TABLA, AQUI SE INFORMA COMO ACTUARA EL CAMPO RECUPERADO (EN PORCENTAJE, MILAJE, IMPORTE FIJO, IMPORTE FIJO POR UNIDAD)';
comment on column A1002150.nom_campo_tabla_calculo
  is 'NOMBRE DEL CAMPO QUE SE VA A RESCATAR DE LA TABLA';
comment on column A1002150.nom_prg_calculo
  is 'SI LA PRIMA SE RESCATA POR UN PROCEDIMIENTO AQUI SE INDICA EL NOMBRE DEL PROCEDIMIENTO';
comment on column A1002150.nom_tabla_correctora
  is 'SE INDICA AQUI EL NOMBRE DE LA TABLA DE DONDE SE RESCATARA EL COEFICIENTE CORRECTOR (PUEDE SER NULO)';
comment on column A1002150.nom_campo_tabla_correctora
  is 'SI SE HA INFORMADO UNA TABLA DE DONDE RESCATAR UN COEFICIENTE CORRECTOR, AQUI SE INDICA QUE CAMPO ES.';
comment on column A1002150.tip_calculo_aux
  is 'SI SE HA INFORMADO QUE LA PRIMA OBTENIDA DEBE SER MULTIPLICADA POR UN CAMPO AUXILIAR, AQUI SE INDICA EL TIPO DE CAMPO';
comment on column A1002150.cod_calculo_aux
  is 'SI EL DATO QUE SE HA INDICADO COMO DATO AUXILIAR ES DE UNA COBERTURA O UN AGRAVANTE AQUI SE INDICA EL CODIGO DE LA COBERTURA O DEL AGRAVANTE';
comment on column A1002150.nom_calculo_aux
  is 'SI EL DATO QUE SE HA INDICADO COMO DATO AUXILIAR ES DE UN DATO VARIABLE, AQUI SE INDICA EL CODIGO DEL DATO VARIABLE';
comment on column A1002150.tip_prima_minima
  is 'SE INFORMA AQUI EL TIPO DE PRIMA MINIMA DEFINIDO PARA LA COBERTURA (0) SIN PRIMA MINIMA (1) IMPORTE FIJO (2) TABLA (3) OBJETO';
comment on column A1002150.imp_prima_minima
  is 'SI SE HA DEFINIDO QUE LA PRIMA MINIMA ES UN IMPORTE FIJO, ESTE SE INFORMA AQUI';
comment on column A1002150.nom_tabla_prima_minima
  is 'SI LA PRIMA MINIMA SE RESCATA DE UNA TABLA, SE INFORMA AQUI EL NOMBRE DE LA TABLA';
comment on column A1002150.nom_campo_tabla_prima_minima
  is 'SI LA PRIMA MINIMA SE RESCATA DE UNA TABLA, SE INFORMA AQUI EL NOMBRE DEL CAMPO DE LA TABLA DEL QUE SE OBTIENE LA PRIMA MINIMA';
comment on column A1002150.nom_prg_prima_minima
  is 'SI ES UN OBJETO ES EL NOMBRE DEL OBJETO';
comment on column A1002150.tip_act_aum_no_mod
  is 'INDICA EL TIPO DE ACCION QUE TOMARA EN EL CASO DE QUE UN SUPLEMENTO AUMENTE EL CAPITAL SIN MODIFICAR LA ESTRUCTURA DE CONTRATACION (1) TARIFA ACTUAL (2) TARIFA ORIGINAL (3) MIXTA (4) OBJETO';
comment on column A1002150.nom_prg_aum_no_mod
  is 'SI EL CAMPO TIP_ACT_AUM_NO_MOD ES (4) OBJETO, SE INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.tip_act_aum_si_mod
  is 'INDICA EL TIPO DE ACCION QUE TOMARA EN EL CASO DE QUE UN SUPLEMENTO AUMENTE EL CAPITAL Y SE HA CAMBIADO LA ESTRUCTURA DE CONTRATACION (1) TARIFA ACTUAL (4) OBJETO';
comment on column A1002150.nom_prg_aum_si_mod
  is 'SI EL CAMPO TIP_ACT_AUM_SI_MOD ES (4) OBJETO SE INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.tip_act_baj_no_mod
  is 'INDICA EL TIPO DE ACCION QUE TOMARA EN UN SUPLEMENTO QUE BAJA EL CAPITAL SIN MODIFICAR LA ESTRUCTURA DE CONTRATACION (1)TARIFA ACTUAL (2)TARIFA ORIGINAL (4)OBJETO';
comment on column A1002150.nom_prg_baj_no_mod
  is 'SI EN CAMPO TIP_ACT_BAJ_NO_MOD ES (4) OBJETO, SE INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.tip_act_baj_si_mod
  is 'INDICA EL TIPO DE ACCION QUE TOMARA EN UN SUPLEMENTO QUE BAJA EL CAPITAL Y SE HA MODIFICADO LA ESTRUCTURA DE CONTRATACION (1)TARIFA ACTUAL (4) OBJETO';
comment on column A1002150.nom_prg_baj_si_mod
  is 'SI EL CAMPO TIP_ACT_BAJ_SI_MOD ES (4)OBJETO, INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.tip_act_man_no_mod
  is 'INDICA EL TIPO DE ACCION QUE TOMARA EN EL CASO DE QUE UN SUPLEMENTO SE MANTENGA EL CAPITAL VIGENTE SIN MODIFICAR LA ESTRUCTURA DE CONTRATACION (2) TARIFA ORIGINAL (4) OBJETO';
comment on column A1002150.nom_prg_man_no_mod
  is 'SI EL CAMPO TIP_ACT_MAN_NO_MOD ES (4) OBJETO INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.tip_act_man_si_mod
  is 'INDICA EL TIPO DE ACCION QUE TOMARA EN EL CASO DE QUE UN SUPLEMENTO SE MANTENGA EL CAPITAL VIGENTE Y MODIFICA LA ESTRUCTURA DE CONTRATACION (1) TARIFA ACTUAL (4) OBJETO';
comment on column A1002150.nom_prg_man_si_mod
  is 'SI EL CAMPO TIP_ACT_MAN_SI_MOD ES (4) OBJETO, INDICA EL NOMBRE DEL OBJETO';
comment on column A1002150.mca_validacion_prima
  is 'INDICA SI SE VA A VALIDAR LA PRIMA DE LA COBERTURA.';
comment on column A1002150.mca_validacion_suma_aseg
  is 'INDICA SI SE VA A VALIDAR EL CAPITAL DE LA COBERTURA.';
comment on column A1002150.nom_prg_validacion
  is 'INDICA EL NOMBRE DE PROCEDIMIENTO DE VALIDACION PARA LA COBERTURA';
comment on column A1002150.nom_prg_pre_franquicia
  is 'NOMBRE DEL PROCEDIMIENTO DE OBTENCION DE LA FRANQUICIA POR DEFECTO.';
comment on column A1002150.fec_validez
  is 'FECHA DE VALIDEZ';
comment on column A1002150.cod_usr
  is 'USUARIO QUE REALIZO LA ULTIMA MODIFICACION.';
comment on column A1002150.fec_actu
  is 'ULTIMA FECHA DE ACTUALIZACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1002150
  add constraint PK_A1002150 primary key (COD_CIA, COD_RAMO, COD_MODALIDAD, COD_COB, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate check constraints 
alter table A1002150
  add constraint CK_MCA_TIP_CAPITAL_A1002150
  check (mca_tip_capital IS NULL         OR mca_tip_capital IN ('1','2','3','4','5','6'));
alter table A1002150
  add constraint CK_TIP_ACT_AUM_NO_MOD_A1002150
  check (TIP_ACT_AUM_NO_MOD IN ('1','2','3','4' ));
alter table A1002150
  add constraint CK_TIP_ACT_AUM_SI_MOD_A1002150
  check (TIP_ACT_AUM_SI_MOD IN ('1','4' ));
alter table A1002150
  add constraint CK_TIP_ACT_BAJ_NO_MOD_A1002150
  check (TIP_ACT_BAJ_NO_MOD IN ('1','2','4' ));
alter table A1002150
  add constraint CK_TIP_ACT_BAJ_SI_MOD_A1002150
  check (TIP_ACT_BAJ_SI_MOD IN ('1','4' ));
alter table A1002150
  add constraint CK_TIP_ACT_MAN_NO_MOD_A1002150
  check (TIP_ACT_MAN_NO_MOD IN ('2','4' ));
alter table A1002150
  add constraint CK_TIP_ACT_MAN_SI_MOD_A1002150
  check (TIP_ACT_MAN_SI_MOD IN ('1','4' ));
alter table A1002150
  add constraint CK_TIP_CALCULO_AUX_A1002150
  check (TIP_CALCULO_AUX IS NULL  OR          TIP_CALCULO_AUX IN ('0', '1','2','3','4','5' ));
alter table A1002150
  add constraint CK_TIP_CALCULO_COB_A1002150
  check (TIP_CALCULO_COB IN ('1','2','3','4','5','6','7','8','0' ));
alter table A1002150
  add constraint CK_TIP_PRIMA_MINIMA_A1002150
  check (TIP_PRIMA_MINIMA IS NULL  OR          TIP_PRIMA_MINIMA IN ('0','1','2','3' ));
alter table A1002150
  add constraint CK_TIP_REGULARIZA_A1002150
  check (TIP_REGULARIZA IN ('1','2','3' ));
alter table A1002150
  add constraint CK_TIP_REGULARIZA_ESP_A1002150
  check (TIP_REGULARIZA_ESP IN ('1','2','3','4','5' ));
  
  
  
  
  -- Create table
create table A9990010
(
  cod_clausula     VARCHAR2(11) not null,
  nom_clausula     VARCHAR2(60) not null,
  fec_edicion      DATE not null,
  mca_nivel_poliza VARCHAR2(1) not null,
  mca_inh          VARCHAR2(1) not null,
  mca_txt_variable VARCHAR2(1) not null,
  cod_usr          VARCHAR2(8) not null,
  fec_actu         DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A9990010
  is 'TABLA DE CLAUSULAS';
-- Add comments to the columns 
comment on column A9990010.cod_clausula
  is 'CODIGO DE CLAUSULA ';
comment on column A9990010.nom_clausula
  is 'DESCRIPCION DE LA CLAUSULA ';
comment on column A9990010.fec_edicion
  is 'FECHA DE EDICION';
comment on column A9990010.mca_nivel_poliza
  is 'CLAUSULA A NIVEL DE POLIZA O RIESGO';
comment on column A9990010.mca_inh
  is 'CLAUSULA INHABILITADA';
comment on column A9990010.mca_txt_variable
  is 'SI INCLUYE TEXTO VARIABLE';
comment on column A9990010.cod_usr
  is 'CODIGO DE USUARIO QUE ACTUALIZO ';
comment on column A9990010.fec_actu
  is 'FECHA DE ACTUALIZACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A9990010
  add constraint PK_A9990010 primary key (COD_CLAUSULA, FEC_EDICION)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
  -- Create table
create table A9990011
(
  cod_clausula     VARCHAR2(11) not null,
  num_secu         NUMBER(4) not null,
  txt_clausula     VARCHAR2(110),
  mca_txt_variable VARCHAR2(1) not null,
  fec_edicion      DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1152K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A9990011
  is 'TABLA DE TEXTOS DE CLAUSULAS';
-- Add comments to the columns 
comment on column A9990011.cod_clausula
  is 'CODIGO DE CLAUSULA ';
comment on column A9990011.num_secu
  is 'NUMERO DE SECUENCIA ';
comment on column A9990011.txt_clausula
  is 'TEXTO DE LA CLAUSULA ';
comment on column A9990011.mca_txt_variable
  is 'INCLUYE TEXTO VARIABLE';
comment on column A9990011.fec_edicion
  is 'FECHA DE EDICION DEL TEXTO DE LA CLAUSULA';


 
  
  -- Create table
create table A9990015
(
  cod_cia          NUMBER(2) not null,
  cod_ramo         NUMBER(3) not null,
  num_secu         NUMBER(4) not null,
  cod_clausula     VARCHAR2(15) not null,
  cod_cob          NUMBER(4),
  nom_prg          VARCHAR2(61),
  cod_usr          VARCHAR2(8) not null,
  fec_actu         DATE not null,
  tip_act_clausula VARCHAR2(1) not null,
  fec_validez      DATE not null,
  mca_inh          VARCHAR2(1) not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A9990015
  is 'TABLA DE CLAUSULAS POR RAMO/COBERTURA';
-- Add comments to the columns 
comment on column A9990015.cod_cia
  is 'CODIGO DE COMPANIA ';
comment on column A9990015.cod_ramo
  is 'CODIGO DE RAMO ';
comment on column A9990015.num_secu
  is 'NUMERO DE SECUENCIA DE LA CLAUSULA ';
comment on column A9990015.cod_clausula
  is 'CODIGO DE LA CLAUSULA ';
comment on column A9990015.cod_cob
  is 'CODIGO COBERTURA ASOCIADA A LA CLAUSULA';
comment on column A9990015.nom_prg
  is 'PROCEDIMIENTO QUE DETERMINA SI SE SELECCIONA LA CLAUSULA';
comment on column A9990015.cod_usr
  is 'CODIGO DE USUARIO QUE ACTUALIZO ';
comment on column A9990015.fec_actu
  is 'FECHA DE ULTIMA ACTUALIZACION ';
comment on column A9990015.tip_act_clausula
  is 'TIPO DE ACTUALIZACION 1/BORRAR
2/ALTA 3/NINGUNA 4/BORRAR/ALTA';
comment on column A9990015.fec_validez
  is 'FECHA DE VALIDEZ DEL RAMO';
comment on column A9990015.mca_inh
  is 'MARCA DE CLAUSULA INHABILITADA PARA EL RAMO';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A9990015
  add constraint PK_A9990015 primary key (COD_CIA, COD_RAMO, COD_CLAUSULA, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

    
  -- Create table
create table A1001420
(
  cod_cia              NUMBER(2) not null,
  cod_plan_pago        NUMBER(5) not null,
  num_cuota            NUMBER(2) not null,
  tip_unidad           VARCHAR2(1) not null,
  num_unidades         NUMBER(3) not null,
  nom_prg_num_unidades VARCHAR2(61),
  pct_imp              NUMBER not null,
  nom_prg_pct_imp      VARCHAR2(61),
  pct_comis            NUMBER not null,
  nom_prg_pct_comis    VARCHAR2(61),
  cod_usr              VARCHAR2(8) not null,
  fec_actu             DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001420
  is 'CUOTAS DE UN PLAN DE PAGO';
-- Add comments to the columns 
comment on column A1001420.cod_cia
  is 'COMPA?IA';
comment on column A1001420.cod_plan_pago
  is 'PLAN DE PAGO';
comment on column A1001420.num_cuota
  is 'NUMERO DE CUOTA';
comment on column A1001420.tip_unidad
  is 'MEDIDA QUE SE UTILIZARA PARA LA CREACION DE LOS EFECTOS/VENCIMIENTOS';
comment on column A1001420.num_unidades
  is 'EFECTO DE LA CUOTA. SERA A PARTIR DEL EFECTO/EMISION DEL SUPLEMENTO';
comment on column A1001420.nom_prg_num_unidades
  is 'PROCEDIMIENTO QUE DETERMINA EL EFECTO DE LA CUOTA';
comment on column A1001420.pct_imp
  is '% DEL CALCULO QUE VA A LA CUOTA';
comment on column A1001420.nom_prg_pct_imp
  is 'PROCEDIMIENTO QUE INDICA EL % DEL CALCULO QUE VA A LA CUOTA';
comment on column A1001420.pct_comis
  is '% DE COMISION DE LA CUOTA';
comment on column A1001420.nom_prg_pct_comis
  is 'PROCEDIMIENTO QUE INDICA EL % DE COMISION DE LA CUOTA';
comment on column A1001420.cod_usr
  is 'USUARIO QUE REALIZO LA MODIFICACION';
comment on column A1001420.fec_actu
  is 'FECHA DE MODIFICACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001420
  add constraint PK_A1001420 primary key (COD_CIA, COD_PLAN_PAGO, NUM_CUOTA)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
    -- Create table
create table A1001402
(
  cod_cia        NUMBER(2) not null,
  cod_fracc_pago NUMBER(5) not null,
  nom_fracc_pago VARCHAR2(30) not null,
  abr_fracc_pago VARCHAR2(5) not null,
  num_cuotas     NUMBER(2) not null,
  mca_aplicacion VARCHAR2(1) not null,
  mca_pago_unico VARCHAR2(1) not null,
  cod_usr        VARCHAR2(8) not null,
  fec_actu       DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001402
  is 'FORMAS DE PAGO/PLANES DE PAGO DE LA COMPA?IA';
-- Add comments to the columns 
comment on column A1001402.cod_cia
  is 'CODIGO DE COMPANIA ';
comment on column A1001402.cod_fracc_pago
  is 'CODIGO DE FORMA DE PAGO/PLAN DE PAGO';
comment on column A1001402.nom_fracc_pago
  is 'DESCRIPCION DE LA FORMA DE PAGO/PLAN DE PAGO';
comment on column A1001402.abr_fracc_pago
  is 'NOMBRE ABREVIADO DE LA FORMA DE PAGO/PLAN DE PAGO';
comment on column A1001402.num_cuotas
  is 'NUMERO DE CUOTAS (CERO CUOTAS ES UN PLAN DE PAGO)';
comment on column A1001402.mca_aplicacion
  is 'INDICA QUE ES UNA FORMA DE PAGO/PLAN DE PAGO UTILIZABLE EN APLICACIONES';
comment on column A1001402.mca_pago_unico
  is 'PAGO UNICO';
comment on column A1001402.cod_usr
  is 'USUARIO QUE ACTUALIZA ';
comment on column A1001402.fec_actu
  is 'ULTIMA FECHA DE ACTUALIZACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001402
  add constraint PK_A1001402 primary key (COD_CIA, COD_FRACC_PAGO)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

  
  -- Create table
create table A1001410
(
  cod_cia               NUMBER(2) not null,
  cod_plan_pago         NUMBER(5) not null,
  num_cuotas            NUMBER(2) not null,
  tip_dst_cuotas        VARCHAR2(1) not null,
  tip_fec_ini           VARCHAR2(1) not null,
  nom_prg_fec_ini       VARCHAR2(61),
  tip_fec_fin           VARCHAR2(1) not null,
  nom_prg_fec_fin       VARCHAR2(61),
  tip_dst_ap            VARCHAR2(1) not null,
  mca_fec_efec_nueva_as VARCHAR2(1) not null,
  tip_dst_vcto          VARCHAR2(1) not null,
  nom_prg_tip_dst_vcto  VARCHAR2(61),
  tip_cuota_minima      VARCHAR2(1) not null,
  nom_prg_interes       VARCHAR2(61),
  nom_prg_interes_at    VARCHAR2(61),
  nom_prg_altera_cuota  VARCHAR2(61),
  mca_inh               VARCHAR2(1) not null,
  cod_usr               VARCHAR2(8) not null,
  fec_actu              DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001410
  is 'PLANES DE PAGO';
-- Add comments to the columns 
comment on column A1001410.cod_cia
  is 'COMPA?IA';
comment on column A1001410.cod_plan_pago
  is 'PLAN DE PAGO';
comment on column A1001410.num_cuotas
  is 'NUMERO DE CUOTAS QUE TIENE';
comment on column A1001410.tip_dst_cuotas
  is 'FORMA DE DISTRIBUIR LAS CUOTAS';
comment on column A1001410.tip_fec_ini
  is 'FECHA QUE SE TOMA COMO INICIO PARA LA GENERACION DE LAS CUOTAS';
comment on column A1001410.nom_prg_fec_ini
  is 'PROGRAMA QUE HALLA LA FECHA QUE SE TOMA COMO FIN PARA LA GENERACION DE CUOTAS';
comment on column A1001410.tip_fec_fin
  is 'FECHA QUE SE TOMA COMO FIN PARA LA GENERACION DE LAS CUOTAS';
comment on column A1001410.tip_dst_ap
  is 'FORMA DE DISTRIBUIR LAS CUOTAS EN ANULACIONES PARCIALES';
comment on column A1001410.mca_fec_efec_nueva_as
  is 'SI EN ANULACION DE SUPLEMENTOS HALLA DE NUEVO LA FECHA BASE O TOMA LAS DEL SUPLEMENTO QUE SE DESEA ANULAR';
comment on column A1001410.tip_dst_vcto
  is 'FORMA DE DISTRIBUCION CUANDO LAS CUOTAS DEL PLAN DE PAGO NO ENTRAN EN LA VIGENCIA DEL MOVIMIENTO';
comment on column A1001410.nom_prg_tip_dst_vcto
  is 'PROCEDIMIENTO QUE DETERMINA LA FORMA DE DISTRIBUIR CUANDO LAS CUOTAS NO ENTRAN EN LA VIGENCIA';
comment on column A1001410.tip_cuota_minima
  is 'TIPO DE ACCION QUE SE DESEA CUANDO EL IMPORTE DE LAS CUOTAS NO LLEGA AL MINIMO DEFINIDO';
comment on column A1001410.nom_prg_interes
  is 'PROGRAMA QUE CALCULA LOS INTERESES';
comment on column A1001410.nom_prg_interes_at
  is 'PROGRAMA QUE HALLA EL INTERES DE LA PRIMERA CUOTA CUANDO ESTA NO TIENE UN RECIBO YA GENERADO COMO BASE PARA ANULARLO. SOLO USADO EN ANULACIONES TOTALES';
comment on column A1001410.nom_prg_altera_cuota
  is 'PROGRAMA QUE ALTERA LOS CONCEPTOS ECONOMICOS (FRACCIONABLES) DE LA CUOTA CALCULADA ANTES POR LA RUTINA';
comment on column A1001410.mca_inh
  is 'PLAN DE PAGO INHABILTIADO';
comment on column A1001410.cod_usr
  is 'USUARIO QUE REALIZO LA MODIFICACION';
comment on column A1001410.fec_actu
  is 'FECHA DE MODIFICACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001410
  add constraint PK_A1001410 primary key (COD_CIA, COD_PLAN_PAGO)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );

  
  -- Create table
create table G2000161
(
  cod_cia                  NUMBER(2) not null,
  num_secu                 NUMBER(2) not null,
  cod_eco                  NUMBER(3) not null,
  nom_eco                  VARCHAR2(30) not null,
  abr_eco                  VARCHAR2(5) not null,
  tip_cod_eco              VARCHAR2(1) not null,
  mca_fracc                VARCHAR2(1) not null,
  mca_coaseguro            VARCHAR2(1) not null,
  mca_comis1               VARCHAR2(1),
  mca_comis2               VARCHAR2(1),
  mca_comis3               VARCHAR2(1),
  mca_comis4               VARCHAR2(1),
  mca_interes              VARCHAR2(1) not null,
  mca_calculo_comis        VARCHAR2(1) not null,
  nom_prg_calculo          VARCHAR2(61),
  tip_base_calculo_cp      VARCHAR2(3),
  mca_deposita_calculo_cp0 VARCHAR2(1) not null,
  mca_deposita_calculo_cp1 VARCHAR2(1) not null,
  mca_deposita_calculo_cp2 VARCHAR2(1) not null,
  mca_deposita_calculo_cp3 VARCHAR2(1) not null,
  mca_deposita_calculo_cp4 VARCHAR2(1) not null,
  mca_deposita_calculo_cp5 VARCHAR2(1) not null,
  mca_deposita_calculo_cp6 VARCHAR2(1) not null,
  mca_deposita_calculo_cp7 VARCHAR2(1) not null,
  mca_deposita_calculo_cp8 VARCHAR2(1) not null,
  mca_deposita_calculo_cp9 VARCHAR2(1) not null,
  cod_usr                  VARCHAR2(8) not null,
  fec_actu                 DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table G2000161
  is 'DEFINICION DE LOS CONCEPTOS ECONOMICOS DE RECIBO';
-- Add comments to the columns 
comment on column G2000161.cod_cia
  is 'CODIGO DE COMPANIA';
comment on column G2000161.num_secu
  is 'ORDEN DE APARICION';
comment on column G2000161.cod_eco
  is 'CODIGO DE CONCEPTO ECONOMICO';
comment on column G2000161.nom_eco
  is 'NOMBRE DEL CONCEPTO ECONOMICO';
comment on column G2000161.abr_eco
  is 'NOMBRE CORTO DEL CONCEPTO ECONOMICO';
comment on column G2000161.tip_cod_eco
  is 'TIPO DE CONCEPTO : N-PRIMA NETA, B-BONIFICACION, R-RECARGO, I-IMPUESTO';
comment on column G2000161.mca_fracc
  is 'INDICA SI SE FRACCIONA O EL IMPORTE TOTAL PASA AL PRIMER RECIBO';
comment on column G2000161.mca_coaseguro
  is 'INDICA SI SE CEDE O NO AL COASEGURO ';
comment on column G2000161.mca_comis1
  is 'SI CALCULA O NO COMISION 1 PARA EL COASEGURO ';
comment on column G2000161.mca_comis2
  is 'SI CALCULA O NO COMISION 2 PARA EL COASEGURO ';
comment on column G2000161.mca_comis3
  is 'SI CALCULA O NO COMISION 3 PARA EL COASEGURO ';
comment on column G2000161.mca_comis4
  is 'SI CALCULA O NO COMISION 4 PARA EL COASEGURO ';
comment on column G2000161.mca_interes
  is 'INDICA SI EL CONCEPTO ES ESPECIFICO PARA CALCULO DE INTERESES (PLANES DE PAGO)';
comment on column G2000161.mca_calculo_comis
  is 'INDICA SI SE CALCULAN COMISIONES (APLICABLE A CONCEPTOS TIPO -R-)';
comment on column G2000161.nom_prg_calculo
  is 'PROCEDIMIENTO DE CALCULO ';
comment on column G2000161.tip_base_calculo_cp
  is 'BASE DE CALCULO';
comment on column G2000161.mca_deposita_calculo_cp0
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp1
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp2
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp3
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp4
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp5
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp6
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp7
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp8
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.mca_deposita_calculo_cp9
  is 'INDICA SI EL CALCULO DE ESTE CONCEPTO SE IRA ACUMULANDO EN LA VARIABLE';
comment on column G2000161.cod_usr
  is 'CODIGO DE USUARIO QUE HACE LA DEFINICION ';
comment on column G2000161.fec_actu
  is 'FECHA DE ULTIMA ACTUALIZACION ';
-- Create/Recreate indexes 
create unique index I1_G2000161 on G2000161 (COD_CIA, NUM_SECU)
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table G2000161
  add constraint PK_G2000161 primary key (COD_CIA, COD_ECO)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );


  -- Create table
create table A1001403
(
  cod_cia           NUMBER(2) not null,
  cod_ramo          NUMBER(3) not null,
  cod_mon           NUMBER(2) not null,
  cod_fracc_pago    NUMBER(5) not null,
  pct_primera_cuota NUMBER,
  nom_prg_pct_cuota VARCHAR2(61),
  fec_validez       DATE not null,
  cod_usr           VARCHAR2(8),
  fec_actu          DATE
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001403
  is 'FORMAS DE PAGO/PLANES DE PAGO DEL RAMO';
-- Add comments to the columns 
comment on column A1001403.cod_cia
  is 'CODIGO DE COMPA?IA';
comment on column A1001403.cod_ramo
  is 'CODIGO DEL RAMO';
comment on column A1001403.cod_mon
  is 'CODIGO DE MONEDA';
comment on column A1001403.cod_fracc_pago
  is 'CODIGO DE FRACCIONAMIENTO
DE PAGO (A1001402)';
comment on column A1001403.pct_primera_cuota
  is 'NO SE USA';
comment on column A1001403.nom_prg_pct_cuota
  is 'PROCEDIMIENTO DE CALCULO PARA EL PCT DE LA PRIMERA CUOTA';
comment on column A1001403.fec_validez
  is 'FECHA DE VALIDEZ DEL RAMO';
comment on column A1001403.cod_usr
  is 'CODIGO USUARIO DE LA ULTIMA
ACTUALIZACION DEL REGISTRO ';
comment on column A1001403.fec_actu
  is 'FECHA DE LA ULTIMA ACTUALIZACION DEL REGISTRO ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001403
  add constraint PK_A1001403 primary key (COD_CIA, COD_MON, COD_RAMO, COD_FRACC_PAGO, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
-- Create table
create table G2000170
(
 -- cod_cia                 NUMBER(2) not null,
--  cod_desglose            NUMBER(3) not null,
--  nom_desglose            VARCHAR2(30) not null,
--  nom_cor_desglose        VARCHAR2(10) not null,
--  tip_ambito              VARCHAR2(1) not null,
--  mca_estudio             VARCHAR2(1) not null,
--  tip_base_calculo        VARCHAR2(2) not null,
  tip_calculo             VARCHAR2(1) not null,
  tasa_calculo            NUMBER,
  imp_calculo             NUMBER,
  nom_prg_calculo         VARCHAR2(61),
  mca_devuelve            VARCHAR2(1) not null,
  mca_aplica_prorrata     VARCHAR2(1) not null,
  mca_calculo_automatico  VARCHAR2(1) not null,
  cod_eco                 NUMBER(3) not null,
  mca_deposita_calculo_c0 VARCHAR2(1) not null,
  mca_deposita_calculo_c1 VARCHAR2(1) not null,
  mca_deposita_calculo_c2 VARCHAR2(1) not null,
  mca_deposita_calculo_c3 VARCHAR2(1) not null,
  mca_deposita_calculo_c4 VARCHAR2(1) not null,
  mca_deposita_calculo_c5 VARCHAR2(1) not null,
  mca_deposita_calculo_c6 VARCHAR2(1) not null,
  mca_deposita_calculo_c7 VARCHAR2(1) not null,
  mca_deposita_calculo_c8 VARCHAR2(1) not null,
  mca_deposita_calculo_c9 VARCHAR2(1) not null,
  mca_deposita_calculo_r0 VARCHAR2(1) not null,
  mca_deposita_calculo_r1 VARCHAR2(1) not null,
  mca_deposita_calculo_r2 VARCHAR2(1) not null,
  mca_deposita_calculo_r3 VARCHAR2(1) not null,
  mca_deposita_calculo_r4 VARCHAR2(1) not null,
  mca_deposita_calculo_p0 VARCHAR2(1) not null,
  mca_deposita_calculo_p1 VARCHAR2(1) not null,
  mca_deposita_calculo_p2 VARCHAR2(1) not null,
  mca_deposita_calculo_p3 VARCHAR2(1) not null,
  mca_deposita_calculo_p4 VARCHAR2(1) not null,
  mca_deposita_calculo_t0 VARCHAR2(1) not null,
  mca_deposita_calculo_t1 VARCHAR2(1) not null,
  mca_deposita_calculo_t2 VARCHAR2(1) not null,
  mca_deposita_calculo_t3 VARCHAR2(1) not null,
  mca_deposita_calculo_t4 VARCHAR2(1) not null,
  cod_usr                 VARCHAR2(8) not null,
  fec_actu                DATE not null,
  fec_validez             DATE not null,
  nom_prg_no_consumido    VARCHAR2(61)
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1152K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table G2000170
  is 'TABLA DE CONCEPTOS DE DESGLOSE PARA LA COMPA?IA';
-- Add comments to the columns 
comment on column G2000170.cod_cia
  is 'CODIGO DE COMPANIA';
comment on column G2000170.cod_desglose
  is 'CODIGO DE CONCEPTO DE DESGLOSE ';
comment on column G2000170.nom_desglose
  is 'NOMBRE DEL CONCEPTO DE DESGLOSE ';
comment on column G2000170.nom_cor_desglose
  is 'NOMBRE CORTO DEL CONCEPTO DE DESGLOSE ';
comment on column G2000170.tip_ambito
  is '(1) SOLO ES VALIDO EN NUEVA PRODUCCION, (2) SOLO ES VALIDO EN CARTERA, (3) ES VALIDO TANTO EN NUEVA PRODUCCION COMO CARTERA';
comment on column G2000170.mca_estudio
  is 'SI SE VA A REALIZAR ESTUDIO DE IMPORTES';
comment on column G2000170.tip_base_calculo
  is 'BASE DE CALCULO';
comment on column G2000170.tip_calculo
  is 'CALCULO QUE SE VA A REALIZAR';
comment on column G2000170.tasa_calculo
  is 'SI SE HA ELEGIDO COMO TIPO DE CALCULO TANTO POR CIENTO O TANTO POR MIL, SE ALMACENA EL TANTO';
comment on column G2000170.imp_calculo
  is 'SI SE HA LEGIDO COMO TIPO DE CALCULO  IMPORTE O IMPORTE POR UNIDAD, SE ALMACENA ESTE IMPORTE';
comment on column G2000170.nom_prg_calculo
  is 'OBJETO QUE REALIZA EL CALCULO ';
comment on column G2000170.mca_devuelve
  is 'EL CONCEPTO SE DEVUELVE EN CASO DE ANULACION DE LA POLIZA';
comment on column G2000170.mca_aplica_prorrata
  is 'INDICA SI EL CONCEPTO ES PRORRATEABLE';
comment on column G2000170.mca_calculo_automatico
  is 'INDICA SI EL CONCEPTO SE CALCULA SIEMPRE DE FORMA AUTOMATICA, AUNQUE LA POLIZA TENGA PRIMAS MANUALES';
comment on column G2000170.cod_eco
  is 'CONCEPTO ECONOMICO A QUE APLICA EL CONCEPTODE DESGLOSE';
comment on column G2000170.mca_deposita_calculo_c0
  is 'SI SE ACUMULA O NO EN EL BLOQUE 0 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c1
  is 'SI SE ACUMULA O NO EN EL BLOQUE 1 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c2
  is 'SI SE ACUMULA O NO EN EL BLOQUE 2 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c3
  is 'SI SE ACUMULA O NO EN EL BLOQUE 3 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c4
  is 'SI SE ACUMULA O NO EN EL BLOQUE 4 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c5
  is 'SI SE ACUMULA O NO EN EL BLOQUE 5 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c6
  is 'SI SE ACUMULA O NO EN EL BLOQUE 6 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c7
  is 'SI SE ACUMULA O NO EN EL BLOQUE 7 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c8
  is 'SI SE ACUMULA O NO EN EL BLOQUE 8 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_c9
  is 'SI SE ACUMULA O NO EN EL BLOQUE 9 A NIVEL DE COBERTURA';
comment on column G2000170.mca_deposita_calculo_r0
  is 'SI SE ACUMULA O NO EN EL BLOQUE 0 A NIVEL DE RIESGO';
comment on column G2000170.mca_deposita_calculo_r1
  is 'SI SE ACUMULA O NO EN EL BLOQUE 1 A NIVEL DE RIESGO';
comment on column G2000170.mca_deposita_calculo_r2
  is 'SI SE ACUMULA O NO EN EL BLOQUE 2 A NIVEL DE RIESGO';
comment on column G2000170.mca_deposita_calculo_r3
  is 'SI SE ACUMULA O NO EN EL BLOQUE 3 A NIVEL DE RIESGO';
comment on column G2000170.mca_deposita_calculo_r4
  is 'SI SE ACUMULA O NO EN EL BLOQUE 4 A NIVEL DE RIESGO';
comment on column G2000170.mca_deposita_calculo_p0
  is 'SI SE ACUMULA O NO EN EL BLOQUE 0 A NIVEL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_p1
  is 'SI SE ACUMULA O NO EN EL BLOQUE 1 A NIVEL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_p2
  is 'SI SE ACUMULA O NO EN EL BLOQUE 2 A NIVEL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_p3
  is 'SI SE ACUMULA O NO EN EL BLOQUE 3 A NIVEL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_p4
  is 'SI SE ACUMULA O NO EN EL BLOQUE 4 A NIVEL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_t0
  is 'SI SE ACUMULA O NO EN EL BLOQUE 0 A NIVEL TOTAL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_t1
  is 'SI SE ACUMULA O NO EN EL BLOQUE 1 A NIVEL TOTAL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_t2
  is 'SI SE ACUMULA O NO EN EL BLOQUE 2 A NIVEL TOTAL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_t3
  is 'SI SE ACUMULA O NO EN EL BLOQUE 3 A NIVEL TOTAL DE POLIZA';
comment on column G2000170.mca_deposita_calculo_t4
  is 'SI SE ACUMULA O NO EN EL BLOQUE 4 A NIVEL TOTAL DE POLIZA';
comment on column G2000170.cod_usr
  is 'CODIGO DE USUARIO QUE HACE LA DEFINICION';
comment on column G2000170.fec_actu
  is 'FECHA DE ULTIMA ACTUALIZACION DE LA DEFINICION';
comment on column G2000170.fec_validez
  is 'FECHA DE VALIDEZ';
comment on column G2000170.nom_prg_no_consumido
  is 'PROCEDIMIENTO DE CALCULO DE IMPORTE NO CONSUMIDO';
-- Create/Recreate primary, unique and foreign key constraints 
alter table G2000170
  add constraint PK_G2000170 primary key (COD_CIA, COD_DESGLOSE, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate check constraints 
alter table G2000170
  add constraint CK_TIP_AMBITO_G2000170
  check (TIP_AMBITO IN ('1','2','3'));
alter table G2000170
  add constraint CK_TIP_BASE_CALCULO_G2000170
  check (TIP_BASE_CALCULO IN (               'CA','PR',               'C0','C1','C2','C3','C4','C5','C6','C6','C8','C9',               'R0','R1','R2','R3','R4',               'P0','P1','P2','P3','P4',               'T0','T1','T2','T3','T4'               ));
alter table G2000170
  add constraint CK_TIP_CALCULO_G2000170
  check (TIP_CALCULO IN ('1','2','3','4','5' ));

  -- Create table
create table G2000180
(
  cod_cia            NUMBER(2) not null,
  cod_ramo           NUMBER(3) not null,
  cod_modalidad      NUMBER(5) not null,
  cod_cob            NUMBER(4) not null,
  num_secu           NUMBER(2) not null,
  cod_desglose       NUMBER(3) not null,
  num_bloque_estudio NUMBER(2),
  tip_aplicacion     VARCHAR2(1) not null,
  fec_validez        DATE not null,
  cod_usr            VARCHAR2(8) not null,
  fec_actu           DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1152K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table G2000180
  is 'CONCEPTOS DE DESGLOSE POR RAMO/COBERTURA';
-- Add comments to the columns 
comment on column G2000180.cod_cia
  is 'CODIGO DE COMPA?IA';
comment on column G2000180.cod_ramo
  is 'CODIGO DEL RAMO';
comment on column G2000180.cod_modalidad
  is 'CODIGO DE LA MODALIDAD';
comment on column G2000180.cod_cob
  is 'CODIGO DE COBERTURA';
comment on column G2000180.num_secu
  is 'ORDEN EN EL QUE SE CALCULARA EL CONCEPTO';
comment on column G2000180.cod_desglose
  is 'CODIGO DE CONCEPTO DE DESGLOSE ';
comment on column G2000180.num_bloque_estudio
  is 'NUMERO DE BLOQUE PARA ESTUDIO';
comment on column G2000180.tip_aplicacion
  is 'CALCULO UTILIZADO : (G)GENERAL, (R)RAMO,(C)COBERTURA.';
comment on column G2000180.fec_validez
  is 'FECHA DE VALIDEZ';
comment on column G2000180.cod_usr
  is 'CODIGO DE USUARIO QUE ACTUALIZO ';
comment on column G2000180.fec_actu
  is 'FECHA DE ULTIMA ACTUALIZACION ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table G2000180
  add constraint PK_G2000180 primary key (COD_CIA, COD_RAMO, COD_MODALIDAD, COD_COB, COD_DESGLOSE, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
    -- Create table
create table G2000010
(
  cod_cia             NUMBER(2) not null,
  cod_campo           VARCHAR2(30) not null,
  cod_modulo          VARCHAR2(3),
  cod_texto           NUMBER(5),
  nom_campo           VARCHAR2(30) not null,
  tip_campo           VARCHAR2(1) not null,
  lng_campo           NUMBER(4) not null,
  cod_sistema         VARCHAR2(1) not null,
  mca_inh             VARCHAR2(1) not null,
  mca_sini            VARCHAR2(1) not null,
  mca_obligatorio     VARCHAR2(1) not null,
  mca_validacion      VARCHAR2(1) not null,
  nom_prg_pre_campo   VARCHAR2(61),
  nom_prg_campo       VARCHAR2(61),
  val_defecto         VARCHAR2(2000),
  nom_pgm_help        VARCHAR2(12),
  cod_version         NUMBER(2),
  nom_global_pgm_help VARCHAR2(35),
  nom_tabla_valida    VARCHAR2(30),
  cod_usr             VARCHAR2(8) not null,
  fec_actu            DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 768K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table G2000010
  is 'TABLA DE DATOS VARIABLES POR COMPANIA';
-- Add comments to the columns 
comment on column G2000010.cod_cia
  is 'CODIGO DE COMPANIA ';
comment on column G2000010.cod_campo
  is 'CODIGO DE CAMPO. DATO VARIABLE ';
comment on column G2000010.cod_modulo
  is 'MODULO PARA ETIQUETAS';
comment on column G2000010.cod_texto
  is 'TEXTO DEL MODULO PARA ETIQUETAS';
comment on column G2000010.nom_campo
  is 'DESCRIPCION DEL DATO VARIABLE ';
comment on column G2000010.tip_campo
  is 'TIPO DEL DATO VARIABLE (NUMERICO/CARACTER/FECHA) ';
comment on column G2000010.lng_campo
  is 'LONGITUD DEL DATO VARIABLE ';
comment on column G2000010.cod_sistema
  is 'CODIGO DE SISTEMA ';
comment on column G2000010.mca_inh
  is 'MARCA DE BAJA DE DATO VARIABLE';
comment on column G2000010.mca_sini
  is 'MARCA QUE INDICA SI ESTE DATO VARIABLE DEBE SER MOSTRADO EN SINIESTROS COMO DATO DEL RIESGO';
comment on column G2000010.mca_obligatorio
  is 'ES OBLIGATORIO EL CAMPO';
comment on column G2000010.mca_validacion
  is 'TIENE VALIDACIONES EL CAMPO';
comment on column G2000010.nom_prg_pre_campo
  is 'PROCEDIMIENTO DE PRE-CAMPO ASOCIADO AL CAMPO';
comment on column G2000010.nom_prg_campo
  is 'PROCEDIMIENTO DE VALIDACION ASOCIADO AL DATO VARIABLE';
comment on column G2000010.val_defecto
  is 'VALOR POR DEFECTO DEL CAMPO ';
comment on column G2000010.nom_pgm_help
  is 'PROGRAMA DE AYUDA ';
comment on column G2000010.cod_version
  is 'VERSION DEL PROGRAMA DE AYUDA';
comment on column G2000010.nom_global_pgm_help
  is 'NOMBRE DE LA GLOBAL QUE TIENE EL VALOR DEL DATO VARIABLE';
comment on column G2000010.nom_tabla_valida
  is 'TABLA DE VALIDACION ';
comment on column G2000010.cod_usr
  is 'USUARIO QUE ACTUALIZA ';
comment on column G2000010.fec_actu
  is 'FECHA DE LA ULTIMA ACTUALIZACION DEL REGISTRO ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table G2000010
  add constraint PK_G2000010 primary key (COD_CIA, COD_CAMPO)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 512K
    next 1M
    minextents 1
    maxextents unlimited
  );

  
  
  
  
  -- Create table
create table A2990200
(
  cod_cia     NUMBER(2) not null,
  cod_lista   NUMBER(3) not null,
  nom_lista   VARCHAR2(30) not null,
  mca_calculo VARCHAR2(1) not null,
  cod_usr     VARCHAR2(8) not null,
  fec_actu    DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1152K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A2990200
  is 'DESCRIPCIONES DE LISTAS DE VALORES';
-- Add comments to the columns 
comment on column A2990200.cod_cia
  is 'CODIGO DE COMPA?IA';
comment on column A2990200.cod_lista
  is 'CODIGO DE LISTA';
comment on column A2990200.nom_lista
  is 'DESCRIPCION DE LA LISTA';
comment on column A2990200.mca_calculo
  is 'SI CADA OCURRENCIA DE LA LISTA CALCULA PRIMA';
comment on column A2990200.cod_usr
  is 'USUARIO QUE ACTUALIZA';
comment on column A2990200.fec_actu
  is 'FECHA ULTIMA ACTUALIZACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A2990200
  add constraint PK_A2990200 primary key (COD_CIA, COD_LISTA)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

  
  
  -- Create table
create table A2990210
(
  cod_cia   NUMBER(2) not null,
  cod_lista NUMBER(3) not null,
  num_secu  NUMBER(4) not null,
  cod_campo VARCHAR2(30) not null,
  cod_usr   VARCHAR2(8) not null,
  fec_actu  DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1152K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A2990210
  is 'DATOS VARIABLES ASOCIADOS A UNA LISTA';
-- Add comments to the columns 
comment on column A2990210.cod_cia
  is 'CODIGO DE COMPA?IA';
comment on column A2990210.cod_lista
  is 'CODIGO DE LISTA';
comment on column A2990210.num_secu
  is 'NUMERO DE ORDEN';
comment on column A2990210.cod_campo
  is 'CODIGO DE CAMPO DE LA LISTA';
comment on column A2990210.cod_usr
  is 'USUARIO QUE ACTUALIZA';
comment on column A2990210.fec_actu
  is 'FECHA DE ULTIMA ACTUALIZACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A2990210
  add constraint PK_A2990210 primary key (COD_CIA, COD_LISTA, COD_CAMPO)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

  
  -- Create table
create table G2990006
(
  cod_cia       NUMBER(2) not null,
  cod_ramo      NUMBER(3) not null,
  cod_modalidad NUMBER(5) not null,
  fec_validez   DATE not null,
  cod_campo     VARCHAR2(30) not null,
  cod_valor     VARCHAR2(10) not null,
  nom_valor     VARCHAR2(30),
  num_pto       NUMBER(2),
  fec_actu      DATE,
  cod_usr       VARCHAR2(8)
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table G2990006
  is 'TABLA DE LOS VALORES DE DATOS VARIABLES';
-- Add comments to the columns 
comment on column G2990006.cod_cia
  is 'CODIGO DE COMPANIA';
comment on column G2990006.cod_ramo
  is 'CODIGO DEL RAMO';
comment on column G2990006.cod_modalidad
  is 'CODIGO DE LA MODALIDAD';
comment on column G2990006.fec_validez
  is 'FECHA DE VALIDEZ ';
comment on column G2990006.cod_campo
  is 'CODIGO DEL CAMPO';
comment on column G2990006.cod_valor
  is 'VALOR DEL CAMPO';
comment on column G2990006.nom_valor
  is 'DESCRIPCION DEL VALOR';
comment on column G2990006.num_pto
  is 'NUMERO DE PUNTOS PARA LA SELECCION DE RIESGOS (VIDA)';
comment on column G2990006.fec_actu
  is 'FECHA DE LA ULTIMA ACTUALIZACION DEL REGISTRO ';
comment on column G2990006.cod_usr
  is 'CODIGO USUARIO DE LA ULTIMA ACTUALIZACION DEL REGISTRO ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table G2990006
  add constraint PK_G2990006 primary key (COD_CIA, COD_RAMO, COD_MODALIDAD, FEC_VALIDEZ, COD_CAMPO, COD_VALOR)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
  
  
  
  -- Create table
create table G2000020
(
  cod_cia                     NUMBER(2) not null,
  cod_ramo                    NUMBER(3) not null,
  cod_modalidad               NUMBER(5) not null,
  cod_cob                     NUMBER(4) not null,
  cod_agr                     NUMBER(3) not null,
  fec_validez                 DATE not null,
  tip_nivel                   NUMBER(1) not null,
  num_secu                    NUMBER(4) not null,
  cod_campo                   VARCHAR2(30) not null,
  mca_inh                     VARCHAR2(1) not null,
  mca_visible                 VARCHAR2(1) not null,
  mca_obligatorio             VARCHAR2(1) not null,
  mca_valida_si_null          VARCHAR2(1) not null,
  mca_modalidad               VARCHAR2(1) not null,
  mca_calculo                 VARCHAR2(1) not null,
  mca_presupuesto             VARCHAR2(1) not null,
  mca_sini                    VARCHAR2(1) not null,
  mca_unico                   VARCHAR2(1) not null,
  mca_inspec                  VARCHAR2(1) not null,
  mca_busca_insp              VARCHAR2(1) not null,
  mca_busca_por_igual_insp    VARCHAR2(1) not null,
  mca_solicita_en_copia       VARCHAR2(1) not null,
  mca_graba_rechazo           VARCHAR2(1) not null,
  mca_suma_aseg               VARCHAR2(1) not null,
  mca_validacion              VARCHAR2(1) not null,
  mca_validacion_cia          VARCHAR2(1) not null,
  cod_usr                     VARCHAR2(8) not null,
  fec_actu                    DATE not null,
  tip_regulariza              VARCHAR2(1),
  tip_regulariza_esp          VARCHAR2(1),
  pct_regulariza_esp          NUMBER,
  cod_indice                  NUMBER(2),
  nom_prg_regulariza_esp      VARCHAR2(61),
  nom_prg_pre_campo           VARCHAR2(61),
  val_defecto                 VARCHAR2(80),
  nom_tabla_val_defecto       VARCHAR2(30),
  nom_campo_tabla_val_defecto VARCHAR2(30),
  nom_pgm_help                VARCHAR2(12),
  nom_tabla_valida            VARCHAR2(30),
  cod_version                 NUMBER(2),
  nom_global_pgm_help         VARCHAR2(35),
  nom_prg_campo               VARCHAR2(61),
  cod_lista                   NUMBER(3),
  cod_transportes             VARCHAR2(1),
  num_secu_insp               NUMBER(4)
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table G2000020
  is 'TABLA DE DATOS VARIABLE POR RAMO';
-- Add comments to the columns 
comment on column G2000020.cod_cia
  is 'CODIGO DE COMPANIA ';
comment on column G2000020.cod_ramo
  is 'CODIGO DE RAMO ';
comment on column G2000020.cod_modalidad
  is 'CODIGO DE MODALIDAD';
comment on column G2000020.cod_cob
  is 'CODIGO DE COBERTURA ';
comment on column G2000020.cod_agr
  is 'CODIGO DE AGRAVANTE';
comment on column G2000020.fec_validez
  is 'FECHA DE VALIDEZ';
comment on column G2000020.tip_nivel
  is 'CODIGO DE NIVEL';
comment on column G2000020.num_secu
  is 'NUMERO DE SECUENCIA';
comment on column G2000020.cod_campo
  is 'CODIGO DE CAMPO';
comment on column G2000020.mca_inh
  is 'MARCA DE BAJA';
comment on column G2000020.mca_visible
  is 'SERA VISIBLE POR PANTALLA';
comment on column G2000020.mca_obligatorio
  is 'OBLIGATORIO';
comment on column G2000020.mca_valida_si_null
  is 'LANZA LA VALIDACION AUNQUE NO TENGA VALOR';
comment on column G2000020.mca_modalidad
  is 'FORMA MODALIDADES';
comment on column G2000020.mca_calculo
  is 'SU CONTENIDO AFECTA DE FORMA ECONOMICA AL RIESGO/POLIZA';
comment on column G2000020.mca_presupuesto
  is 'NECESARIO REQUERIR EN PRESUPUESTOS';
comment on column G2000020.mca_sini
  is 'INDICA SI ES VISIBLE EN SINIESTROS O NO';
comment on column G2000020.mca_unico
  is 'INDICA SI ES UNICO EN LA BASE DE DATOS';
comment on column G2000020.mca_inspec
  is 'SE UTILIZA EN EL "FORMULARIO" DE LA INSPECCION DEL RIESGO';
comment on column G2000020.mca_busca_insp
  is 'SE ASOCIA LA INSPECCION A UN RIESGO POR ESTE DATO VARIABLE';
comment on column G2000020.mca_busca_por_igual_insp
  is 'INDICA SI EN INSPECCIONES LA BUSQUEDA ES POR IGUAL O POR SOUNDEX';
comment on column G2000020.mca_solicita_en_copia
  is 'INDICA SI EL VALOR DEL DATO SE PEDIRA EN UN RIESGO COPIADO';
comment on column G2000020.mca_graba_rechazo
  is 'INDICA SI SE GRABARA EL DATO AL RECHAZAR LA POLIZA';
comment on column G2000020.mca_suma_aseg
  is 'INDICA SI EL DATO QUE SE ESTA DEFINIENDO ES UN CAPITAL';
comment on column G2000020.mca_validacion
  is 'EL CAMPO TIENE VALIDACIONES';
comment on column G2000020.mca_validacion_cia
  is 'INDICA SI EL DATO VARIABLE TIENE VALIDACION POR COMPA?IA';
comment on column G2000020.cod_usr
  is 'CODIGO USUARIO DE LA ULTIMA ACTUALIZACION DEL REGISTRO';
comment on column G2000020.fec_actu
  is 'FECHA DE LA ULTIMA ACTUALIZACION DEL REGISTRO';
comment on column G2000020.tip_regulariza
  is 'EN CASO DE SER CAPITAL, INDICA SI REGULARIZA O NO EN LA RENOVACION (1) NO REGULARIZADO (2) ESPECIAL (3)RIESGO';
comment on column G2000020.tip_regulariza_esp
  is 'INDICA LA FORMA EN QUE SE REGULARIZARA EL DATO (0) NO REGULARIZA (1) CAPITAL ACTUAL (2) CAPITAL INICIAL (3) IPC (4) OTRO INDICE (5) OBJETO';
comment on column G2000020.pct_regulariza_esp
  is 'EN CASO DE REGULARIZAR POR CAPITAL ACTUAL O POR CAPITAL INICIAL EN ESTE CAMPO SE INDICA EL PORCENTAJE DE REGULARIZACION';
comment on column G2000020.cod_indice
  is 'EN CASO DE REGULARIZAR POR IPC U OTRO INDICE EN ESTE CAMPO SE INDICA EL CODIGO DEL INDICE';
comment on column G2000020.nom_prg_regulariza_esp
  is 'EN CASO DE REGULARIZAR POR OBJETO EN ESTE CAMPO SE INDICA EL NOMBRE DEL OBJETO';
comment on column G2000020.nom_prg_pre_campo
  is 'PROCEDIMIENTO DE PRE CAMPO';
comment on column G2000020.val_defecto
  is 'VALOR POR DEFECTO';
comment on column G2000020.nom_tabla_val_defecto
  is 'TABLA DE VALIDACION POR DEFECTO';
comment on column G2000020.nom_campo_tabla_val_defecto
  is 'TABLA DE VALIDACION POR DEFECTO DEL CAMPO';
comment on column G2000020.nom_pgm_help
  is 'PROGRAMA DE AYUDA';
comment on column G2000020.nom_tabla_valida
  is 'TABLA DE VALIDACION';
comment on column G2000020.cod_version
  is 'VERSION DE LA LISTA DE VALORES';
comment on column G2000020.nom_global_pgm_help
  is 'NOMBRE DE LA GLOBAL DONDE SE ENCUENTRA EL VALOR QUE SE HA DE ASIGNAR AL DATO VARIABLE';
comment on column G2000020.nom_prg_campo
  is 'PROCEDIMIENTO DE VALIDACION';
comment on column G2000020.cod_lista
  is 'CODIGO DE LA LISTA DE VALORES';
comment on column G2000020.cod_transportes
  is 'INDICA PARA DATOS VARIABLES DE TRANSPORTES SI SE PEDIRAN EN LAS POLIZAS MARCO, APLICACIONES O AMBAS';
comment on column G2000020.num_secu_insp
  is 'SECUENCIA DE BUSQUEDA EN INSPECCIONES';
-- Create/Recreate indexes 
create index I_G2000020_CIA_RAMO_CODCAMPO on G2000020 (COD_CIA, COD_RAMO, COD_CAMPO)
  tablespace DATOS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table G2000020
  add constraint PK_G2000020 primary key (COD_CIA, COD_RAMO, COD_MODALIDAD, COD_COB, COD_AGR, TIP_NIVEL, COD_CAMPO, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate check constraints 
alter table G2000020
  add constraint CK_COD_TRANSPORTES_G2000020
  check (cod_transportes  IN ('P','A','X'));
alter table G2000020
  add constraint CK_TIP_NIVEL_G2000020
  check (tip_nivel IN (1,2,3,4,5 ));
alter table G2000020
  add constraint CK_TIP_REGULARIZA_ESP_G2000020
  check (tip_regulariza_esp IN ('1','2','3','4','5' ));
alter table G2000020
  add constraint CK_TIP_REGULARIZA_G2000020
  check (tip_regulariza IN ('1','2','3' ));
  
  
  
  
 
  -- Create table
create table A1001752
(
  cod_cia        NUMBER(2) not null,
  cod_cuadro_com NUMBER(3) not null,
  nom_cuadro_com VARCHAR2(30) not null,
  abr_cuadro_com VARCHAR2(5) not null,
  cod_usr        VARCHAR2(8) not null,
  fec_actu       DATE not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001752
  is 'TABLA DE DESCRIPCIONES DE CUADRO DE COMISION';
-- Add comments to the columns 
comment on column A1001752.cod_cia
  is 'CODIGO DE LA COMPA?IA.';
comment on column A1001752.cod_cuadro_com
  is 'CODIGO DEL CUADRO DE COMISION';
comment on column A1001752.nom_cuadro_com
  is 'NOMBRE DEL CUADRO DE COMISION';
comment on column A1001752.abr_cuadro_com
  is 'ABREVIATURA DEL CUADRO DE COMISION';
comment on column A1001752.cod_usr
  is 'CODIGO DEL USUARIO DE LA ACTUALIZACION';
comment on column A1001752.fec_actu
  is 'FECHA DE LA ACTUALIZACION';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001752
  add constraint PK_A1001752 primary key (COD_CIA, COD_CUADRO_COM)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

  
  -- Create table
create table A1001750
(
  cod_cia           NUMBER(2) not null,
  cod_cuadro_com    NUMBER(3) not null,
  cod_ramo          NUMBER(3) not null,
  cod_cob           NUMBER(4) not null,
  pct_agt_npr       NUMBER not null,
  pct_agt_car       NUMBER not null,
  pct_rapp_npr      NUMBER not null,
  pct_rapp_car      NUMBER not null,
  pct_ase_npr       NUMBER not null,
  pct_ase_car       NUMBER not null,
  fec_validez       DATE not null,
  nom_prg           VARCHAR2(61),
  nom_prg_anulacion VARCHAR2(61),
  cod_usr           VARCHAR2(8) not null,
  fec_actu          DATE not null,
  mca_inh           VARCHAR2(1) not null
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A1001750
  is 'TABLA DE PORCENTAJES DE CUADROS DE COMISION';
-- Add comments to the columns 
comment on column A1001750.cod_cia
  is 'CODIGO DE COMPANIA ';
comment on column A1001750.cod_cuadro_com
  is 'CUADRO DE COMISION ASIGNADO AL AGENTE ';
comment on column A1001750.cod_ramo
  is 'CODIGO DE RAMO ';
comment on column A1001750.cod_cob
  is 'CODIGO DE COBERTURA ';
comment on column A1001750.pct_agt_npr
  is 'PORCENTAJE DE NUEVA PRODUCCION ';
comment on column A1001750.pct_agt_car
  is 'PORCENTAJE DE CARTERA ';
comment on column A1001750.pct_rapp_npr
  is 'PORCENTAJE SOBRER EL RAPPEL DE NUEVA PRODUCCION';
comment on column A1001750.pct_rapp_car
  is 'PORCENTAJE SOBRE EL RAPPEL DE CARTERA ';
comment on column A1001750.pct_ase_npr
  is 'PORCENTAJE NUEVA PRODUCCION PARA ASESOR';
comment on column A1001750.pct_ase_car
  is 'PORCENTAJE CARTERA PARA ASESOR ';
comment on column A1001750.fec_validez
  is 'FECHA DE EFECTO DEL CUADRO PARA RAMO COBERTURA';
comment on column A1001750.nom_prg
  is 'NOMBRE DEL PROCEDIMIENTO PARA RECUPERAR LOS PORCENTAJES';
comment on column A1001750.nom_prg_anulacion
  is 'NOMBRE DEL PROCEDIMIENTO PARA RECUPERAR LOS PORCENTAJES, EN CASO DE PRIMA NEGATIVA';
comment on column A1001750.cod_usr
  is 'FECHA DE ULTIMA ACTUALIZACION ';
comment on column A1001750.fec_actu
  is 'CODIGO DE USUARIO QUE ACTUALIZA ';
comment on column A1001750.mca_inh
  is 'MARCA DE FILA INHABILITADA';
-- Create/Recreate primary, unique and foreign key constraints 
alter table A1001750
  add constraint PK_A1001750 primary key (COD_CIA, COD_CUADRO_COM, COD_RAMO, COD_COB, FEC_VALIDEZ)
  using index 
  tablespace INDICES
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 256K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate check constraints 
alter table A1001750
  add constraint CK_MAC_INH_A1001750
  check (mca_inh IN ('S','N'));
