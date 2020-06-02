# MCVE For a Flow LSP issue

The purpose of this repo is to demonstrate a Flow issue,
where Flow is unable to provide autocomplete suggestions
through LSP request `textDocument/completion` for code
that is inside a JSX attribute callback.

## How to test

Open the folder in VSCode (it's configured for VSCode but should
work with other LSP clients too), with the
[flow-for-vscode](https://github.com/flowtype/flow-for-vscode)
extension installed.

Open _index.js_ file.  
Add `.` character to the end of one of the `obj` expressions.  

Optionally, to see the LSP trace logs, open VSCode's Output-tab (Ctrl+K
Ctrl+H) and select "Flow" from the dropdown.

## What will happen

When writing `obj.` in line 6 or 12, Flow gives autocomplete suggestions.  
<details><summary>LSP Trace logs</summary>
<p>
The LSP trace shows something like
```
Sending request 'textDocument/completion'

{
  "textDocument": {
    "uri": "index.js"
  },
  "position": {
    "line": 5,
    "character": 4
  },
  "context": {
    "triggerKind": 2,
    "triggerCharacter": "."
  }
} 

Received response 'textDocument/completion'
{
  "isIncomplete": false,
  "items": [
    {
      "label": "foo",
      "kind": 6,
      "detail": "string",
      "inlineDetail": "string",
      "sortText": "00000000000000000000",
      "insertTextFormat": 1
    },
    {
      "label": "hasOwnProperty",
      "kind": 3,
      "detail": "(prop: mixed) => boolean",
      "inlineDetail": "(prop: mixed) => boolean",
      "sortText": "00000000000000000001",
      "insertTextFormat": 1
    },
    ... (some items omitted for brevity) ...
  ]
} 
```
</p>
</details>

When witing `obj.` on line 10, inside the onClick callback,
there are no suggestions.
<details><summary>LSP Trace logs</summary>
<p>

The LSP trace will show something like
```
Sending request 'textDocument/completion'

{
  "textDocument": {
    "uri": "index.js"
  },
  "position": {
    "line": 9,
    "character": 8
  },
  "context": {
    "triggerKind": 2,
    "triggerCharacter": "."
  }
}

Received response 'textDocument/completion'
{
  "isIncomplete": false,
  "items": []
} 
```
</p>
</details>