{{- range .Results }}
{{- if .Vulnerabilities }}
Target,VulnerabilityID,PkgName,InstalledVersion,FixedVersion,Severity,Title,Description
{{- range .Vulnerabilities }}
{{ .Target }},{{ .VulnerabilityID }},{{ .PkgName }},{{ .InstalledVersion }},{{ .FixedVersion }},{{ .Severity }},{{ .Title | replace "," " " | replace "\n" " " }},{{ .Description | replace "," " " | replace "\n" " " }}
{{- end }}
{{- end }}
{{- end }}