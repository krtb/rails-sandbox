 class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def create
        render plain: params[:article].inspect # <ActionController::Parameters {"title"=>"hello", "description"=>"there!\r\n"} permitted: false>
        @article = Article.new(article_params) #need to white list values of Article, with what's beeing passed in from params  hash
    end
 end