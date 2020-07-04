# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
  Danka.create(name: "#{n+1}檀家さん",subname: "#{n+1}ダンカサン",postal: 123456+n,addless: "東京都港区芝公園４丁目７−３５",tel: n+100000000,
    email: "#{n+1}danka@ooo.com",
    mark1: "ほげほげほげほげ",mark2: "ほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげ")


  10.times do |a|
    now = Time.current
    day = now.ago(a.years)
    bir = day-100
    Past.create(danka_id: n+1,name: "故人#{a+1}さん",subname: "コジン#{a+1}サン",penname: "浄誉#{a+1}信士居士",
      subpenname: "ジョウヨ#{a+1}コジ",deathday: day,deathage: 100+a,birthday: bir,relation: "親",funeral: "#{n}檀家",
      mark1: "ほげほげほげほげ",mark2: "ほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげ")
  end
end
