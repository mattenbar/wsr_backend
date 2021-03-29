class AdSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :company, :link, :image
end
