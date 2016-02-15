{% set PROGRAM_FILES = "%ProgramFiles%" %}
awspstools:
  latest:
    full_name: 'AWS Tools for Windows Powershell'
    installer: http://sdk-for-net.amazonwebservices.com/latest/AWSToolsAndSDKForNet.msi
    uninstaller: http://sdk-for-net.amazonwebservices.com/latest/AWSToolsAndSDKForNet.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False 
