# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
newrelic:
  latest:
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'New Relic Agent'
    installer: https://rpm.newrelic.com/accounts/1598032/download_agent?arch=x64&lang=dotnet
    uninstaller: https://rpm.newrelic.com/accounts/1598032/download_agent?arch=x64&lang=dotnet
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'New Relic Agent'
    installer: https://rpm.newrelic.com/accounts/1598032/download_agent?arch=x86&lang=dotnet
    uninstaller: https://rpm.newrelic.com/accounts/1598032/download_agent?arch=x86&lang=dotnet
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False 
