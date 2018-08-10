class ListController < ApplicationController

  def findOneStation

  end
  
  def findStores
    #이 액션에서 검색을 수행한다
    @station = Station.all
    @station = Station.where("station_name like ?", params[:search])
    #where을해서 statioDB에 폼태그에 작석한 station_nmae과 같은 레코드들를(객체배열)을반환 한다. (레코드는 모델의 하나의 객체)
    
    @stores = Store.where(:station_id => @station[0].id)
    # @selectedstores = Store.where("station_name like ?", @station[0].station_name)
  end
  
  def storeCreate
    @store = Store.new
    @store.user_id = current_user.id
    @store.store_name = params[:storeName]
    @store.station_id = params[:storeStation]
    
    uploader1=ImguploaderUploader.new
    uploader1.store!(params[:storeImg])
    uploader2=ImguploaderUploader.new
    uploader2.store!(params[:storeMenuImg1])
    uploader3=ImguploaderUploader.new
    uploader3.store!(params[:storeMenuImg2])
    uploader4=ImguploaderUploader.new
    uploader4.store!(params[:storeMenuImg3])
    @store.store_img = uploader1.url
    @store.store_menu_img1 = uploader2.url
    @store.store_menu_img2 = uploader3.url
    @store.store_menu_img3 = uploader4.url
    
    @store.store_information = params[:storeInformation]
    @store.store_contact = params[:storeContact]
    @store.store_group = params[:storeGroup]
    @store.store_seat_total = params[:storeSeatTotal]
    @store.store_seat_count = params[:storeSeatCount]
    @store.store_address = params[:storeAddress]
    @store.save
    
    @user = User.find(current_user.id)
    @user.permission += 1
    @user.save
    # puts @user.email + "######"
    # # @user.store_id = @store.id
    # puts @user.store_id + "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    redirect_to '/list/findOneStation'
  end
  
  def storeApply
    if(current_user.permission == 0)
    @stations = Station.all
    else
      redirect_to '/list/findOneStation'
    end
  end
  
  def storeMypage
    @store = Store.find_by(:user_id => current_user.id)
    @stations = Station.all
  end
  
  def storeMypageEdit
    @store = Store.find_by(:user_id => current_user.id)
    @stations = Station.all
  end
  
  def storeMypageUpdate
    @store = Store.find_by(:user_id => current_user.id)
    @store.store_name = params[:storeName]
    @store.station_id = params[:storeStation]
    
    uploader1=ImguploaderUploader.new
    uploader1.store!(params[:storeImg])
    uploader2=ImguploaderUploader.new
    uploader2.store!(params[:storeMenuImg1])
    uploader3=ImguploaderUploader.new
    uploader3.store!(params[:storeMenuImg2])
    uploader4=ImguploaderUploader.new
    uploader4.store!(params[:storeMenuImg3])
    @store.store_img = uploader1.url
    @store.store_menu_img1 = uploader2.url
    @store.store_menu_img2 = uploader3.url
    @store.store_menu_img3 = uploader4.url
    
    @store.store_information = params[:storeInformation]
    @store.store_contact = params[:storeContact]
    @store.store_group = params[:storeGroup]
    @store.store_seat_total = params[:storeSeatTotal]
    @store.store_seat_count = params[:storeSeatCount]
    @store.store_address = params[:storeAddress]
    @store.save    
  end
  
end