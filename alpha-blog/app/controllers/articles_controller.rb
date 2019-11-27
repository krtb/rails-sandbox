 class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def create
        render plain: params[:article].inspect # <ActionController::Parameters {"title"=>"hello", "description"=>"there!\r\n"} permitted: false>
    end
 end