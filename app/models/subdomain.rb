class Subdomain < ActiveRecord::Base
  has_many :pages, dependent: :destroy
end
