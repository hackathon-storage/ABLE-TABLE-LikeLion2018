# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Station.create(station_name: '역곡역',station_position_x: '12.231',station_position_y: '93.21')
Station.create(station_name: '온수역', station_position_x: '2663.231', station_position_y: '8334.21')
Station.create(station_name: '부천역', station_position_x: '3663.231', station_position_y: '7334.21')
Station.create(station_name: '구로역', station_position_x: '4663.231', station_position_y: '6334.21')
Station.create(station_name: '강남역', station_position_x: '5663.231', station_position_y: '5334.21')
Station.create(station_name: '철산역', station_position_x: '6663.231', station_position_y: '4334.21')
Station.create(station_name: '광명사거리역', station_position_x: '6663.231', station_position_y: '3334.21')
Station.create(station_name: '천왕역', station_position_x: '7663.231', station_position_y: '2334.21')
Station.create(station_name: '가산디지털단지역', station_position_x: '8663.231', station_position_y: '1334.21')



Store.create(user_id: '1',station_id: '1', store_name: '오미치킨')
Store.create(user_id: '2',station_id: '1',store_name: '미쳐버린 파닭')
Store.create(user_id: '3',station_id: '1',store_name: '호치킨')
Store.create(user_id: '4',station_id: '1',store_name: '맛닭꼬')

Store.create(user_id: '5',station_id: '2',store_name: '터프네 이모')
Store.create(user_id: '6',station_id: '2',store_name: '호프할래')
Store.create(user_id: '7',station_id: '2',store_name: '돈돈')
Store.create(user_id: '8',station_id: '2',store_name: '바베큐 보스 치킨')
Store.create(user_id: '9',station_id: '2',store_name: '학사마을')
Store.create(user_id: '10',station_id: '2',store_name: '왕파전숯불닭')
Store.create(user_id: '11',station_id: '2',store_name: '봉구비어')

Store.create(user_id: '12',station_id: '3',store_name: '티바 두마리치킨')
Store.create(user_id: '13',station_id: '3',store_name: '호식이 2마리 치킨')
Store.create(user_id: '14',station_id: '3',store_name: '남국가')
Store.create(user_id: '15',station_id: '4',store_name: '구로최고치킨집')
Store.create(user_id: '16',station_id: '5',store_name: '레드락치킨')

# Store.create(user_id: '3',: '역곡역',store_name: '호치킨',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')
            
# Store.create(user_id: '4',: '',store_name: '썬더치킨',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')            
            
# Store.create(user_id: '5',: '',store_name: '터프네 이모',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')    
            
# Store.create(user_id: '6',: '',store_name: '호프할래',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')
            
# Store.create(user_id: '7',: '',store_name: '학사마을',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')     
            
# Store.create(user_id: '8',: '',store_name: '돈돈',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')       
            
# Store.create(user_id: '9',: '',store_name: '봉구비어',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')

# Store.create(user_id: '10',: '부평역',store_name: '레드락 치킨',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')
      
# Store.create(user_id: '10',: '부평역',store_name: '명랑 핫도그',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')
    
# Store.create(user_id: '11',: '부평역',store_name: '애슐리W',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')            

# Store.create(user_id: '11',: '부천역',store_name: '유리네분식',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',storeimg: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')
            
# Store.create(user_id: '12',: '부천역',store_name: '티바 두마리 치킨',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')
            
# Store.create(user_id: '13',: '금정역',store_name: '남궁가',store_menu_img1: '',store_menu_img2: ''
#             ,store_menu_img3: '',store_img: '',store_information: '',store_contact: '',store_group: ''
#             ,store_seat_count: '',store_seat_total: '40',store_address: '')            