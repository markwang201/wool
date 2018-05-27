class Article < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :topic

  def self.public_articles(ids=[])
    public_articles = Article.where(status: '1').order(updated_at: :desc)
    ids.present? ? public_articles.where.not(id: ids) : public_articles
  end

  def self.latest_fanli
    public_articles.where(topic: '2').first(3)
  end

  def self.related_articles(topic='', ids=[])
    public_articles(ids).where(topic: topic).first(3)
  end

  def self.topic_articles(topic='')
    public_articles.where(topic: topic).first(3)
  end

  # topic 1
  def self.classic_articles
    public_articles.where(topic: 1).first(3)
  end
end
