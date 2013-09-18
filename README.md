Option X
=========

Roles and Apps
--------------

In rails console:

    user = User.create(:email => 'cehmke@apartments.com')
    app = App.create(:description => 'Online Reporting')
    Role.create(:user => user, :app => app, :description => 'admin')

    user.roles.first.description
    => admin

    user.roles.first.app
    => #<App id: 2, description: "Online Reporting", created_at: "2013-09-18 20:12:31", updated_at: "2013-09-18 20:12:31">

    user.apps.first.description
    => "Online Reporting"

    user.apps.first.role
    => #<Role id: 4, description: "admin", created_at: "2013-09-18 20:12:31", updated_at: "2013-09-18 20:12:31">

