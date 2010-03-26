# desc "Explaining what the task does"
# task :coteyr_pack do
#   # Task goes here
# end

namespace :coteyr_pack do
  desc "Use this task to install coteyr_pack. Be advised files will be overwritten"
  task :setup do
    plugin_dir = File.join(File.dirname(__FILE__), '..')
    FileUtils.cp_r( Dir[File.join(plugin_dir, 'public')], File.join(RAILS_ROOT), :verbose => true)
    FileUtils.cp_r( Dir[File.join(plugin_dir, 'config')], File.join(RAILS_ROOT), :verbose => true)
    FileUtils.cp( File.join(plugin_dir, '.gitignore'), File.join(RAILS_ROOT), :verbose => true)
    FileUtils.cp( File.join(plugin_dir, 'Capfile'), File.join(RAILS_ROOT), :verbose => true)
    FileUtils.cp_r( Dir[File.join(plugin_dir, 'script')], File.join(RAILS_ROOT), :verbose => true)
    FileUtils.cp_r( Dir[File.join(plugin_dir, 'app')], File.join(RAILS_ROOT), :verbose => true)
    puts "Finished."
  end
  namespace :linux do
    desc "This starts the Ease of use Menu"
    task :menu do
      sh ( "#{RAILS_ROOT}/script/menu.sh '#{RAILS_ROOT}'")
    end
    desc "Commits using ~/.bin/commit"
    task :commit do
      sh ("~/.bin/commit")
    end
    desc "Update local Repo using ~/.bin/pull"
    task :pull do
      sh ("~/.bin/pull")
    end
    desc "Run All tests"
    task :test_all do
      sh ("konsole --noclose --workdir #{RAILS_ROOT} -e rake test")
    end
    desc "Run Autotest"
    task :auto_test do
      sh ("konsole -workdir #{RAILS_ROOT}  -e autotest")
    end
    desc "Run the console"
    task :console do
      sh ("konsole -workdir #{RAILS_ROOT} -e script/console")
    end
    desc "Run the Controller Generator (not script/generate but the wrapper)"
    task :controller do
      sh ("#{RAILS_ROOT}/script/controller.sh '#{RAILS_ROOT}'")
    end
    desc "Run the Migration Generator (not script/generate but the wrapper)"
    task :migration do
      sh ("#{RAILS_ROOT}/script/mig.sh '#{RAILS_ROOT}'")
    end
    desc "Run the Model Generator (not script/generate but the wrapper)"
    task :model do
      sh ("#{RAILS_ROOT}/script/model.sh '#{RAILS_ROOT}'")
    end
    desc "Run the DB Migrator (not rake db:migrate but the wrapper)"
    task :migrate do
      sh ("#{RAILS_ROOT}/script/dbmig.sh '#{RAILS_ROOT}'")
    end
    desc "Run the DB Migrator (not rake db:migrate but the wrapper)"
    task :migrate do
      sh ("#{RAILS_ROOT}/script/dbmig.sh '#{RAILS_ROOT}'")
    end
    desc "View Logs"
    task :log do
      sh ("konsole -workdir #{RAILS_ROOT}  -e tail -n 100 -f '#{RAILS_ROOT}/log/development.log'")
    end
  end
end