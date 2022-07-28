class User < ApplicationRecord
  after_create do
    SendMailWorker.perform_async(id: id)
  end
end
