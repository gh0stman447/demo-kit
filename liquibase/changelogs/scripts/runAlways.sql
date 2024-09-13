/*обновляем дату установки наряда*/
      UPDATE adm.providers
      SET subtitle=to_char (now(), 'DD.MM.YYYY');


