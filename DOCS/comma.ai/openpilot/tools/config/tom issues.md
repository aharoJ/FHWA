### Tom issue

- just replace with your credentials... and it will fix the poetry shell enviroment **IF** you get an error

```shell
[tool.poetry] name = "opendbc" version = "0.1.0" description = "Your project description" authors = ["Angel J. Haro <haro.j.angel@gmail.com>"] license = "MIT" readme = "README.md" repository = "[https://github.com/commaai/opendbc](https://github.com/commaai/opendbc "https://github.com/commaai/opendbc")" [tool.cython-lint] max-line-length = 120 ignore = ["E111", "E114"]
```

### pyproject toml

- https://github.com/commaai/openpilot/blob/master/pyproject.toml
