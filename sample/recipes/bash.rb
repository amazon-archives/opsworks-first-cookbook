bash "change system greeting" do
  user "root"
  code <<-EOH
  echo "Hello OpsWorks World" > /etc/motd
  EOH
end
