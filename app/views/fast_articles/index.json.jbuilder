json.array!(@fast_articles) do |fast_article|
  json.extract! fast_article, :id, :name, :content, :short_description, :author_id
  json.url fast_article_url(fast_article, format: :json)
end
