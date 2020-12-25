class HistoryController < ApplicationController
  before_action :authenticate_user!
  before_action :find_history, only:[:show, :edit, :update, :destroy]
  def index
     @histories = History.order(:yomigana)
  end

  def show
  end

  def new
      @history = History.new
  end

  def create
    puts history_params
    @history = History.new(history_params)
    # @history.user_id = current_user.id
    if @history.save
      redirect_to :action => 'index', notice: '登録できました'
    else
      render :new, alert: '登録できませんでした'
    end
  end
  
  def update
    if @history.update(history_params)
      redirect_to @history, notice: '登録できました'
    else
      render :edit, alert: '登録できませんでした'
    end
  end

  def destroy
    if @history.destroy
      redirect_to root_path, notice: '削除に成功しました'
    else
      redirect_to root_path, alert: '削除に失敗しました'
    end
  end

  def edit
  end

  def search
    # @histories = History.where('name LIKE ?', "%#{search}%")
    @histories = History.where("name LIKE ?", "%#{params[:search]}%")
  end
 
  private

  def find_history
    @history = History.find(params[:id])
  end

  def history_params
    params.require(:history).permit(
      :name, 
      :yomigana,
      :postcode, 
      :prefecture_code,
      :address_city, 
      :address_street, 
      :address_building, 
      :telno, 
      :cemetery_name, 
      :section, 
      :contract_details, 
      :remarks)
  end
end
 