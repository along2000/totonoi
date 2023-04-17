class Category < ActiveHash::Base 
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ドライサウナ(乾式)' },
    { id: 3, name: 'フィンランドサウナ(ロウリュ)' },
    { id: 4, name: 'スチームサウナ' },
    { id: 5, name: 'ケロサウナ' },
    { id: 6, name: '薪サウナ' },
    { id: 7, name: '塩サウナ' },
    { id: 8, name: 'テントサウナ' },
    { id: 9, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :saunas

end