require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /Sign_In route opens login page" do
		get '/Sign_In'
		assert_response :success
	end

	test "that /Sign_Out route opens the Sign_Out page" do
		get "/Sign_Out"
		assert_response :redirect
		assert_redirected_to "/"
	end

	test "that /register route opens registration page" do
		get '/register'
		assert_response :success
	end

	test "that a profile page works" do
		get '/michaelnelson'
		assert_response :success
	end

end
