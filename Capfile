# 各Gemfileのrequire
require "capistrano/setup"
require "capistrano/deploy"
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'

# SCM（Source Code Management）の読み込み（Gitを使う前提）
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# カスタムタスクの読み込み
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
