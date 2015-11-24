class AdminMailer < ApplicationMailer
	default from: "xxx@yurta24.ru"

    def notification(contact_form)
        mail(to: "xxxxxxxxxx@example.com", subject: 'New message on your web-site')
    end
end
