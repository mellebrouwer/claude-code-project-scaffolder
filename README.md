- Install cookiecutter (link)
- Clone this repo somewhere (default ~/.config). If you use some other location update the paths in the claude command: project-scaffolder.md
- Move project-scaffolder.md to ~/.claude/commands (link)
- add GitHub MCP tool with classic token to Claude Code (link)
- bash: claude
- /project-scaffolder {{Describe your project}}
- ???
- Profit!

Notes:
You could also just make calls to this github cookiecutter template, but that's besides the point. This template isn't great, it's just to show how you could define your own.

Play around with changing the setup-project.sh for deterministic commands you always want to run. The more you put in here, the more efficient your setup is gonna be. Only use Claude Code for things that you don't want to hardcode.