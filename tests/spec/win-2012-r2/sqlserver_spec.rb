require 'spec_helper'

describe 'SQL Server 2014' do
  describe service('SQL Server (MSSQLSERVER)') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
    it { should have_start_mode('Automatic') }
  end

  describe package('Microsoft SQL Server 2014 (64-bit)') do
    it { should be_installed }
  end

  describe port(1433) do
    it { should be_listening.with('tcp') }
  end
end
