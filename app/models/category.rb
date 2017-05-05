class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Paranoia

  include CommonMeta

  after_save :clear_cache

  def clear_cache
    $redis.del "categories"
  end
end