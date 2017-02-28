package	'ntp' do
 action :install
end

package 'git'
 
package	'tree' do
 action	:install
end

file '/etc/motd' do
 content 'This setup file belongs to Nick R.' 
 owner 'root'
 group 'root'
end

