describe 'optoro_geminabox::default' do
  Resources::PLATFORMS.each do |platform, value|
    value['versions'].each do |version|
      context "On #{platform} #{version}" do
        include_context 'optoro_geminabox'

        let(:chef_run) do
          ChefSpec::SoloRunner.new(platform: platform, version: version, log_level: :error) do |node|
            node.set['lsb']['codename'] = value['codename']
            node.set['ec2'] = {}
            stub_command('which nginx').and_return('/usr/sbin/nginx')
          end.converge(described_recipe)
        end

        %w(
          000-default
          default
        ).each do |site|
          it "disables the #{site} site" do
            expect(chef_run).to disable_nginx_site(site)
          end
        end

        %w(
          geminabox
          optoro_zfs
          aws
        ).each do |recipe|
          it "includes #{recipe}" do
            expect(chef_run).to include_recipe(recipe)
          end
        end

        it 'create the /var/www/geminabox/data directory' do
          expect(chef_run).to create_directory('/var/www/geminabox/data').with(
            user: 'www-data',
            group: 'www-data',
            mode: '0755'
          )
        end

        it 'creates a zpool for geminabox_cache' do
          expect(chef_run).to create_zpool('geminabox_cache').with(
            disks: ['/dev/xvdf'],
            mountpoint: 'none',
            force: true
          )
        end

        it 'creates a zfs dataset for geminabox_cache' do
          expect(chef_run).to create_zfs('geminabox_cache/data').with(
            mountpoint: '/var/www/geminabox/data',
            atime: 'off',
            compression: 'lz4'
          )
        end

        it 'creates an ebs volume' do
          expect(chef_run).to create_aws_ebs('geminabox_cache').with(
            size: 50,
            device: '/dev/sdf'
          )
        end
      end
    end
  end
end
