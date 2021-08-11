# workspace-dbt-test

see [microsoft/vscode-remote-release#5388](https://github.com/microsoft/vscode-remote-release/issues/5388).

[![Open in Visual Studio Code](https://open.vscode.dev/badges/open-in-vscode.svg)](https://open.vscode.dev/hideto0710/workspace-dbt-test)

## Testing

```bash
dbt test --vars "{\"apply_filter\": \"date = DATE '2021-01-03'\"}"
```
