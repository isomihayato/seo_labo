class ContactMailer < ApplicationMailer
    def send_mail(contact)
      @contact = contact
      mail(
        from: 'seolabo@seo.com',
        to:   'mseo15212@gmail.com',
        subject: '【SEO Labo　お問い合わせ】'
      )
    end
end
