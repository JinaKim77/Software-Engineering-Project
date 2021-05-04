Rails.application.routes.draw do
  resources :books
  root :to => redirect('/books')
  get '/books/same_author_books/:id', to: 'books#same_author_books', as: :same_author_books
end
