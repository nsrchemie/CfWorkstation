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

