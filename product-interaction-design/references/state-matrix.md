# UI / interaction state matrix (progressive)

For each critical step, define product behavior for:

| State | Questions |
|-------|-----------|
| Loading | What is shown? Can user cancel? Timeout? |
| Empty | First-time vs truly empty? CTA? |
| Partial | Incomplete data / drafts? |
| Success | What confirmation? Next action? |
| Error | Message, recovery, retry, support path? |
| Disabled | Why disabled? How to unlock? |
| Offline / degraded | What still works? |
| Permission denied | Explanation + request access path? |
| Concurrent edit | Who wins? Warning? |
| Undo / cancel | What is reverted? What is permanent? |

Do not invent states that the product never exposes; mark N/A explicitly.
