commonSettings =
  core:
    disabledPackages: [
      "background-tips"
      "exception-reporting"
      "metrics"
    ]
  editor:
    showInvisibles: true
  welcome:
    showOnStartup: false

for pkg, settings of commonSettings
  for setting, value of settings
    atom.config.set("#{pkg}.#{setting}", value)
