require 'test_helper'

class FastArticlesControllerTest < ActionController::TestCase
  setup do
    @fast_article = fast_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fast_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fast_article" do
    assert_difference('FastArticle.count') do
      post :create, fast_article: { author_id: @fast_article.author_id, content: @fast_article.content, name: @fast_article.name, short_description: @fast_article.short_description }
    end

    assert_redirected_to fast_article_path(assigns(:fast_article))
  end

  test "should show fast_article" do
    get :show, id: @fast_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fast_article
    assert_response :success
  end

  test "should update fast_article" do
    patch :update, id: @fast_article, fast_article: { author_id: @fast_article.author_id, content: @fast_article.content, name: @fast_article.name, short_description: @fast_article.short_description }
    assert_redirected_to fast_article_path(assigns(:fast_article))
  end

  test "should destroy fast_article" do
    assert_difference('FastArticle.count', -1) do
      delete :destroy, id: @fast_article
    end

    assert_redirected_to fast_articles_path
  end
end
