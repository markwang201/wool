class Order < ApplicationRecord
  validates :phone_num, presence: { message: "手机号码不能为空" }
  # validates :investor_username
  validates :time_horizon, presence: { message: "投资标期不能为空" }
  validates :amount, presence: { message: "投资金额不能为空" }
  # /^[1][3,4,5,7,8][0-9]{9}$/ /^[1][3,4,5,7,8][0-9]{9}$/
  validates :phone_num, format: { with: /\0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$\Z/, message: "请填写正确的手机号" }
end
