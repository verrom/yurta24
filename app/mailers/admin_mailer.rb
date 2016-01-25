class AdminMailer < ApplicationMailer
	default from: "info@yurta24.ru"

    def notification(contact_form)
        mail(to: "verevkin.roma@gmail.com, verevkin_ra@yandex.ru, verrom@inbox.ru", subject: 'Новое сообщение на сайте yurta24.ru')
    end
end