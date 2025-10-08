Follow these steps to create a new Python project:

1. The project is about: #$ARGUMENTS: 
2. Run cookiecutter to create project structure (~/.config/claude-code-project-scaffolder/template/)
    - First check the cookiecutter.json to understand what arguments you need to supply.
    - Run it with --no-input and the arguments so you don't have to go through the interactive flow 
    - cd ~/Documents/Coding (default coding project folder, but you are allowed to deviate or nest deeper if it makes sense to group projects together)
    - run cookiecutter ~/.config/claude-code-project-scaffolder/template/
3. Create GitHub repository using MCP tool:
    - Use the GitHub MCP tool to create repository
    - Repository name should match your project-slug (hyphenated version)
4. Run the setup script to initialize everything:
    - ~/.config/claude-code-project-scaffolder/setup-project.sh \
        ~/Documents/Coding/[project-folder-name] \
        [github-repo-url]
    - This handles: git init, uv sync, pyrefly init, pre-commit setup, initial commit, and push to GitHub.
5. Configure .env file:
    - template.env in the new project is like a master .env file, rename it to .env and remove anything that isn't relevant for this    project
6. Open the new project in VS Code using the 'code' terminal command