#
# Cookbook Name:: chef_handler_test
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef_handler_test::default' do
  context 'When using ChefSpec::ServerRunner' do
    let(:server_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { server_run }.to_not raise_error
    end
  end

  context 'When using ChefSpec::SoloRunner' do
    let(:solo_run) do
      runner = ChefSpec::SoloRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { solo_run }.to_not raise_error
    end
  end
end
