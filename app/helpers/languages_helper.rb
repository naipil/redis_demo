module LanguagesHelper
	def fetch_languages
    languages =  $redis.get("languages")
    if languages.nil?
      languages = Language.all.to_json
      $redis.set("languages", languages)
      # Expire the cache, every 3 hours
      $redis.expire("languages",3.hour.to_i)
    end
    @languages = JSON.load languages
  end
end
