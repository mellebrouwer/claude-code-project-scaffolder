Follow these steps to create a new Python project:

1. The project is about: #$ARGUMENTS: 
2. Run cookiecutter to create project structure from GitHub:
    - First check the cookiecutter.json to understand what arguments you need to supply.
    - Run it with --no-input and the arguments so you don't have to go through the interactive flow 
    - cd to {{PATH/WHERE/YOUR/CODING/PROJECTS/LIVE}}
    - run cookiecutter gh:mellebrouwer/claude-code-project-scaffolder
3. Create GitHub repository using MCP tool:
    - Use the GitHub MCP tool to create repository
    - Repository name should match your project-slug (hyphenated version)
4. Run the setup script to initialize everything:
    - {{PATH/TO/YOUR/SETUP_FILE}}/setup-project.sh \
        ~/Documents/Coding/[project-folder-name] \
        [github-repo-url]
    - This handles: git init, uv sync, pyrefly init, pre-commit setup, initial commit, and push to GitHub.
5. Configure .env file:
    - template.env in the new project is like a master .env file, rename it to .env and remove anything that isn't relevant for this project
6. Open the new project in VS Code using the 'code' terminal command