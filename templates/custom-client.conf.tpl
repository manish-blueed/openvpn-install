
{{- range $server := .Hosts }}
remote {{ $server.Host }} {{ $server.Port }} {{ $server.Protocol }}
{{- end }}
dev tun
proto udp
resolv-retry infinite
nobind
persist-key
persist-tun
remote-cert-tls server
auth SHA512
ignore-unknown-option block-outside-dns
verb 3

<ca>
{{ .CA -}}
</ca>
<cert>
{{ .Cert -}}
</cert>
<key>
{{ .Key -}}
</key>
<tls-crypt>
{{ .TC -}}
</tls-crypt>