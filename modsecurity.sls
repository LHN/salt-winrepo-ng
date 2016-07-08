# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
modsecurity:
  '2.9.1':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'ModSecurity 2.9.1 (64-bit)'
    installer: 'https://www.modsecurity.org/tarball/2.9.1/ModSecurityIIS_2.9.1-64b.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'ModSecurity 2.9.1'
    installer: 'https://www.modsecurity.org/tarball/2.9.1/ModSecurityIIS_2.9.1-32b.msi'
    {% endif %}
    install_flags: '/quiet /qn /norestart'
    uninstaller: '{{ PROGRAM_FILES }}\ModSecurity\uninstall.exe'
    uninstall_flags: '/uninstall /norestart'
    msiexec: True
    locale: en_US
    reboot: False
