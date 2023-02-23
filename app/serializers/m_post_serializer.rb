class MPostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :nickname, :dose, :frequency, :user_id
end