class User < ApplicationRecord
  searchkick word_start: [:first_name, :last_name, :email]

  # CONTROL WHAT ELASTIC SEARCH IS INDEXING
  def search_data
    {
      first_name: first_name, 
      last_name: last_name,
      email: email
    }
  end
end
