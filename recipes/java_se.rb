if node['java_se']['skip']
  Chef::Log.warn('Skipping install of Java SE!')
else
  case node['platform_family']
  when 'mac_os_x'
    include_recipe 'learn_chef_apache2::_macosx_install'
  when 'windows'
    include_recipe 'learn_chef_apache2::_windows_install'
  else
    include_recipe 'learn_chef_apache2::_linux_install'
  end
end
