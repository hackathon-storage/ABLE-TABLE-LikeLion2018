Rails.application.routes.draw do
  
  get 'store_comments/create'

  get 'store_comments/delete'

  devise_for :users
  root 'list#findOneStation'    # 첫 페이지
  get 'list/findOneStation'     # 첫 페이지 get
  
  #지하철역 입력받는 뷰
  get 'list/findStores'         # 역 검색 결과 뷰 get
  
  #매장 정보 최초 등록
  get 'list/storeApply'         # 매장 등록 get
  post 'list/storeCreate'       # 매장 등록 post
  
  #매장 정보 수정
  get 'list/storeMypageEdit'    # 등록된 매장 수정 get
  post 'list/storeMypageUpdate' # 등록된 매장 수정 post
  
  #해당 매장 정보 출력
  get 'list/findStoreInfo/:store_id' => 'list#findStoreInfo'      # 해당 매장 정보 조회 get
  get 'list/storeSeatInfo' #해당 매장 자리 수 조회 뷰
  get "/list/findStoreInfo/:store_id" => "list#findStoreInfo" #댓글 삭제시 매장정보 조회 하는 뷰로 이동하는 액션 
  
  #매장의 자릿수 조절
  get 'list/storeSeatCountPlus'# 매장 자리 증가
  get 'list/storeSeatCountMinus' # 매장 자리 감소
  
  #Admin계정 관련
  get 'list/userDestroy/:store_id' => 'list#userDestroy' # admin이 user와 매장삭제 
  get 'list/adminUser'# admin계정으로 로그인했을때 매장전부가 출려되는 뷰
  
  #댓글 생성 및 삭제 
  post 'store_comments/create/:store_id' => 'store_comments#create' # 매장에 대한 댓글 생성
  get 'store_comments/delete/:store_id/:store_comment_id'=> 'store_comments#delete' # 매장에 대한 댓글 삭제
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
