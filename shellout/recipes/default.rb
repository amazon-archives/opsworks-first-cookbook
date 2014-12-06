script_file = file "/tmp/shellout" do
  content node["shellout"]["code"]
  owner node["shellout"]["user"]
  mode 0700
  action :nothing
end

ruby_block 'shellout' do
  block do
    script_file.run_action(:create)
    Chef::Log.info "@@@#{OpsWorks::ShellOut.shellout(script_file.name, :user => node["shellout"]["user"])}@@@"
    script_file.run_action(:delete)
  end
end
