# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

section_list = [
["Breakfast", "Breakfast dishes"],
[ "Lunch", "Lunch dishes" ],
[ "Dinner", "Dinner dishes" ],
[ "Drinks", "Drinks" ]
]

food_list = [
[ "Pho Bo", "Vietnamese famous noodle", "Breakfast", 35000, "http://i133.photobucket.com/albums/q46/thowase/Pho-SpecialCombojpg_thumb.jpg"],
[ "Bun Bo", "Vietnamese famous noodle", "Breakfast", 35000, "http://foodclick.vn/images/photos/2015/09/320/bun-bo-cay-1442892702.jpg"],
[ "Hu Tieu Nam Vang", "Vietnamese famous noodle", "Breakfast", 30000, "http://cdn05.diadiemanuong.com/photo/320x/00069/hu_tieu_nam_vang_luoi_heo__nguyen_thi_nho_d7ec7133635418931005833503.jpg"],
[ "Com Tam Suon", "Vietnamese broken rice", "Breakfast", 15000, "http://www.chanphuocliem.com/Trang_GiaChanh/SuonNuongXaOt2.jpg"],
[ "Banh Canh Cua", "Vietnamese famous noodle", "Breakfast", 25000, "http://cdn05.diadiemanuong.com/photo/320x/00011/banh_canh_cua_14__tran_binh_trong_8dbc4c0e635415411943572936.jpg"],

[ "Com Ga", "Lunch meal", "Lunch", 35000, "http://cdn05.diadiemanuong.com/photo/320x/00079/quan_142__com_ga_xoi_mo_ad3f78f3635418990730951816.jpg"],
[ "Cao Lau", "Lunch meal", "Lunch", 15000, "http://2.bp.blogspot.com/-EifPE6bGm3w/VZYGSFniNhI/AAAAAAAAAlo/k9rTmxCfxaw/s320/hoc-nau-an-cao-lau-hoi-an.jpg"],
[ "Hu Tieu Xao", "Lunch meal", "Lunch", 25000, "http://4.bp.blogspot.com/-vozP_ru8kYA/TospO_DJOLI/AAAAAAAAOtA/yTPcgviVua0/s320/IMG_2671.JPG"],
[ "My Quang", "Lunch meal", "Lunch", 65000, "https://lh4.googleusercontent.com/-COFrAz6UK74/UbNI0qhGbeI/AAAAAAAABK0/_iZ93XiMsKk/s320/mi_quang.jpg"],
[ "Mi Xao Gion", "Lunch meal", "Lunch", 10000, "http://www.amthucquetoi.com/utils/timthumb.php?src=http://www.amthucquetoi.com/uploads/pages/univinet.net_image139.jpg&t=0&a=0&w=320&h=240&zc=1"],

[ "Bo Bit Tet", "Dinner meal", "Dinner", 60000, "http://cdn05.diadiemanuong.com/photo/320x/00039/bo_bit_tet_79__dien_bien_phu_a97cd4cc635416395736448749.jpg"],
[ "Pizza", "Italian meal", "Dinner", 115000, "http://www.michaelspizzacafe.com/images/pic-lunch-pizza.jpg"],
[ "Sushi", "Japanese meal", "Dinner", 25000, "https://sites.google.com/site/popularrestaurantsintokyo/_/rsrc/1363653747987/sushi/sushi-bun/sushi.jpg?height=240&width=320"],
[ "Beijing Duck", "Chinese meal", "Dinner", 365000, "http://cheftoandat.com/wp-content/uploads/2015/03/290Peking-Duck11.jpg"],
[ "Ramen", "Japanese soup", "Dinner", 25000, "http://media.culturemap.com/crop/6e/59/320x240/Monta-Ramen_160648.jpg"],

[ "Coffee", "Vietnamese Style", "Drinks", 18000, "http://verocoffee.vn/files/news/thumb/img_1595.jpg"],
[ "Soda", "Sugar Free", "Drinks", 35000, "http://img.21food.com/20110609/product/1306463060557.jpg"],
[ "Orange Juice", "Fresh", "Drinks", 25000, "http://vfa.gov.vn/storage/news/320/thuc-pham-giup-giam-cang-thang.jpg"],
[ "Watermelon Juice", "Fresh", "Drinks", 25000, "http://1.bp.blogspot.com/-PunQdPBh-BE/VbFMO4C16DI/AAAAAAAACzE/LQ9aO-L2Usw/s320/Nuoc%2Bep%2Bdua%2Bhau%2Bmat%2Bme.jpg"],
[ "Mojito", "Sugar Free", "Drinks", 45000, "http://4.bp.blogspot.com/-qrFLUhmByME/VZozJXIeJwI/AAAAAAAAAbc/iAwlS5XScCE/s320/cocktail-mojito.jpg"],
]

Restaurant.destroy_all
Restaurant.create(address: "16 Nguyen Hue Phuong Ben Nghe QUan 1 TPHCM", phoneNumber: "(+84) 93 674 1601")

section_list.each do |name, desc| 
	unless Section.exists? :name => name
		Section.create(name: name)
	end
end

FoodItem.destroy_all
food_list.each do |name,desc,section,price,url|
	section1 = Section.where(name: section).take
	FoodItem.create(name: name, description: desc, price: price, section: section1, imageUrl: url)
end