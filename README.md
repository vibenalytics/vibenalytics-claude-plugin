# Vibenalytics Claude Plugin

Claude Code plugin that captures session metrics, tool usage, and performance data for your [Vibenalytics](https://vibenalytics.dev) dashboard.

## Prerequisites

Install the Vibenalytics CLI before using this plugin:

```bash
curl -fsSL https://vibenalytics.dev/install.sh | bash
```

Or see the [CLI repository](https://github.com/vibenalytics/vibenalytics) for alternative installation methods.

## Installation

In any Claude Code session, run:

```
/install-plugin vibenalytics/vibenalytics-claude-plugin
```

> **Important:** Install this globally (not per-project) - which projects get synced is managed within Vibenalytics.

## What it does

The plugin hooks into all 13 Claude Code lifecycle events and pipes event metadata to the `vibenalytics` CLI for aggregation and sync:

- **SessionStart / SessionEnd** — session boundary tracking
- **UserPromptSubmit** — prompt counting
- **PreToolUse / PostToolUse / PostToolUseFailure** — tool usage and latency
- **PermissionRequest** — permission flow tracking
- **Notification** — notification events
- **SubagentStart / SubagentStop** — subagent lifecycle
- **Stop** — session stop events
- **PreCompact** — context compaction events
- **TaskCompleted** — task completion tracking

All hooks run **async** (~1ms overhead) so they never block your workflow.

## Privacy

- No file content, prompt text, or tool output is captured
- Only metadata is logged: tool names, file paths, session IDs, timestamps, byte sizes
- Workdir paths are hashed before leaving your machine

## Commands

- `/status` — Show Vibenalytics configuration and sync status

## Links

- [Vibenalytics Dashboard](https://vibenalytics.dev)
- [CLI Installation & Docs](https://github.com/vibenalytics/vibenalytics)
