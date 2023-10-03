return {
  settings = {
    pylsp = {
      configurationSources = {
        "pycodestyle",
        "flake8",
        "black",
        "isort",
        "jedi_completion",
        "jedi_definition",
        "jedi_hover",
        "jedi_references",
        "jedi_signature_help",
        "jedi_symbols",
      },
      plugins = {
        jedi_completion = {
          enabled = true,
        },
        jedi_definition = {
          enabled = true,
        },
        jedi_hover = {
          enabled = true,
        },
        jedi_references = {
          enabed = true,
        },
        jedi_signature_help = {
          enabled = true,
        },
        jedi_symbols = {
          enabled = true,
        },
        pycodestyle = {
          enabled = true,
          maxLineLength = 100,
        },
        black = {
          enabled = true,
          line_length = 100,
        },
        flake8 = {
          enabled = true,
          maxLineLength = 100,
        },
        isort = {
          enabled = true,
        },
      },
    },
  },
}
