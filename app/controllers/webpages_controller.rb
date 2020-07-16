class WebpagesController < ApplicationController

  def index
    @kv_imgs = WebImage.where(place: 'kv').all
    @members  = Member.all
    @articles    = Article.all
  end

  def profile

  end

  def study
    @results = Result.all
  end
  def member
    @now_members = Member.where.not(grade: 'graduate')
    @old_members = Member.where(grade: 'graduate')
  end
  def contact

  end

  def contact_create
    contact = Contact.new(contact_params)
    ContactMailer.send_mail(contact).deliver_now
  end

  private

  def contact_params
    params.permit(:name,:email,:requirement,:appointment1,:appointment2,:remark)
  end
end
