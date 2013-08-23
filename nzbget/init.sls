nzbget:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/nzbget.conf

nzbget-deps:
  pkg: 
    - installed
    - names: 
      - libncurses5-dev
      - libpar2-0-dev
      - libssl-dev
      - libgnutls-dev
      - libxml2-dev
      - make
      - libc6-dev
      - g++ 
      - gcc

nzbget_setup:
  cmd.script:
    - source: salt://nzbget/nzbget_install.sh 
    - user: root
    - shell: /bin/bash
    - unless: "which nzbget | grep /usr/local/bin/nzbget"
    - require:
      - pkg: nzbget-deps


/etc/nzbget.conf:
  file.managed:
    - source: salt://nzbget/nzbget.conf
    - user: root
    - mode: 755

/etc/init.d/nzbget:
  file.managed:
    - source: salt://nzbget/init.sh
    - user: root
    - mode: 777

/vagrant/nzbget/dst:
  file.directory:
    - makedirs: True

/vagrant/nzbget/nzb:
  file.directory:
    - makedirs: True

/vagrant/nzbget/queue:
  file.directory:
    - makedirs: True

/vagrant/nzbget/tmp:
  file.directory:
    - makedirs: True

/vagrant/nzbget/post-proc:
  file.directory:
    - makedirs: True
