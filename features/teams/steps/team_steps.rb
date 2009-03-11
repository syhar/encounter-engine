Given %r{зарегистрирована команда "(.*)" под руководством (.*)}i do |team_name, nickname|
  Допустим %{я залогинен как #{nickname}}
  Если %{я пытаюсь создать команду "#{team_name}"}
  То %{должен быть перенаправлен в личный кабинет}
  И %{там должен увидеть "Вы - капитан команды #{team_name}"}
end

When %r{пытаюсь создать команду "(.*)"}i do |team_name|
  Если %{захожу в личный кабинет}
  И %{я иду по ссылке "Создать команду"}
  И %{ввожу "#{team_name}" в поле "Название"}
  И %{нажимаю "Создать команду"}
end

Given %r{пользователь (.*) состоит в команде (.*)}i do |nickname, team_name|
  captain_nickname = Team.find_by_name(team_name).captain.nickname

  Допустим %{зарегистрирован пользователь #{nickname}}
  А %{я логинюсь как #{captain_nickname}}
  И %{высылаю пользователю #{nickname} приглашение вступить в команду}
  Если %{я логинюсь как #{nickname}}
  И %{я иду по ссылке "Принять"}
  То %{должен быть перенаправлен в личный кабинет}
  И %{должен увидеть "Вы состоите в команде #{team_name}"}
end