# Claude Code Project Scaffolder

Use Claude Code's /commands with cookiecutter, Github MCP and setup-project.sh to quickly scaffold Python projects

## Quick Setup

1. **Install cookiecutter** - [Installation Guide](https://github.com/cookiecutter/cookiecutter)
2. **Clone this repo** to `~/.config` (or your preferred location)
   ```bash
   git clone https://github.com/mellebrouwer/claude-code-project-scaffolder.git ~/.config/claude-code-project-scaffolder
   ```
   > Note: If you use a different location, update the paths in the Claude command file (project-scaffolder.md)

3. **Set up a personal Claude Code command** - [Claude Code Documentation](https://docs.claude.com/en/docs/claude-code/common-workflows#create-custom-slash-commands)
   ```bash
   cp ~/.config/project-scaffolder/project-scaffolder.md ~/.claude/commands/
   ```

4. **Add GitHub MCP server** with a classic token - [GitHub MCP Server](https://github.com/github/github-mcp-server?tab=readme-ov-file#install-in-other-mcp-hosts) | [Create Classic Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic)
   
   Configure the GitHub MCP server in your Claude Code settings with a GitHub Personal Access Token (Classic)

5. **Run Claude Code**
   ```bash
   claude
   ```

6. **Scaffold your project**
   ```
   /project-scaffolder {{Describe your project}}
   ```

7. **Profit! 🎉**

## Notes

- You could also just make calls to this GitHub cookiecutter template directly, but that's besides the point. This template isn't great, it's just to show how you could define your own.

- Play around with changing the `setup-project.sh` for deterministic commands you always want to run. The more you put in here, the more efficient your setup is gonna be. Only use Claude Code for things that you don't want to hardcode.