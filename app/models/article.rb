class Article < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.latest_fanli
    Article.all
    #Article.where(topic: '2'). Article.where(topic: topic) Article.where(topic: '2').order(:updated_at).first(3)
  end

  def self.related_articles(topic='')
    Article.all
    # Article.where(topic: topic) Article.where(topic: topic).order(:updated_at).first(3)
  end
end
