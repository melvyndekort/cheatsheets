---
title: Kiro CLI
description: Kiro CLI - AI-assisted development in your terminal
logo: kiro.png
draft: false
---
### Slash Commands
{{< table >}}
Binding | Description
--- | ---
`/quit` | Exit the application
`/clear` | Clear conversation history
`/agent` | Manage agents
`/chat` | Manage saved conversations
`/context` | Manage context files
`/code` | Code intelligence (LSP)
`/editor` | Open $EDITOR for prompt
`/reply` | Quote last message in editor
`/compact` | Summarize conversation
`/tools` | View tools & permissions
`/issue` | Create GitHub issue
`/changelog` | View CLI changelog
`/prompts` | View/retrieve prompts
`/hooks` | View context hooks
`/usage` | Show billing & credits
`/mcp` | See MCP servers loaded
`/model` | Select conversation model
`/experiment` | Toggle experimental features
`/plan` | Switch to Plan agent
`/todos` | Manage TODO lists
`/paste` | Paste image from clipboard
{{< /table >}}

### Keyboard Shortcuts
{{< table >}}
Binding | Description
--- | ---
`Ctrl + S` | Fuzzy search commands
`Ctrl + T` | Toggle tangent mode
`Shift + Tab` | Toggle Plan agent
`Tab` | Accept autocompletion
`Ctrl + C` | Cancel current operation
`Ctrl + D` | Exit (alternative to /quit)
`↑` / `↓` | Navigate command history
{{< /table >}}

### Special Characters
{{< table >}}
Binding | Description
--- | ---
`!` | Execute shell command directly
`@` | Reference prompts (@promptname)
`↯` | Tangent mode indicator
`[agent]` | Current agent indicator
`>` | Standard prompt
`%` | Show context usage indicator
{{< /table >}}

### Agent Management
{{< table >}}
Binding | Description
--- | ---
`/agent list` | Show available agents
`/agent switch` | Change active agent
`/agent create` | Create new agent
`--agent` | Start with specific agent
`.kiro/agents/` | Local agent configs
`~/.kiro/agents/` | Global agent configs
{{< /table >}}

### Code Intelligence
{{< table >}}
Binding | Description
--- | ---
`/code init` | Initialize LSP servers
`/code init -f` | Force restart LSP servers
`/code status` | Show workspace status
`/code logs` | Display LSP logs
`/code overview` | Codebase structure overview
`search_symbols` | Find functions/classes by name
`find_references` | Find all symbol usages
`goto_definition` | Navigate to definition
`get_diagnostics` | Get errors & warnings
`rename_symbol` | Rename across codebase
`pattern_search` | AST-based code search
`pattern_rewrite` | Automated refactoring
{{< /table >}}

### Context Management
{{< table >}}
Binding | Description
--- | ---
`/context add` | Add context file
`/context remove` | Remove context file
`/context list` | Show context files
`/context usage` | View context window usage
`/compact` | Free up context space
{{< /table >}}

### Chat Management
{{< table >}}
Binding | Description
--- | ---
`/chat save` | Save conversation
`/chat load` | Load conversation
`/chat list` | List saved chats
`/chat delete` | Delete saved chat
`/clear` | Clear current conversation
`/compact` | Summarize to free context
{{< /table >}}

### MCP Integration
{{< table >}}
Binding | Description
--- | ---
`/mcp` | View loaded servers
`/mcp add` | Add MCP server
`/mcp remove` | Remove MCP server
`/mcp list` | Show available servers
`@server/tool` | Reference MCP tool
{{< /table >}}

### Knowledge Base
{{< table >}}
Binding | Description
--- | ---
`/knowledge add` | Add files/directories
`/knowledge show` | Display all entries
`/knowledge remove` | Remove entries
`/knowledge update` | Refresh existing entry
`/knowledge clear` | Remove all entries
`/knowledge cancel` | Cancel background ops
`--index-type` | Fast (BM25) or Best (semantic)
`--include` | File patterns to include
`--exclude` | File patterns to exclude
{{< /table >}}

### TODO Management
{{< table >}}
Binding | Description
--- | ---
`/todos view` | Display TODO lists
`/todos resume` | Continue TODO list
`/todos clear-finished` | Remove completed lists
`/todos delete` | Delete specific list
`/todos delete --all` | Delete all lists
{{< /table >}}

### Checkpoint Commands
{{< table >}}
Binding | Description
--- | ---
`/checkpoint init` | Enable checkpoints
`/checkpoint list` | Show checkpoints
`/checkpoint expand` | Show tool-level details
`/checkpoint diff` | Compare checkpoints
`/checkpoint restore` | Restore to checkpoint
`/checkpoint clean` | Delete shadow repo
`--hard` | Exact workspace match
{{< /table >}}

### Tangent Mode
{{< table >}}
Binding | Description
--- | ---
`/tangent` | Enter/exit tangent mode
`/tangent tail` | Exit with last entry preserved
`/tangent forget N` | Remove last N messages
`/tangent forget` | Interactive message selection
`Ctrl + T` | Toggle tangent mode
{{< /table >}}

### Hooks
{{< table >}}
Binding | Description
--- | ---
`AgentSpawn` | Runs when agent activates
`UserPromptSubmit` | Runs on prompt submission
`PreToolUse` | Before tool execution
`PostToolUse` | After tool execution
`Stop` | After assistant response
`/hooks` | View configured hooks
{{< /table >}}

### Built-in Tools
{{< table >}}
Binding | Description
--- | ---
`execute_bash` | Run shell commands
`fs_read` | Read files/directories
`fs_write` | Create/edit files
`code` | Code intelligence operations
`grep` | Search file contents
`glob` | Find files by pattern
`use_aws` | AWS CLI API calls
`web_search` | Search the web
`web_fetch` | Fetch URL content
`knowledge` | Knowledge base operations
`use_subagent` | Delegate to subagents
{{< /table >}}
