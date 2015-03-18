def create_zfs(dataset)
  ChefSpec::Matchers::ResourceMatcher.new(:zfs, :create, dataset)
end

def create_aws_ebs(name)
  ChefSpec::Matchers::ResourceMatcher.new(:aws_ebs_volume, :create, name)
end
