Given %r{зарегистрирован пользователь (.*)$}i do |nickname|
  Если %{я пытаюсь зарегистрироваться как #{nickname}}
  То %{То я должен быть перенаправлен в личный кабинет}
  И %{должен увидеть "#{nickname}"}
  Допустим %{я разлогиниваюсь}
  И %{все отосланные к этому моменту письма прочитаны}
end

When %r{пытаюсь зарегистрироваться как (.*)}i do |nickname|
  email = "#{nickname.downcase}@diesel.kg"

  Допустим %{я захожу по адресу /signup}
  Если %{я ввожу "#{nickname}" в поле "Имя"}
  И %{ввожу "#{email}" в поле "Email"}
  И %{ввожу "#{@the_password}" в поле "Пароль"}
  И %{ввожу "#{@the_password}" в поле "Подтверждение"}
  И %{нажимаю "Зарегистрироваться"}
end

Then %r{могу зарегистрироваться как (.*)} do |nickname|
  Если %{я пытаюсь зарегистрироваться как #{nickname}}
  То %{должен быть перенаправлен в личный кабинет}
  И %{должен увидеть "#{nickname}"}
end