class SendMailWorker
  include Sidekiq::Worker

  sidekiq_options retry: 0

  def perform(args)
    sleep(30)
    User.find(args["id"]).update is_sent_email: true
  end
end
