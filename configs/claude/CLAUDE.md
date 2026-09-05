# File paths: make them open in PhpStorm

Print every local file path as a markdown link to PhpStorm:

    [config:12](idea://open?file=/Users/janisvepris/dot-files/config&line=12)

Rules:

- Link text is what I read. Keep it short and familiar: `config:12`, or repo-relative `domains/Fulfillment/src/Http/Controller/ApiController.php`.
- The URL needs the **absolute** path, even when the link text is relative.
- Percent-encode spaces in the path as `%20`.
- No line number? Drop the `&line=` part.
- Local files on this machine only. Not web URLs. Not files inside a container or on a remote host — those stay plain text.

Do this everywhere paths appear: prose, bullet lists, summaries, findings.

Do NOT do it inside fenced code blocks or inline backticks. Those render literally, so a link there just becomes noise to read around. Commands to copy stay plain.

Links cost tokens, so they slow long output down. Keep them for paths worth clicking:

- **Do not link** in a listing of many files (more than about 10 paths). Print those plain. Offer to link a few on request.
- **Do link** the handful of paths I am likely to open: files changed, files with a finding, the answer to "where is X".
