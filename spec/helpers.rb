shared_context 'optoro_geminabox' do
  before do
    Chef::EncryptedDataBagItem.stub(:load).and_return(access_key_id: 'TEST_KEY_ID', secret_access_key: 'TEST_ACCESS_KEY')
  end
end
