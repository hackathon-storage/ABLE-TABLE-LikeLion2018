Rails.application.routes.draw do

  devise_for :users
  root 'list#findOneStation'    # 첫 페이지
  get 'list/findOneStation'     # 첫 페이지 get
  
  # 지하철역 입력받는 뷰
  get 'list/findStores'         # 역 검색 결과 뷰 get
  
  # 매장 정보 최초 등록
  get 'list/storeApply'         # 매장 등록 get
  post 'list/storeCreate'       # 매장 등록 post
  
  # 매장 정보 수정
  get 'list/storeMypageEdit'    # 등록된 매장 수정 get
  post 'list/storeMypageUpdate' # 등록된 매장 수정 post
  
  # 해당 매장 정보 조회
  get 'list/findStoreInfo/:store_id' => 'list#findStoreInfo'
  
  # 매장의 좌석 수 조절
  get 'list/storeSeatInfo'
  get 'list/storeSeatCountPlus'   # 매장 자리 증가
  get 'list/storeSeatCountMinus'  # 매장 자리 감소
  
  # Admin 계정 관련
  get 'list/adminUser'                                    # admin 계정으로 로그인했을 때 모든 매장이 출력되는 뷰
  get 'list/userDestroy/:store_id' => 'list#userDestroy'  # admin이 user와 매장삭제 
  
  # 댓글 생성 및 삭제 
  post 'store_comments/create/:store_id' => 'store_comments#create'                 # 매장에 대한 댓글 생성
  get 'store_comments/delete/:store_id/:store_comment_id'=> 'store_comments#delete' # 매장에 대한 댓글 삭제

end
