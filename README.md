# 2018 LikeLion Central Hackathon (2018/08/24 ~ 2018/08/25)
[ABLE_TABLE 아이디어 제안서](/docs/Ideathon_ABLE_TABLE.pdf)
![ABLE_TABLE](/docs/ABLE TABLE.png)

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
사용자 관리 | GET | list/adminUser
사용자(매장) 삭제 | GET | list/userDestroy/{store_id}
댓글 생성 | POST | store_comments/create/{store_id}
댓글 삭제 | GET | store_comments/delete/{store_id}/{store_comment_id}

---

### 서지용 정리
Controller & Action | 요청 방식
-----------|-----------
list_controller | /
findOneStation | 지하철역을 입력받는 index뷰
findStores | 입력받은 지하철 역 근처의 매장 위치와 목록들을 보여주는  액션
findStoreInfo | 등록한 매장정보를 USER들이 볼 수 있도록 서비스를 제공 해주는 액션
storeApply | 매장의 업주가 자신의 매장을 등록하는 액션
storeCreate | 입력한 매장 정보를 DB에 저장하는 액션
storeMypagedit | 매장업주가 입력했던 매장 정보들을 수정하는 액션
storeMypageUpdate | 수정정보를 입력하고 다시 DB정보를 수정 해주는 액션
storeSeatCountPlus | 매장의 자릿수를 1증가 시켜주는 액션 
storeSeatCountMinus | 매장의 자릿수를 1감소 시켜주는 액션
storeSeatInfo | 매장의 자릿수 정보를 보여줄 수 있도록 하는 액션
adminUser | Admin계정을 로그인 시 매장과 USER를 삭제 할 수 잇도록 하는 액션 
userDestroy | Admin계정으로 매장과 User을 삭제하는 액션 
store_comments_controller | /
create | 특정 매장의댓글 생성하는 액션 
delete |특정 매장의 댓글 삭제하는 액션

DB | 설명
---|------
Users |사용자들의 계정 DB
Stations | 지하철역 정보 DB
Stores | 매장의 정보 DB
StoreComments | 특정 매장의 댓글 DB

---

### Author
* 서지용 - BE
* 이서영 - FE
* [MinGOODdev](https://github.com/MinGOODdev) - Assist

### Development Environment

     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 