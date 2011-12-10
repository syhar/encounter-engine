# language: ru

Функционал: Получение приглашения вступить в команду
    Чтобы иметь возможность принять или отклонить приглашение
    Пользователь должен видеть список приглашений с соответствующими кнопками у себя в личном кабинете

Сценарий: Пользователю приходит приглашение вступить в команду
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И я логинюсь как Noel
    И я высылаю пользователю Alisa приглашение вступить в команду
    Если я логинюсь как Alisa
    То должен увидеть "Вас пригласили в команду Mushrooms"

Сценарий: Пользователю приходит приглашение от двух команд
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И зарегистрирована команда "Плакучие Ивы" под руководством Iv
    И я логинюсь как Noel
    И высылаю высылаю пользователю Alisa приглашение вступить в команду
    И я логинюсь как Iv
    И высылаю высылаю пользователю Alisa приглашение вступить в команду
    Если я логинюсь как Alisa
    И захожу в личный кабинет
    То должен увидеть "Вас пригласили в команду Mushrooms"
    И должен увидеть "Вас пригласили в команду Плакучие Ивы"

Сценарий: Пользователь видит кнопки "Принять" и "Отказаться" если он приглашён в команду
    Допустим зарегистрирован пользователь Alisa
    И зарегистрирована команда "Mushrooms" под руководством Noel
    И я логинюсь как Noel
    Если я высылаю пользователю Alisa приглашение вступить в команду
    И логинюсь как Alisa
    То должен увидеть "(принять)"
    И должен увидеть "(отказаться)"
