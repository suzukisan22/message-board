class Message < ActiveRecord::Base
    #名前は必須入力かつ20文字以内
    validates :name , length: { maximum: 20 } , presence: true
    #　内容は必須入力かつ2文字以上30文字以下
    validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
    
    validates :age , numericality: true # 数値か小数点のみ有効
    validates :age , numericality: { only_integer: true } # 数値のみ有効
    validates :age , numericality: { :greater_than => 0 }
end
