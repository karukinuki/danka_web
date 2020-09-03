# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |n|
  Danka.create(name: "山田太郎#{n+1}",subname: "ヤマダタロウ#{n+1}",postal: 1110000+n,
    addless: "東京都港区芝公園1丁目1−1",tel: 1111111111,email: "#{n+1}danka@ooo.com",mark1: "世話人",
    mark2: "H２８新規檀家、田中二郎様の紹介により入檀。")
    3.times do |a|
      now = Time.current
      day = now.ago(a+10.years)
      bir = day-92
      Past.create(danka_id: n+1,name: "山田#{a+1}子",subname: "ヤマダ#{a+1}コ",penname: "浄誉#{a+1}大姉",subpenname: "ジョウヨ#{a+1}ダイシ",
        deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",mark1: "",
        mark2: "晩年は毎日お参りをしていた。")
      Past.create(danka_id: n+1,name: "山田#{a+1}男",subname: "ヤマダ#{a+1}オ",penname: "浄誉#{a+1}居士",subpenname: "ジョウヨ#{a+1}コジ",
        deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",mark1: "",
        mark2: "消防士、団長")
    end
  Danka.create(name: "田中二郎#{n+1}",subname: "タナカジロウ#{n+1}",postal: 2220000+n,
    addless: "東京都世田谷区下北沢1丁目1−1",tel: 2222222222,email: "#{n+1}tanaka@ooo.com",mark1: "",
    mark2: "田中家本家。分家には田中喜朗、田中吉郎、田中道之。写経会の先生をしているとともに自宅で教室もしている。")
    3.times do |a|
      now = Time.current
      day = now.ago(a+10.years)
      bir = day-92
      Past.create(danka_id: n+1,name: "田中#{a+1}子",subname: "タナカ#{a+1}コ",penname: "浄誉#{a+1}大姉",subpenname: "ジョウヨ#{a+1}ダイシ",
        deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",mark1: "",
        mark2: "書道が趣味。")
      Past.create(danka_id: n+1,name: "田中#{a+1}男",subname: "タナカ#{a+1}オ",penname: "浄誉#{a+1}居士",subpenname: "ジョウヨ#{a+1}コジ",
        deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",mark1: "",
        mark2: "")
    end
  Danka.create(name: "加藤三郎#{n+1}",subname: "カトウサブロウ#{n+1}",postal: 3330000+n,
    addless: "東京都板橋区板橋1丁目1−1",tel: 3333333333,email: "#{n+1}kato@ooo.com",mark1: "寄付者",
    mark2: "H22年本堂の灯籠を寄付、そのほか除雪車も寄付。")
    3.times do |a|
      now = Time.current
      day = now.ago(a+10.years)
      bir = day-92
      Past.create(danka_id: n+1,name: "加藤#{a+1}子",subname: "カトウ#{a+1}コ",penname: "浄誉#{a+1}大姉",subpenname: "ジョウヨ#{a+1}ダイシ",
        deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",mark1: "",
        mark2: "篤信。")
      Past.create(danka_id: n+1,name: "加藤#{a+1}男",subname: "カトウ#{a+1}オ",penname: "浄誉#{a+1}居士",subpenname: "ジョウヨ#{a+1}コジ",
        deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",mark1: "",
        mark2: "総代長のときに本堂建て替え")
    end
  end
