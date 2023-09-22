import * as vscode from "vscode";

export function activate(context: vscode.ExtensionContext) {
  const sidebarProvider = new ViewProvider();

  context.subscriptions.push(
    vscode.window.registerWebviewViewProvider("plain-sidebar", sidebarProvider)
  );
}

class ViewProvider implements vscode.WebviewViewProvider {
  public resolveWebviewView(
    webviewView: vscode.WebviewView,
    _context: vscode.WebviewViewResolveContext,
    _token: vscode.CancellationToken
  ) {
    webviewView.webview.html = "";
  }
}
