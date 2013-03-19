# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :openbsd do |openbsd_config|
    openbsd_config.vm.box = "pgopenbsd"
    openbsd_config.vm.box_url = "https://github.com/downloads/stefancocora/openbsd_amd64-vagrant/openbsd50_amd64.box"
  end

  config.vm.define :precise do |precise_config|
    precise_config.vm.box = "pgprecise"
    precise_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    precise_config.vm.provision :shell, :path => "shell/precise.sh"

    pgvm_postgresql_src = ENV['PGVM_POSTGRESQL_SRC']
    if pgvm_postgresql_src
      precise_config.vm.share_folder "postgresql", "/usr/local/src/postgresql",
          pgvm_postgresql_src
    end

    pgvm_pg_top_src = ENV['PGVM_PG_TOP_SRC']
    if pgvm_pg_top_src
      precise_config.vm.share_folder "pg_top", "/usr/local/src/pg_top",
          pgvm_pg_top_src
    end

    pgvm_pg_proctab_src = ENV['PGVM_PG_PROCTAB_SRC']
    if pgvm_pg_proctab_src
      precise_config.vm.share_folder "pg_proctab", "/usr/local/src/pg_proctab",
          pgvm_pg_proctab_src
    end
  end
end
