# make sure we're running inside Merb
if defined?(Merb::Plugins)
  require 'active_record'
  require "merb_active_record/initialize"
  require "merb_active_record/session"
  Merb::Controller.class_eval do
    include ::Merb::ActiveRecordSessionMixin
    puts "Using ActiveRecord database sessions"
  end
  Merb::Plugins.add_rakefiles "merb_active_record/merbtasks"
end