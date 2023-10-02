CLASS zcl_rld_5263 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_rld_5263 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_cat TYPE TABLE OF ztb_acc_cat_5263,
          lt_catego  TYPE TABLE OF ztb_catego_5263,
          lt_client  TYPE TABLE OF ztb_client_5263,
          lt_clnts   TYPE TABLE OF ztb_clnts_5263,
          lt_libros  TYPE TABLE OF ztb_libros_5263.

    lt_libros = VALUE #(
    ( id_libro = '01' bi_categ = 'A' titulo = 'Diccionario de los sentimientos' autor = 'CAGIGA L, Jose Maria'
      editorial = 'ANAGRAMA' idioma = 'S' paginas = '350' precio = '84.99' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '02' bi_categ = 'A' titulo = 'La selva del lenguaje' autor = 'Hoagland, M.'
      editorial = 'LATERZA' idioma = 'S' paginas = '486' precio = '146.00' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '03' bi_categ = 'A' titulo = 'Ética Para Náufragos' autor = 'Vallejo-Nágera, Juan'
      editorial = 'LA SOCIAL' idioma = 'S' paginas = '236' precio = '35.00' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '04' bi_categ = 'A' titulo = 'La Sociedad Global' autor = 'Lane, Frank W'
      editorial = 'JOAQUIN MORTIZ' idioma = 'S' paginas = '189' precio = '18.50' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '05' bi_categ = 'B' titulo = 'Evangelio de San Pablo' autor = 'DICKSON, David'
      editorial = 'EDIBESA' idioma = 'S' paginas = '475' precio = '25.10' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '06' bi_categ = 'B' titulo = 'El Profeta: El jardin del Profeta' autor = 'Araujo, Joaquin'
      editorial = 'ABEBOOKS' idioma = 'S' paginas = '750' precio = '110.05' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '07' bi_categ = 'B' titulo = 'Your Growing Child and Religion' autor = 'Luka Brajnovic'
      editorial = 'KELVIN BOOKS' idioma = 'E' paginas = '380' precio = '65.49' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '08' bi_categ = 'B' titulo = 'Carta a las familias' autor = 'Sastre, José Luis'
      editorial = 'PPC' idioma = 'S' paginas = '265' precio = '19.99' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '09' bi_categ = 'C' titulo = 'The language of science' autor = 'OMANIQUE, John'
      editorial = 'SALVAR EDICION' idioma = 'E' paginas = '125' precio = '14.99' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '10' bi_categ = 'C' titulo = 'Energy in Evolution' autor = 'Meade, J. E.'
      editorial = 'ROW' idioma = 'E' paginas = '276' precio = '39.99' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '11' bi_categ = 'D' titulo = 'Análisis Numérico' autor = 'Timothy Sauer'
      editorial = 'Addison-wesley' idioma = 'E' paginas = '390' precio = '54.95' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '12' bi_categ = 'D' titulo = 'Algebra Matricial' autor = 'Jose Manuel Gamboa'
      editorial = 'Anaya' idioma = 'S' paginas = '160' precio = '8.85' moneda = 'EUR' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '13' bi_categ = 'D' titulo = 'Matematicas Galdos' autor = 'VV.A.A.'
      editorial = 'Cultural' idioma = 'S' paginas = '220' precio = '30.00' moneda = 'EUR' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '14' bi_categ = 'E' titulo = 'Un pequeño paso para un hombre' autor = 'Rafael Clemente'
      editorial = 'Cúpula' idioma = 'S' paginas = '328' precio = '18.52' moneda = 'EUR' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '15' bi_categ = 'E' titulo = 'Mecánica de Materiales' autor = 'John T. DeWolf'
      editorial = 'MCGRAW-HILL' idioma = 'E' paginas = '635' precio = '62.51' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '16' bi_categ = 'E' titulo = 'Fundamentos de electricidad' autor = 'Jorge López Crespo'
      editorial = 'Thomson Paraninfo' idioma = 'S' paginas = '334' precio = '30.40' moneda = 'EUR' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '17' bi_categ = 'F' titulo = 'La popularización del deporte' autor = 'García Ferrando, Manuel'
      editorial = 'Centro de investig.' idioma = 'S' paginas = '180' precio = '19.00' moneda = 'EUR' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '18' bi_categ = 'F' titulo = 'Ideal democrático y bienestar personal' autor = 'Llopis Goig, Ramón'
      editorial = 'Centro de Investig.' idioma = 'S' paginas = '268' precio = '9.50' moneda = 'EUR' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '19' bi_categ = 'F' titulo = '14 canciones. El viaje del elefante' autor = 'Pastor, Luis'
      editorial = 'El Ángel Caído' idioma = 'S' paginas = '48' precio = '21.00' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '20' bi_categ = 'F' titulo = '4 notas de jazz' autor = 'Fernández Martínez, Gema'
      editorial = 'ECU' idioma = 'S' paginas = '250' precio = '10.00' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '21' bi_categ = 'F' titulo = 'A mil besos. Canciones y poemas' autor = 'Cohen, Leonard'
      editorial = 'Visor Libros' idioma = 'E' paginas = '250' precio = '16.00' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '22' bi_categ = 'G' titulo = 'Nada tan amargo: Seis poetas Inglesas' autor = 'VV.A.A.'
      editorial = 'DESVELO EDIONES' idioma = 'S' paginas = '208' precio = '17.10' moneda = 'EUR' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '23' bi_categ = 'G' titulo = 'Poemas' autor = 'Maria Zambrano'
      editorial = 'S.L. EDICIONES' idioma = 'S' paginas = '212' precio = '15.10' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '24' bi_categ = 'H' titulo = 'Atlas de los exploradores' autor = 'VV.A.A.'
      editorial = 'PLANETA' idioma = 'S' paginas = '320' precio = '34.15' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '25' bi_categ = 'H' titulo = 'El dominio mundial' autor = 'Pedro Baños'
      editorial = 'Ariel' idioma = 'S' paginas = '368' precio = '22.70' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '26' bi_categ = 'H' titulo = 'Historia Latinoamericana 1700-2005' autor = 'Teresa Eggers Brass'
      editorial = 'EDITORIAL MAIPUE' idioma = 'S' paginas = '620' precio = '11.39' moneda = 'USD' formato = 'E'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '27' bi_categ = 'C' titulo = 'Camino al éxito' autor = 'Hoagland, M.'
      editorial = 'LATERZ A' idioma = 'S' paginas = '486' precio = '146.00' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '28' bi_categ = 'E' titulo = 'La historia de los Andes' autor = 'Hoagland, M.'
      editorial = 'LATERZ A' idioma = 'S' paginas = '486' precio = '146.00' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '29' bi_categ = 'G' titulo = 'El Alquimista' autor = 'Hoagland, M.'
      editorial = 'LATERZ A' idioma = 'S' paginas = '486' precio = '146.00' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '71' bi_categ = 'G' titulo = 'Los heraldos negros' autor = 'César Vallejo'
      editorial = 'Peisa' idioma = 'S' paginas = '128' precio = '23.00' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

    ( id_libro = '72' bi_categ = 'G' titulo = 'Aves sin nido' autor = 'Clorinda Matto de Turner'
      editorial = 'Visor Libros' idioma = 'S' paginas = '356' precio = '34.15' moneda = 'USD' formato = 'P'
      url = 'https://eltinteroeditorial.com/wp-content/uploads/2017/06/c%C3%B3mo-es-el-proceso-de-edici%C3%B3n.jpg' )

     ).

    DELETE FROM ztb_libros_5263.
    INSERT ztb_libros_5263 FROM TABLE @lt_libros.

    SELECT FROM ztb_libros_5263 FIELDS * INTO TABLE @lt_libros.

    out->write( sy-dbcnt ).
    out->write( |ztb_libros_5263 data inserted successfully| ).

    lt_acc_cat = VALUE #(
    ( bi_categ = 'A' tipo_acceso = '1' )
    ( bi_categ = 'B' tipo_acceso = '1' )
    ( bi_categ = 'C' tipo_acceso = '2' )
    ( bi_categ = 'D' tipo_acceso = '2' )
    ( bi_categ = 'E' tipo_acceso = '2' )
    ( bi_categ = 'F' tipo_acceso = '3' )
    ( bi_categ = 'G' tipo_acceso = '3' )
    ( bi_categ = 'H' tipo_acceso = '4' )
    ).

    DELETE FROM ztb_acc_cat_5263.
    INSERT ztb_acc_cat_5263 FROM TABLE @lt_acc_cat.

    SELECT FROM ztb_acc_cat_5263 FIELDS * INTO TABLE @lt_acc_cat.

    out->write( sy-dbcnt ).
    out->write( |ztb_acc_cat_5263 data inserted successfully| ).

    lt_catego = VALUE #(
        ( bi_categ = 'A' descripcion = 'Filosofía, psicología' )
        ( bi_categ = 'B' descripcion = 'Religión, mitología' )
        ( bi_categ = 'C' descripcion = 'Ciencias sociales (derecho, política, economía)' )
        ( bi_categ = 'D' descripcion = 'Ciencias naturales (matemáticas, astronomía, física)' )
        ( bi_categ = 'E' descripcion = 'Ciencias aplicadas (técnología, informática)' )
        ( bi_categ = 'F' descripcion = 'Arte, música, deporte' )
        ( bi_categ = 'G' descripcion = 'Lengua, Poesía, teatro' )
        ( bi_categ = 'H' descripcion = 'Geografía, historia' )
     ).

    DELETE FROM ztb_catego_5263.
    INSERT ztb_catego_5263 FROM TABLE @lt_catego.

    SELECT FROM ztb_catego_5263 FIELDS * INTO TABLE @lt_catego.

    out->write( sy-dbcnt ).
    out->write( |ztb_catego_5263 data inserted successfully| ).

    lt_client = VALUE #(
        ( id_cliente = '005638984K' nombre = 'Andrew' apellidos = 'Roberts'
          email = 'STEPHANIE.ROBERTS@EMAIL.COM' tipo_acceso = '1'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '049320909Q' nombre = 'Natalie' apellidos = 'Clark'
          email = 'PETER.CLARK@EMAIL.COM' tipo_acceso = '2'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '049573865T' nombre = 'Faith' apellidos = 'Black'
          email = 'DAN.BLACK@EMAIL.COM' tipo_acceso = '1'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '203947278B' nombre = 'Carolyn' apellidos = 'Wright'
          email = 'ADRIAN.WRIGHT@EMAIL.COM' tipo_acceso = '3'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '234234231T' nombre = 'Penelope' apellidos = 'King'
          email = 'CAROLINE.KING@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '239482309W' nombre = 'Julian' apellidos = 'Underwood'
          email = 'DAN.UNDERWOOD@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '276594867J' nombre = 'Olivia' apellidos = 'Allan'
          email = 'OWEN.ALLAN@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '283748858A' nombre = 'Eric' apellidos = 'Knox'
          email = 'LILY.KNOX@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '324726345S' nombre = 'Vanessa' apellidos = 'Baker'
          email = 'SUE.BAKER@EMAIL.COM ' tipo_acceso = '4'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '340958439D' nombre = 'Michael' apellidos = 'Short'
          email = 'JASON.SHORT@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '345093450E' nombre = 'Sue' apellidos = 'Sanderson'
          email = 'JOAN.SANDERSON@EMAIL.COM' tipo_acceso = '3'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '345838534R' nombre = 'Lily' apellidos = 'Langdon'
          email = 'ANDREW.LANGDON@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '348947597P' nombre = 'Lillian' apellidos = 'Davies'
          email = 'JULIAN.DAVIES@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '378458844M' nombre = 'Joseph' apellidos = 'Smith'
          email = 'NATALIE.SMITH@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '423586845G' nombre = 'Stephanie' apellidos = 'Quinn'
          email = 'LILLIAN.QUINN@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '430958433A' nombre = 'Joan' apellidos = 'Short'
          email = 'WENDY.SHORT@EMAIL.COM' tipo_acceso = '2'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '439853453C' nombre = 'Wendy' apellidos = 'Newman'
          email = 'JOSEPH.NEWMAN@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '453532543O' nombre = 'Neil' apellidos = 'Wilson'
          email = 'VANESSA.WILSON@EMAIL.COM' tipo_acceso = '1'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '489632882D' nombre = 'Sonia' apellidos = 'Welch'
          email = 'NEIL.WELCH@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )

        ( id_cliente = '540867547H' nombre = 'Adrian' apellidos = 'Young'
          email = 'PENELOPE.YOUNG@EMAIL.COM' tipo_acceso = '5'
          url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
     ).

    DELETE FROM ztb_client_5263.
    INSERT ztb_client_5263 FROM TABLE @lt_client.

    SELECT FROM ztb_client_5263 FIELDS * INTO TABLE @lt_client.

    out->write( sy-dbcnt ).
    out->write( |ztb_client_5263 data inserted successfully| ).

    lt_clnts = VALUE #(
        ( id_cliente = '005638984K' id_libro = '01' )
        ( id_cliente = '005638984K' id_libro = '20' )
        ( id_cliente = '005638984K' id_libro = '21' )
        ( id_cliente = '049320909Q' id_libro = '02' )
        ( id_cliente = '049573865T' id_libro = '03' )
        ( id_cliente = '203947278B' id_libro = '04' )
        ( id_cliente = '234234231T' id_libro = '05' )
        ( id_cliente = '239482309W' id_libro = '06' )
        ( id_cliente = '239482309W' id_libro = '10' )
        ( id_cliente = '276594867J' id_libro = '07' )
        ( id_cliente = '276594867J' id_libro = '01' )
        ( id_cliente = '283748858A' id_libro = '08' )
        ( id_cliente = '283748858A' id_libro = '22' )
        ( id_cliente = '324726345S' id_libro = '09' )
        ( id_cliente = '340958439D' id_libro = '10' )
        ( id_cliente = '345093450E' id_libro = '11' )
        ( id_cliente = '345838534R' id_libro = '12' )
        ( id_cliente = '345838534R' id_libro = '03' )
        ( id_cliente = '348947597P' id_libro = '13' )
        ( id_cliente = '348947597P' id_libro = '22' )
        ( id_cliente = '378458844M' id_libro = '14' )
        ( id_cliente = '423586845G' id_libro = '15' )
        ( id_cliente = '430958433A' id_libro = '16' )
        ( id_cliente = '439853453C' id_libro = '17' )
        ( id_cliente = '439853453C' id_libro = '22' )
        ( id_cliente = '439853453C' id_libro = '01' )
        ( id_cliente = '453532543O' id_libro = '18' )
        ( id_cliente = '453532543O' id_libro = '22' )
        ( id_cliente = '489632882D' id_libro = '19' )
        ( id_cliente = '540867547H' id_libro = '20' )
    ).

    DELETE FROM ztb_clnts_5263.
    INSERT ztb_clnts_5263 FROM TABLE @lt_clnts.

    SELECT FROM ztb_clnts_5263 FIELDS * INTO TABLE @lt_clnts.

    out->write( sy-dbcnt ).
    out->write( |ztb_clnts_5263 data inserted successfully| ).

  ENDMETHOD.

ENDCLASS.
