# 2018 LikeLion Central Hackathon

## API Manual
요청 방식 | 요청 url | 설명
----------|----------|-------
첫 페이지 | get | list/findOneStation



### Author
* 서지용(backend)
*  -Controller
*   1. list 
*         -findOneStation : 지하철역을 입력받는 index뷰
*         -findStores : 입력받은 지하철 역 근처의 매장 위치와 목록들을 보여주는  액션
*         -findStoreInfo : 등록한 매장정보를 USER들이 볼 수 있도록 서비스를 제공 해주는 액션
*         -storeApply : 매장의 업주가 자신의 매장을 등록하는 액션
*         -storeCreate : 입력한 매장 정보를 DB에 저장하는 액션
*         -storeMypagedit : 매장업주가 입력했던 매장 정보들을 수정하는 액션
*         -storeMypageUpdate : 수정정보를 입력하고 다시 DB정보를 수정 해주는 액션
*         -storeSeatCountPlus : 매장의 자릿수를 1증가 시켜주는 액션 
*         -storeSeatCountMinus : 매장의 자릿수를 1감소 시켜주는 액션
*         -storeSeatInfo : 매장의 자릿수 정보를 보여줄 수 있도록 하는 액션
*         -adminUser : Admin계정을 로그인 시 매장과 USER를 삭제 할 수 잇도록 하는 액션 
*         -userDestroy : Admin계정으로 매장과 User을 삭제하는 액션 
*   
*   2. store_comments
*                   -create : 특정 매장의댓글 생성하는 액션 
*                   -delete : 특정 매장의 댓글 삭제하는 액션
*   
*   -DB
*     1. Users : 사용자들의 계정 DB
*     2. Staions : 지하철역 정보 DB
*     3. Stores : 매장의 정보 DB
*     4. StoreComments : 특정 매장의 댓글 DB
* 
* 
* 
* 이서영
* 조민국

### Development Environment

     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 