class User < ActiveRecord::Base
  has_many :picks

  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def strip_metadata(bowl_params)
    bowl_names = Bowl.all.map {|bowl| bowl.name}
    bowl_params.map do |param|
      {param[0] => param[1]} if bowl_names.include?(param[0])
    end
  end

  def save_picks(bowl_params)
    pick_array = strip_metadata(bowl_params).compact
    pick_array.each do |new_pick|
      bowl = Bowl.find_by(:name => new_pick.keys)
      pick = Pick.new
      pick.bowl_id = bowl.id
      pick.user_id = self.id
      pick.winner = new_pick.values.first
      pick.save
    end
  end

  def self.update_win_count
    self.all.each do |user|
      
    end
  end

end
