{{- if .Results }}
Target,VulnerabilityID,PkgName,InstalledVersion,FixedVersion,Severity,Title,Description
{{- range .Results }}
{{- if .Vulnerabilities }}
{{- range .Vulnerabilities }}
{{ .Target }},{{ .VulnerabilityID }},{{ .PkgName }},{{ .InstalledVersion }},{{ .FixedVersion }},{{ .Severity }},{{ .Title | replace "," " " | replace "\n" " " }},{{ .Description | replace "," " " | replace "\n" " " }}
{{- end }}
{{- end }}
{{- end }}
{{- else }}
No vulnerabilities found
{{- end }}