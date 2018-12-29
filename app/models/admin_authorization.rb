class AdminAuthorization <ActiveAdmin::AuthorizationAdapter

	def authorized?(action, subect = nil)
		user && user.admin?
	end
end
