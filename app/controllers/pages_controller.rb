class PagesController < ApplicationController
  
    def articlelist
        render json: Article.all
    end

    def createUser
        data = User.new(params.permit(:name, :mobile, :email, :password))
        data.save()
        render json: User.all
        # render json: data
    end

    def createArticle
        data = Article.new(params.permit(:author, :title, :description, :url, :urlToImage, :publishedAt, :content, :user_id ))
        data.save()
        render json: Article.all
        # render json: data
    end
  
    skip_before_action :verify_authenticity_token
  
    def user
        render json: User.find(params[:id])
    end

    def article
        render json: Article.find(params[:id])
    end

    def userArticle
        render json: Article.where(user_id: params[:id])
    end

    def deleteUser
        user = User.find(params[:id])
        user.destroy()
    end
  
    def deleteArticle
        article = Article.find(params[:id])
        article.destroy()
        render json: Article.all
    end

    def updateArticle
        article = Article.find(params[:id])
        if article
            Article.update(:title, :content)
            render json: {message: 'article updated'}, status:200
        else
            render json: {message: 'Article ID Wrong'}, status:400
        end
    end


    def showing
        render json: Article.where("Title like ?", "%#{params[:s]}%")
    end

    def showingid
        render json: Article.where("id like ?", "%#{params[:id]}%")
    end
  
 end
 