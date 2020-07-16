# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact
     contact = Contact.new(name: "侍 太郎",email: 'from@gmail.com',requirement: 'visit',remark: '備考備考')

     ContactMailer.send_mail(contact)
   end
end
