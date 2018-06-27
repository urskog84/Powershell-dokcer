from microsoft/powershell

SHELL ["pwsh", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ADD /src /src

CMD ./src/download-cert.ps1 -computername https://sandboxapic.cisco.com  -outfile /usr/local/share/ca-certificates/sandboxapic.cert
CMD update-ca-certificates
#CMD Invoke-WebRequest -Uri https://sandboxapic.cisco.com/api/v1/ticket


