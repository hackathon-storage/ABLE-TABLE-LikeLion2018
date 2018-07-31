# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Station.create(station_name: '역곡역',station_position_x: 37.485156,station_position_y: 126.811622)
Station.create(station_name: '온수역', station_position_x: 37.4921505, station_position_y: 126.8236345)
Station.create(station_name: '부천역', station_position_x: 37.484083, station_position_y:  126.782776)
Station.create(station_name: '구로역', station_position_x: 37.503195 , station_position_y: 126.882038)

Store.create(user_id: '1',station_id: '1', store_name: '리얼프라이',store_address: '경기 부천시 괴안동 115-6')
Store.create(user_id: '2',station_id: '1',store_name: '미쳐버린 파닭',store_address: '경기 부천시 역곡동 35-14')
Store.create(user_id: '3',station_id: '1',store_name: '호치킨',store_address: '경기 부천시 괴안동 155-6')
Store.create(user_id: '4',station_id: '1',store_name: '맛닭꼬',store_address: '	경기 부천시 역곡동 78-11')

Store.create(user_id: '5',station_id: '2',store_name: '터프네 이모',store_address: '서울 구로구 온수동 55-4')
Store.create(user_id: '6',station_id: '2',store_name: '호프할래',store_address: '서울 구로구 온수동 51-4')
Store.create(user_id: '7',station_id: '2',store_name: '돈돈',store_address: '서울 구로구 온수동 55-4')
Store.create(user_id: '8',station_id: '2',store_name: '바베큐 보스 치킨',store_address: '서울 구로구 온수동 52-1')
Store.create(user_id: '9',station_id: '2',store_name: '학사마을',store_address: '서울 구로구 온수동 55-4')
Store.create(user_id: '10',station_id: '2',store_name: '숯불닭과왕파전',store_address: '서울 구로구 온수동 53-4')
Store.create(user_id: '11',station_id: '2',store_name: '봉구비어',store_address: '서울 구로구 온수동 52')

Store.create(user_id: '12',station_id: '3',store_name: '유리네밥상',store_address: '경기 부천시 심곡동 377-12')

Store.create(user_id: '13',station_id: '4',store_name: '호식이두마리치킨',store_address: '서울 구로구 구로4동 747-36')
