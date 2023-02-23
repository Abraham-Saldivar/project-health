class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :f_name, :l_name, :password_digest
  has_many :m_posts
end
