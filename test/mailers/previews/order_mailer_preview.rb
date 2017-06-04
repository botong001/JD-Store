# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  belongs_to :user
    belongs_to :product
    validates :body, presence: true
end
