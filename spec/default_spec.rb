describe 'optoro_geminabox::default' do
  Resources::PLATFORMS.each do |platform, value|
    value['versions'].each do |version|
      context "On #{platform} #{version}" do
        include_context 'optoro_geminabox'

        let(:chef_run) do
          ChefSpec::SoloRunner.new(platform: platform, version: version, log_level: :error) do |node|
            node.set['lsb']['codename'] = value['codename']
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
          optoro_geminabox::backup
        ).each do |recipe|
          it "includes #{recipe}" do
            expect(chef_run).to include_recipe(recipe)
          end
        end
      end
    end
  end
end
