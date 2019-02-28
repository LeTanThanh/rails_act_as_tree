rand(10).times do
  category = Category.create(name: FFaker::Product.model, image: FFaker::Avatar.image)

  rand(10).times do
    child_category_level_1 = category.children.create(name: FFaker::Product.model, image: FFaker::Avatar.image)

    rand(10).times do
      child_category_level_2 = child_category_level_1.children.create(name: FFaker::Product.model, image: FFaker::Avatar.image)

      rand(10).times do
        child_category_level_3 = child_category_level_2.children.create(name: FFaker::Product.model, image: FFaker::Avatar.image)
      end
    end
  end
end
