json.extract! book, :id, :title, :author, :discription, :created_at, :updated_at
json.url book_url(book, format: :json)
