rand(5).times do
  category = Category.create(name: FFaker::Product.model, image: FFaker::Avatar.image)

  rand(5).times do
    child_category_level_1 = category.children.create(name: FFaker::Product.model, image: FFaker::Avatar.image)

    rand(5).times do
      child_category_level_1.children.create(name: FFaker::Product.model, image: FFaker::Avatar.image)
    end
  end
end
