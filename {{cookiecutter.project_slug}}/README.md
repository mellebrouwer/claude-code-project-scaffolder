# {{cookiecutter.project_name}}

{{cookiecutter.project_description}}

## Installation

```bash
uv sync
```

## Usage

```bash
uv run python -m {{cookiecutter.project_slug.replace('-', '_')}}
```

## Development

```bash
# Install development dependencies
uv sync --dev

# Run tests
uv run pytest

# Run linting
uv run ruff check
uv run ruff format

# Type checking with pyrefly
uv run pyrefly check
```

## Author

{{cookiecutter.author_name}} ({{cookiecutter.author_email}})