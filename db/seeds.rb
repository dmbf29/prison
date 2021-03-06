# Jail.destroy_all if Rails.env.development?

# Jail.create!(
#   name: "Alcatraz",
#   banner_url: "https://i.ytimg.com/vi/vK6HsOreF7c/maxresdefault.jpg"
# )

# Jail.create!(
#   name: "San Quentin State Prison",
#   banner_url: "https://d3blhdga6ro23n.cloudfront.net/uploads/prison_photo/image/5730/web_CDCR_-_San_Quentin_State_Prison__SQ_.jpg"
# )
Killer.create!(
  name: "Denis Rader",
  image_url: "https://pics.me.me/the-mask-of-serial-killer-dennis-rader-aka-the-btk-23631402.png",
  jail: Jail.first
)


categories = %w(axe_murderer canibalist red_neck clown strangler gunman bomber)

categories.each do |category|
  Category.where(name: category).first_or_create
end
