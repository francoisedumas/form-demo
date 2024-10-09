# frozen_string_literal: true

json.extract! book, :id, :name, :author, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
