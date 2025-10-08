"""
{{ cookiecutter.project_description }}
"""

import logging
from rich.console import Console
from rich.logging import RichHandler

# Set up logging with Rich
logging.basicConfig(
    level=logging.INFO,
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(rich_tracebacks=True)]
)

logger = logging.getLogger(__name__)
console = Console()


def main() -> None:
    """Main entry point for {{ cookiecutter.project_name }}"""
    console.print(f"[bold green]Welcome to {{ cookiecutter.project_name }}![/bold green]")
    logger.info("Application started")
    
    # Your code here
    
    logger.info("Application finished")


if __name__ == "__main__":
    main()