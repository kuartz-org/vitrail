class HomeController < ApplicationController
  def index
    @users ||= [
      OpenStruct.new(id: 1, name: "Alice", email: "alice@example.com"),
      OpenStruct.new(id: 2, name: "Bob", email: "bob@example.com"),
      OpenStruct.new(id: 3, name: "Charlie", email: "charlie@example.com"),
    ]
  end
end
