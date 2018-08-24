class ListController < ApplicationController

  # 첫 페이지 + 역 검색
  def findOneStation
    # if current_user != nil && current_user.permission == 2
    #   redirect_to "/list/adminUser"
    if current_user != nil && Store.find_by(:user_id => current_user.id) == nil && current_user.permission != 2
      redirect_to "/list/storeApply"
    end
  end
  
  # 역 검색 결과
  def findStores
    @station = Station.all
    @station = Station.find_by("station_name like ?", params[:search])
    @stores = Store.where(:station_id => @station.id)
  end
  
  # 모든 사용자가 보는 매장 상세 정보 get
  def findStoreInfo
    @store = Store.find(params[:store_id])
  end
  
  # 매장 등록 get
  def storeApply
    # permission == 0 이면 매장 관리자
    if(current_user.permission == 0)
      @stations = Station.all
    else
      redirect_to '/list/findOneStation'
    end
  end
  
  # 매장 등록 post
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
    
    redirect_to '/list/findOneStation'
  end
  
  # 매장 관리자 매장 수정 get
  def storeMypageEdit
    @store = Store.find_by(:user_id => current_user.id)
    @stations = Station.all
  end
  
  # 매장 관리자 매장 수정 post
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
    # @store.store_seat_count = params[:storeSeatCount]
    @store.store_address = params[:storeAddress]
    @store.save
    
    redirect_to "/list/findStoreInfo/#{@store.id}"
  end
  
  # 자리정보를 보여주는 액션 과 뷰
  def storeSeatInfo
    @store = Store.find_by(:user_id => current_user.id)
  end
  
  # 자리를 증가시키는 액션
  def storeSeatCountPlus
    @store = Store.find_by(:user_id => current_user.id)
    if @store.store_seat_count < @store.store_seat_total
      @store.store_seat_count += 1
      @store.save
    end
    redirect_to "/list/storeSeatInfo"
  end
  
  # 이게 자리 감소시키는 액션
  def storeSeatCountMinus
    @store = Store.find_by(:user_id => current_user.id)
    if @store.store_seat_count != 0
      @store.store_seat_count -= 1
      @store.save
    end
    redirect_to "/list/storeSeatInfo"
  end
  
  def adminUser
    if current_user.permission == 2
      @store = Store.find_by(:user_id => current_user.id)
      @stores = Store.all
    else
      redirect_to '/list/findOneStation'
    end
  end
  
  def userDestroy
    @store = Store.find(params[:store_id])
    @store.destroy
    @store.user.destroy
    
    redirect_to :back
  end
  
end