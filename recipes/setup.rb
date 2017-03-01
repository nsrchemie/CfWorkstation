package	'ntp' do
 action :install
end

package 'git'
 
package	'tree' do
 action	:install
end


file '/etc/motd' do
 content "This server file belongs to nsrchemie.
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}
"
 owner 'root'
 group 'root'
end

