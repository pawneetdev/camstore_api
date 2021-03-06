require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	test "name must be present" do
		category = Category.new
		category.category_type = "point and shoot"
		category.model = 2019

		assert_not category.valid?
	end

	test "category_type must be present" do
		category = Category.new
		category.name = "nikon"
		category.model = 2019

		assert_not category.valid?
	end

	test "model must be present" do
		category = Category.new
		category.name = "nikon"
		category.category_type = "point and shoot"

		assert_not category.valid?
	end

	test "fails when model format is not yyyy" do
		category = Category.new
		category.name = "nikon"
		category.category_type = "point and shoot"
		category.model = 1

		assert_not category.valid?
	end

	test "passes when model format is yyyy" do
		category = Category.new
		category.name = "nikon"
		category.category_type = "point and shoot"
		category.model = 2018

		assert category.valid?
	end

end
