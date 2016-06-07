inkscape:
  '0.91':
    full_name: 'Inkscape 0.91'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://inkscape.global.ssl.fastly.net/media/resources/file/inkscape-0.91-x64.msi'
    uninstaller: 'https://inkscape.global.ssl.fastly.net/media/resources/file/inkscape-0.91-x64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'https://inkscape.global.ssl.fastly.net/media/resources/file/inkscape-0.91.msi'
    uninstaller: 'https://inkscape.global.ssl.fastly.net/media/resources/file/inkscape-0.91.msi'
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False    
  '0.48.5':
    full_name: 'Inkscape 0.48.5'
    installer: 'https://inkscape.global.ssl.fastly.net/media/sourceforge/files/0.48.5/Inkscape-0.48.5-1-win32.exe'
    uninstaller: 'https://inkscape.global.ssl.fastly.net/media/sourceforge/files/0.48.5/Inkscape-0.48.5-1-win32.exe'
    install_flags: '/S /norestart'
    uninstall_flags: '/S /norestart'
    msiexec: False
    locale: en_US
    reboot: False    
