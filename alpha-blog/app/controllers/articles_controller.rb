 class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
        # first find Article to edit, with :id
         @article = Article.find(params[:id])
    end

    def create
        # render plain: params[:article].inspect # <ActionController::Parameters {"title"=>"hello", "description"=>"there!\r\n"} permitted: false>
        @article = Article.new(article_params) #need to white list values of Article, with what's beeing passed in from params  hash
        if @article.save
            flash[:notice] = "Article was successfully created" #show message to user
            redirect_to article_path(@article) # article GET /articles/:id article#show
        else
            render :new #render new view, to give user change to try again
        end
    end

    def update
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully updated"
            redirect_to article_path(@article) # redirect to Article show page, article GET /articles/:id article#show
        else # if did not pass validations
            render 'edit' #render EDIT template again, 2nd way to do this is with ('') instead of (:)
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def delete

    end

    private

    def article_params
        params.require(:article).permit(:title, :description)
    end


 end