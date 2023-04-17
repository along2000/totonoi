class Category < ActiveHash::Base 
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '高温' },
    { id: 3, name: '低温' },
    { id: 4, name: '多湿' },
    { id: 5, name: '未設定' },
    { id: 6, name: '未設定' },
    { id: 7, name: '未設定' },
    { id: 8, name: '未設定' },
    { id: 9, name: '未設定' },
    { id: 10, name: '未設定' }
  ]

  include ActiveHash::Associations
  has_many :saunas

end