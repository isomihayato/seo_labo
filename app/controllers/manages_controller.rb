class ManagesController < ApplicationController
  before_action :require_user_logged_in

  def index

  end

  def edit_img
    @kv_imgs     = WebImage.where(place: 'kv').all
    @member_imgs = Member.all
  end
  def img_edit
    @kv_img = WebImage.find_by(id: params[:id])
  end
  def img_create
    img = WebImage.new(params_web_img)
    if img.save
      flash[:success] = '画像登録完了'
      redirect_to edit_img_path
    else
      flash.now[:danger] = '登録失敗'
      render :edit_img
    end
  end
  def img_update
    img = WebImage.find_by(id: params[:id])
    if img.update(params.permit(:image))
      flash[:success] = '画像編集 完了'
      redirect_to edit_img_path
    else
      flash.now[:danger] = '編集失敗'
      render :edit_img
    end
  end
  def img_delete
    img = WebImage.find_by(id: params[:id])
    img.destroy
    flash[:success] = '成果を削除しました'
    redirect_to edit_img_path
  end

  def edit_result
    @results = Result.all
    @members = []
    @members= @members | Member.pluck(:name,:id)
  end
  def result_create
    result = Result.new(params_result)
    member  = Member.find_by(id: params[:name])

    if result.save && member.make(result)
      flash[:success] = '研究成果登録完了'
      redirect_to edit_result_path
    else
      flash.now[:danger] = '登録失敗'
      render :edit_result
    end
  end
  def result_edit
    @result = Result.find_by(id: params[:id])
    @member = @result.authors
    @members = []
    @members= @members | Member.pluck(:name,:id)
  end
  def result_update
    result = Result.find_by(id: params[:id])
    member = Member.find_by(id: result.authors)
    if article.update(params_result) && member.make_update(result)
      flash[:success] = '記事編集完了'
      redirect_to edit_result_path
    else
      flash.now[:danger] = '編集失敗'
      render :edit_result
    end
  end
  def result_delete
    @result = Result.find(params[:id])
    @result.relations.find_by(id: @result.relations.ids).delete if @result.relations
    @result.destroy

    flash[:success] = '成果を削除しました'
    redirect_to edit_result_path
  end


  def edit_news
    @members     = Member.all
    @articles    = Article.all.page(params[:page]).per(10)
  end
  def news_create
    news = Article.new(params_news)
    if news.save
      flash[:success] = '記事登録完了'
      redirect_to edit_news_path
    else
      flash.now[:danger] = '登録失敗'
      render :edit_news
    end
  end
  def news_edit
    @article = Article.find_by(id: params[:id])
  end
  def news_update
    article = Article.find_by(id: params[:id])
    if article.update(params_news)
      flash[:success] = '記事編集完了'
      redirect_to edit_news_path
    else
      flash.now[:danger] = '編集失敗'
      render :edit_news
    end
  end
  def news_delete
    @article = Article.find(params[:id])
    @article.destroy

    flash[:success] = '記事は正常に削除されました'
    redirect_to edit_news_path
  end



  def edit_member
    @members = Member.all
  end
  def member_create
    member = Member.new(params_img)
    if member.save
      flash[:success] = 'メンバー登録完了'
      redirect_to edit_member_path
    else
      flash.now[:danger] = '登録失敗'
      render :edit_member
    end
  end
  def member_edit
    @member = Member.find(params[:id])
  end
  def member_update
    member = Member.find_by(id: params[:id])
    if member.update(params_img)
      flash[:success] = 'メンバー編集完了'
      redirect_to edit_member_path
    else
      flash.now[:danger] = '編集失敗'
      render :edit_member
    end
  end
  def member_delete
    @member = Member.find(params[:id])
    @member.destroy

    flash[:success] = '記事は正常に削除されました'
    redirect_to edit_member_path
  end

  private

  def params_img
    params.permit(:name, :age, :grade, :image)
  end

  def params_web_img
    params.permit(:place, :image)
  end

  def params_news
    params.permit(:title,:image)
  end
  def params_result
    params.permit(:title,:image)
  end

end
