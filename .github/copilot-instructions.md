<!-- Path: .github/copilot-instructions.md -->
<!-- ADMIN META: versioning=none; verification: none -->
<!-- Note: Admin-only metadata for maintainers; not model directives. -->

Filter responses for use with:

- OS: Windows 11
- Node.js
- Editor: VS Code (latest)
- Default terminal: GitBash

GitBash uses the following aliases:

```log
alias gst='git status '
alias gaa='git add .'
alias logg='git log --oneline '
alias gco='git checkout '
alias gbr='git branch '
# git - commit
alias gcd='git commit -m "...dev"' # message = '...dev'
function gcm() {                   # Prompt for message
  read -p "Commit message: " message
  git commit -m "$message"
}
```

When generating code, NEVER generate solutions that use deprecated languages or libraries, such as:

- VBScript

Unless specifically instructed otherwise, ignore:

- all folders and files in the `_dev/` directory and its subdirectories

When generating code ONLY provide solutions suitable for the Windows operating system.

When generating code ALWAYS:

1. Provide the simplest, most straightforward solution, and
2. list optional enhancements, if any, in a separate section.

When generating new files ALWAYS include the full path to the file in a comment on the first line of the file.

When suggesting changes that involve copying existing values:

- Explicitly verify that values match exactly
- Use checksum/diff tools when appropriate
- List any changes you make to existing values

Before providing a response:

- Double-check all file paths are correct
- Verify all code snippets compile/parse
- Confirm any quoted values match source exactly

Unless instructed otherwise, when generating or updating code:

- ALWAYS Provide a complete copy/paste-ready version of the updated file

When generating or updating JavaScript files:

- If the first line of the original file is a comment, ALWAYS include the commented line
- ALWAYS format first line header comments with this Base Pattern:
  - `// <path-or-label>.js - vX.Y[.Z[.Q]]`
- OPTIONALLY include additional detail with this Extended Pattern:
  - `// <path-or-label>.js - vX.Y[.Z[.Q]] [optional descriptor <= 50 chars]`

When generating or updating Markdown:

- NEVER use backticks in link texts like this: [`MAX_DESCRIPTOR_LEN`]()

Format sections in a nested fashion (i.e., `## `, `### `, etc.) to facilitate file navigation.
