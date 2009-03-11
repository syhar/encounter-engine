Функционал:
    Чтобы ненужные приглашения не маячили перед глазами
    А пригласившие капитаны поняли, что им отказали
    Пользователь явно отказывается от приглашения в команду

Сценарий: Пользователь отказыавется от единственного приглашения
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И я высылаю пользователю Alisa приглашение вступить в команду
    И все отосланные к этому моменту письма прочитаны
    И я логинюсь как Alisa
    Если я иду по ссылке "Отказаться"
    То должен быть перенаправлен в личный кабинет
    И не должен видеть "Вас пригласили в команду Mushrooms"
    И не должен видеть "Отказаться"
    И одно письмо с текстом "Пользователь Alisa отказался от приглашения" должно быть выслано на noel@diesel.kg

Сценарий: Пользователь отказыается от одного из нескольких приглашений
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И зарегистрирована команда "Плакучие Ивы" под руководством Iv
    И я логинюсь как Noel
    И высылаю высылаю пользователю Alisa приглашение вступить в команду
    И я логинюсь как Iv
    И высылаю высылаю пользователю Alisa приглашение вступить в команду
    И все отосланные к этому моменту письма прочитаны
    Если я логинюсь как Alisa
    И захожу в личный кабинет
    То должен увидеть "Вас пригласили в команду Mushrooms"
    И должен увидеть "Вас пригласили в команду Плакучие Ивы"
    Если я как пользователь Alisa отказываюсь от приглашения команды Mushrooms
    То всё ещё должен увидеть "Вас пригласили в команду Плакучие Ивы"
    И больше не должен видеть "Вас пригласили в команду Mushrooms"
    И одно письмо с текстом "Пользователь Alisa отказался от приглашения" должно быть выслано на noel@diesel.kg
    И никакие письма не должны быть высланы на iv@diesel.kg