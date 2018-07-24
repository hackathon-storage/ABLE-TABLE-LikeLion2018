class ListController < ApplicationController

  def findOneStation


  end
  
  def findStores
        #이 액션에서 검색을 수행한다
    @station = Station.all
    @station =  Station.where("station_name like ?", params[:search])
    #where을해서 statioDB에 폼태그에 작석한 station_nmae과 같은 레코드들를(객체배열)을반환 한다. (레코드는 모델의 하나의 객체)
    
    @temp = Store.where(:station_id => @station[0].id)

    # @selectedstores = Store.where("station_name like ?", @station[0].station_name)

  
  end
  

  
end
