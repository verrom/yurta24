class AdminMailer < ApplicationMailer
	default from: "info@yurta24.ru"

    def notification(contact_form)
        mail(to: "yurta24@yandex.ru, kamaz-enisey@mail.ru, verevkin.roma@gmail.com", subject: 'Новое сообщение на сайте yurta24.ru')
    end
end