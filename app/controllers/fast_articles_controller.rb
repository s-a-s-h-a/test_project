class FastArticlesController < ApplicationController
  before_action :set_fast_article, only: [:show, :edit, :update, :destroy]

  # GET /fast_articles
  # GET /fast_articles.json
  def index
    @fast_articles = FastArticle.all
  end

  # GET /fast_articles/1
  # GET /fast_articles/1.json
  def show
  end

  # GET /fast_articles/new
  def new
    @fast_article = FastArticle.new
  end

  # GET /fast_articles/1/edit
  def edit
  end

  # POST /fast_articles
  # POST /fast_articles.json
  def create
    @fast_article = FastArticle.new(fast_article_params)

    respond_to do |format|
      if @fast_article.save
        format.html { redirect_to @fast_article, notice: 'Fast article was successfully created.' }
        format.json { render :show, status: :created, location: @fast_article }
      else
        format.html { render :new }
        format.json { render json: @fast_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fast_articles/1
  # PATCH/PUT /fast_articles/1.json
  def update
    respond_to do |format|
      if @fast_article.update(fast_article_params)
        format.html { redirect_to @fast_article, notice: 'Fast article was successfully updated.' }
        format.json { render :show, status: :ok, location: @fast_article }
      else
        format.html { render :edit }
        format.json { render json: @fast_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fast_articles/1
  # DELETE /fast_articles/1.json
  def destroy
    @fast_article.destroy
    respond_to do |format|
      format.html { redirect_to fast_articles_url, notice: 'Fast article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fast_article
      @fast_article = FastArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fast_article_params
      params.require(:fast_article).permit(:name, :content, :short_description, :author_id)
    end
end
