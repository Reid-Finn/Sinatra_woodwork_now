require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
use SessionsController
use UsersController
use Rack::MethodOverride
use PlansController
run ApplicationController
