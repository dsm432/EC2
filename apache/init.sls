install_apache:
pkg.installed:
    - name: httpd

index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: ubuntu
    - group: ubuntu
    - mode: 644
    - source: salt://apache/templates/index.html

apache_service:
  service.running:
    - name: httpd
    - enable: True
    - require:
        - pkg: httpd
