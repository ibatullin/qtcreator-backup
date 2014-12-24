#!/usr/bin/env ruby

require 'thor'
require 'fileutils'

class QtCreatorConfig < Thor
  class_option :config_path, :default => ENV['HOME']+"/.config/QtProject/"
  class_option :backup_path, :default => "./qtcreator-config-backup/", :type => :string

  desc "snippets", "Copy snippets"
  def snippets
    FileUtils.mkdir_p options[:backup_path]
    FileUtils.cp_r options[:config_path] + "/qtcreator/snippets/", options[:backup_path] + "/qtcreator/"
  end

  desc "backup", "Backup all"
  def backup
    invoke :snippets
  end
end

QtCreatorConfig.start(ARGV)
