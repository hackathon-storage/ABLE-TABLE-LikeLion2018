# 2018 LikeLion Central Hackathon

## API Manual
설명 | 요청 방식 | 요쳥 url
----------|----------|-------
역 검색 & 메인 | GET | list/findOneStation
역 검색 결과 | GET | list/findStores?search={station_name}
/ | / | /
매장 등록 | GET | list/storeApply
매장 등록 | POST | list/storeCreate
/ | / | /
매장 정보 수정 | GET | list/storeMyPageEdit
매장 정보 수정 | POST | list/storeMyPageUpdate
/ | / | /
매장 정보 조회 | GET | list/findStoreInfo/{store_id}
매장 후기 등록 | POST | store_comments/create/{store_id}
매장 후기 삭제 | GET | store_comments/delete/{store_id}/{store_comment_id}
/ | / | /
매장 좌석 수 조절 | GET | list/storeSeatInfo
매장 자리 증가 | GET | list/storeSeatCountPlus
매장 자리 감소 | GET | list/storeSeatCountMinus
/ | / | /



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