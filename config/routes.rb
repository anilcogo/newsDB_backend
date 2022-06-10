Rails.application.routes.draw do
  
  root "pages#articlelist"            #fetch all articles

  post '/createUser', to: 'pages#createUser'   #create new users

  post '/createArticle', to: 'pages#createArticle'   #create new articles
  
  get '/user/:id', to: 'pages#user'        #view user by id

  get '/article/:id', to: 'pages#article'        #view article by id

  get '/userArticle/:id', to: 'pages#userArticle'        #view all articles by a user
  
  delete '/deleteUser/:id', to: 'pages#deleteUser'     #delete User

  delete '/deleteArticle/:id', to: 'pages#deleteArticle'  #delete Article
  
  put '/updateArticle/:id', to: 'pages#updateArticle'

  get '/showing', to: 'pages#showing'

  get '/showingid', to: 'pages#showingid'


 end
 