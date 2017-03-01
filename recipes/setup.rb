package	'ntp' do
 action :install
end

package 'git'
 
package	'tree' do
 action	:install
end

file '/etc/motd' do
 content 'This setup file belongs to Nick R.
 HOSTNAME: localhost.localdomain
 IPADDRESS: 10.0.2.15
 CPU: ~2800 MHz'
owner 'root'
 group 'root'
end

