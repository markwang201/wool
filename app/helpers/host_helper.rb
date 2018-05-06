module HostHelper

  def self.qq_host?
    RequestStore.store[:host] == 'qq.jianfanli.top'
  end

  def qq_host?
    RequestStore.store[:host] == 'a3.active.local' #'qq.jianfanli.top'
  end

end
