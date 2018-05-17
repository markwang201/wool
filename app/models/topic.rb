class Topic
  TOPICS = [['1', '精品文章'], ['2', 'p2p返利'], ['3', '平台测评'], ['4', '0撸羊毛']]

  def self.find(id)
    Topic::TOPICS.to_h[id.to_s] || '文章'
  end
end
