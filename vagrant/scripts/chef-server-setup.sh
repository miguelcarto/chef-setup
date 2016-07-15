sudo rpm -Uvh /software/chef-server-core-12.7.0-1.el7.x86_64.rpm

echo -e "\e[33mCopy chef-server.rb\e[0m"
cp /vagrant/chef-server.rb /etc/opscode/chef-server.rb

echo -e "\e[33mchef-server-ctl reconfigure\e[0m"
sudo chef-server-ctl reconfigure

sudo rpm -Uvh /software/chef-manage-2.4.0-1.el7.x86_64.rpm

echo -e "\e[33mchef-server-ctl reconfigure\e[0m"
sudo chef-server-ctl reconfigure
echo -e "\e[33mchef-manage-ctl reconfigure\e[0m"
sudo chef-manage-ctl reconfigure --accept-license

echo "\e[33mCreating Chef Admin user\e[0m"
sudo chef-server-ctl user-create admin Admin User admin@user.pt administrator --filename admin.pem

echo "\e[33mCreating Chef Organization\e[0m"
sudo chef-server-ctl org-create userorg "User Org" --association_user admin
