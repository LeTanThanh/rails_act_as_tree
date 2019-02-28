class Category < ApplicationRecord
  extend ActsAsTree::TreeView
  extend ActsAsTree::TreeWalker

  acts_as_tree order: "name"

  def ancestor_categories
    return [] unless parent_id

    parent.ancestor_categories + [parent]
  end
end
