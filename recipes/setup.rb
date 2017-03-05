package	'ntp' do
 action :install
end

package 'git'
 
package	'tree' do
 action	:install
end

template '/etc/motd' do
 source 'motd.erb'
 action :create
 variables(
 :name => 'nsrchemie'
 )
end

user 'user1' do
  comment 'user1'
  uid '123'
  home '/home/user1'
  shell '/bin/bash'
end

group 'admins' do
  members ['user1']
end
