{ config, pkgs, ... }:

 {
  programs.vscode = {
    enable = true;
    # package = unstable.vscode;
    # extensions = marketplaceExtensions;
    userSettings = {
      /**
      * Better Defaults
      **/
      "editor.copyWithSyntaxHighlighting" = false;
      "diffEditor.ignoreTrimWhitespace" = false;
      "editor.emptySelectionClipboard" = false;
      "workbench.editor.enablePreview" = false;
      "window.newWindowDimensions" = "inherit";
      "editor.multiCursorModifier" = "ctrlCmd";
      "files.trimTrailingWhitespace" = true;
      "diffEditor.renderSideBySide" = false;
      "editor.snippetSuggestions" = "top";
      "editor.detectIndentation" = true;
      "files.insertFinalNewline" = true;
      "files.trimFinalNewlines" = true;
      "telemetry.telemetryLevel" = "off";
      "editor.formatOnSave" = true;
      "editor.quickSuggestions"."strings" = true;
      "workbench.sideBar.location" = "right";
      "workbench.editor.showTabs" = false;
      "editor.highlightActiveIndentGuide" = false;
      "editor.guides.indentation" = false;
      "editor.minimap.enabled" = false;
      "editor.lineNumbers" = "on";
      "editor.suggestSelection" = "first";
      # "window.commandCenter" = false;
      # "window.titleBarStyle"= "custom";
      "editor.stickyScroll.enabled" = true;

      /**
      * Silence The Noise
      */
      "window.title" = "";
      "update.mode" = "manual";
      "comments.visible" = false;
      "breadcrumbs.enabled" = true;
      "scm.diffDecorations" = "gutter";
      "editor.hover.enabled" = true;
      "editor.matchBrackets" = "near";
      "workbench.tips.enabled" = false;
      "editor.colorDecorators" = true;
      "git.decorations.enabled" = false;
      "workbench.startupEditor" = "none";
      "editor.lightbulb.enabled" = false;
      "editor.inlayHints.enabled" = "off";
      "editor.selectionHighlight" = false;
      "editor.overviewRulerBorder" = false;
      "editor.renderLineHighlight" = "none";
      "editor.occurrencesHighlight" = false;
      "problems.decorations.enabled" = false;
      "workbench.activityBar.visible" = false;
      "editor.renderControlCharacters" = false;
      "extensions.ignoreRecommendations" = true;
      "editor.hideCursorInOverviewRuler" = true;
      "editor.bracketPairColorization.enabled" = false;
      "editor.gotoLocation.multipleReferences" = "goto";
      "editor.gotoLocation.multipleDefinitions" = "goto";
      "editor.gotoLocation.multipleDeclarations" = "goto";
      "workbench.editor.enablePreviewFromQuickOpen" = false;
      "editor.gotoLocation.multipleImplementations" = "goto";
      "editor.gotoLocation.multipleTypeDefinitions" = "goto";

      /**
      * Typography
      **/
      # "workbench.colorTheme" = "Horizon";
      # "workbench.colorTheme" = "poimandres";
      "workbench.colorTheme" = "Rosé Pine";
      "editor.fontFamily" = "JetBrains Mono";
      "editor.fontSize" = 16;
      "editor.fontLigatures" = true;
      # "editor.lineHeight" = 24; #1.5
      "editor.lineHeight" = 28; #1.75

      "editor.suggestFontSize" = 15;
      "editor.suggestLineHeight" = 28;
      "terminal.integrated.fontSize" = 15;
      "terminal.integrated.lineHeight" = 1.5;
      "window.menuBarVisibility" = "toggle";

      /**
       * Visuals
       */
      # "customizeUI.stylesheet" = {
      #   ".editor-actions"= "display: none !important;";
      # };
      # "customizeUI.titleBar" = "inline";

      /**
      * Find
      **/
      "search.useIgnoreFiles" = false;
      "search.exclude" = {
        "**/coverage" = true;
        "**/tmp" = true;
        "**/out-tsc" = true;
        "**/.cache" = true;
        "**/.bundles" = true;
        "**/.docusaurus" = true;
        "**/dist" = true;
      };

      /**
      * Code
      **/
      "emmet.includeLanguages"."blade" = "html";
      "emmet.includeLanguages"."vue-html" = "html";
      "emmet.includeLanguages"."vue" = "html";
      "files.associations".".php_cs" = "php";
      "files.associations".".php_cs.dist" = "php";


      /**
      * Javascript / Typescript / Prettier
      **/
      "prettier.requireConfig" = true;
      "prettier.useEditorConfig" = false;
      "javascript.updateImportsOnFileMove.enabled" = "always";
      "typescript.updateImportsOnFileMove.enabled" = "always";
      "typescript.preferences.importModuleSpecifier" = "project-relative";
      "javascript.preferences.importModuleSpecifier" = "project-relative";
      "typescript.preferences.useAliasesForRenames" = false;
      "javascript.preferences.useAliasesForRenames" = false;

      "[javascript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[typescriptreact]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[typescript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[vue]"."editor.defaultFormatter" = "octref.vetur";

      /**
      * Markdown
      */
      "[markdown]"."editor.defaultFormatter" = "yzhang.markdown-all-in-one";
      "markdown.extension.toc.levels" = "1..2";

      /**
      * HTML
      */
      "highlight-matching-tag.styles"."opening"."name"."highlight" = "rgba(255,255,255,0.04)";

      /**
      * JSON
      */
      "[jsonc]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[json]"."editor.defaultFormatter" = "esbenp.prettier-vscode";

      /**
      * Python
      **/
      "python.experiments.enabled" = false;
      "python.terminal.activateEnvironment" = false;

      /**
       * Rust
       **/
      "rust-analyzer.server.path" = "${pkgs.rust-analyzer}/bin/rust-analyzer";

      /**
       * Atlassian JIRA extension
       **/
      "atlascode.jira.jqlList" = [
        {
          "id" = "510b286f-b629-4381-9d34-06a57b46e99d";
          "siteId" = "be4db49f-736f-47b3-bca9-3cad5a2544e3";
          "name" = "My Sprint Issues";
          "query" = "project IN (\"SOFT\",\"Product Foundation\") AND status NOT IN (\"Done\") AND assignee = currentUser() AND sprint in openSprints() ORDER BY status ASC, created DESC";
          "enabled" = true;
          "monitor" = true;
        }
      ];
      "atlascode.jira.statusbar.enabled" = false;
      "atlascode.bitbucket.enabled" = false;
      "atlascode.jira.startWorkBranchTemplate.customTemplate" = "{{{issueKey}}}/{{{summary}}}";

      /**
      * TODO Tree extension
      **/
      "todo-tree.general.tags" = [
          "BUG"
          "HACK"
          "FIXME"
          "TODO"
          "XXX"
          "[ ]"
          "[x]"
      ];
      "todo-tree.regex.regex" = "(//|#|<!--|;|/\\*|^|^\\s*(-|\\d+.))\\s*($TAGS)";
      "todo-tree.highlights.defaultHighlight"."type" = "text";
      "todo-tree.highlights.defaultHighlight"."foreground" = "#fff";
      "todo-tree.highlights.defaultHighlight"."background" = "#414658";

      /**
      * githd
      **/
      "githd.blameView.enabled" = false;
      "githd.editor.disabled"= true;

      /**
       * Gitlens extension
       */
       "gitlens.hovers.enabled" = true;
       "gitlens.codeLens.enabled" = true;
       "gitlens.hovers.avatarSize" = 22;
       "gitlens.statusBar.enabled" = false;
       "gitlens.currentLine.enabled" = false;
       "gitlens.showWelcomeOnInstall" = false;
       "gitlens.hovers.annotations.over" = "line";
       "gitlens.hovers.currentLine.over" = "line";
       "gitlens.hovers.autolinks.enabled" = false;
       "gitlens.hovers.autolinks.enhanced" = false;
       "gitlens.showWhatsNewAfterUpgrades" = false;
       "gitlens.hovers.currentLine.details" = true;
       "gitlens.hovers.currentLine.changes" = false;
       "gitlens.hovers.annotations.details" = false;
       "gitlens.hovers.annotations.changes" = false;
       "gitlens.hovers.pullRequests.enabled" = true;
       "gitlens.hovers.detailsMarkdownFormat" = "\${avatar} &nbsp;__\${author}__, \${ago}\${' via 'pullRequest} &nbsp; _(\${date})_ \n\${message}";
       "gitlens.menus" = {
        "editor" = {
          "blame" = false;
          "clipboard" = false;
          "compare" = false;
          "history" = false;
          "remote" = false;
        };
        "editorGroup" = {
          "blame" = false;
          "compare" = false;
        };
        "editorTab" = {
          "clipboard" = false;
          "compare" = false;
          "history" = false;
          "remote" = false;
        };
        "explorer" = {
          "clipboard" = false;
          "compare" = false;
          "history" = false;
          "remote" = false;
        };
        "scm" = {
          "authors" = false;
        };
        "scmGroupInline" = {
          "stash" = false;
        };
        "scmGroup" = {
          "compare" = false;
          "openClose" = false;
          "stash" = false;
        };
        "scmItem" = {
          "clipboard" = false;
          "compare" = false;
          "history" = false;
          "remote" = false;
          "stash" = false;
        };
      };
    };
    keybindings = [
      /**
       * Basic text manipulation
       **/
      {
        "key" = "ctrl+shift+backspace";
        "command" = "deleteInsideWord";
        "when" = "textInputFocus && !editorReadonly";
      }
      /**
      * Panels
      */
      {
        "key" = "ctrl+k ctrl+e";
        "command" = "workbench.view.explorer";
      }
      {
        "key" = "ctrl+k ctrl+g";
        "command" = "workbench.view.scm";
      }
      {
        "key" = "ctrl+k ctrl+d";
        "command" = "workbench.view.debug";
      }
      {
        "key" = "ctrl+k ctrl+x";
        "command" = "workbench.view.extensions";
      }
      {
        "key" = "ctrl+k ctrl+b";
        "command" = "workbench.action.toggleSidebarVisibility";
      }
      {
        "key" = "ctrl+k ctrl+p";
        "command" = "markdown.showPreviewToSide";
        "when" = "!notebookEditorFocused && editorLangId == 'markdown'";
      }
      {
        "key" = "ctrl+e";
        "command" = "workbench.action.focusActiveEditorGroup";
      }
      {
        "key" = "ctrl+t";
        "command" = "workbench.action.terminal.toggleTerminal";
      }
      {
        "key" = "ctrl+alt+p";
        "command" = "workbench.action.quickOpenTerm";
        "when" = "terminalFocus";
      }
      {
        "key" = "ctrl+p";
        "command" = "workbench.action.terminal.focusNext";
        "when" = "terminalFocus";
      }
      {
        "key" = "ctrl+shift+p";
        "command" = "workbench.action.terminal.focusPrevious";
        "when" = "terminalFocus";
      }
      /**
      * Toggle Font Size
      **/
      {
        "key" = "ctrl+k ctrl+k";
        "command" = "toggle";
        "when" = "editorTextFocus";
        "args" = {
          "id" = "fontSize";
          "value" = [
            {
              "editor.fontSize" = 16;
              "editor.lineHeight" = 24;
            }
            {
              "editor.fontSize" = 12;
              "editor.lineHeight" = 0;
            }
          ];
        };
      }
      /**
      * Fold/Unfold
      **/
      {
        "key" = "ctrl+k ctrl+l";
        "command" = "editor.toggleFold";
        "when" = "editorTextFocus && foldingEnabled";
      }
      /**
      * Line Manipulation
      **/
      {
        "key" = "ctrl+l";
        "command" = "editor.action.copyLinesDownAction";
        "when" = "editorTextFocus";
      }
      {
        "key" = "shift+ctrl+l";
        "command" = "editor.action.deleteLines";
      }
      {
        "key" = "ctrl+j";
        "command" = "editor.action.joinLines";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+shift+x";
        "command" = "editor.action.commentLine";
        "when" = "editorTextFocus && !editorReadonly";
      }
      /**
      * File Explorer
      **/
      {
        "key" = "ctrl+d";
        "command" = "duplicate.execute";
        "when" = "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !inputFocus";
      }
      {
        "key" = "ctrl+n";
        "command" = "explorer.newFile";
        "when" = "explorerViewletVisible && filesExplorerFocus && !inputFocus";
      }
      {
        "key" = "shift+ctrl+n";
        "command" = "explorer.newFolder";
        "when" = "explorerViewletVisible && filesExplorerFocus && !inputFocus";
      }
      /**
      * Multi-Cursor
      **/
      {
        "key" = "ctrl+backspace";
        "command" = "editor.action.moveSelectionToPreviousFindMatch";
        "when" = "editorFocus && editorHasMultipleSelections";
      }
      {
        "key" = "ctrl+k ctrl+d";
        "command" = "editor.action.moveSelectionToNextFindMatch";
        "when" = "editorFocus && editorHasMultipleSelections";
      }
      {
        "key" = "ctrl+right";
        "command" = "editor.action.insertCursorAtEndOfEachLineSelected";
        "when" = "editorFocus && editorHasSelection";
      }
      /**
      * Split Panels
      **/
      {
        "key" = "alt+w";
        "command" = "workbench.action.joinAllGroups";
        "when" = "editorFocus";
      }
      {
        "key" = "alt+n";
        "command" = "workbench.action.splitEditor";
        "when" = "editorFocus";
      }
      {
        "key" = "alt+l";
        "command" = "workbench.action.navigateRight";
        "when" = "editorFocus";
      }
      {
        "key" = "alt+h";
        "command" = "workbench.action.navigateLeft";
        "when" = "editorFocus";
      }
      {
        "key" = "alt+=";
        "command" = "workbench.action.increaseViewSize";
        "when" = "editorFocus";
      }
      {
        "key" = "alt+-";
        "command" = "workbench.action.decreaseViewSize";
        "when" = "editorFocus";
      }
      /**
      * Terminal Split Panel
      **/
      {
        "key" = "alt+n";
        "command" = "workbench.action.terminal.split";
        "when" = "terminalFocus";
      }
      {
        "key" = "alt+l";
        "command" = "workbench.action.terminal.focusNextPane";
        "when" = "terminalFocus";
      }
      {
        "key" = "alt+h";
        "command" = "workbench.action.terminal.focusPreviousPane";
        "when" = "terminalFocus";
      }
      {
        "key" = "alt+w";
        "command" = "workbench.action.terminal.kill";
        "when" = "terminalFocus";
      }
      /**
      * Emmet
      **/
      {
        "key" = "ctrl+m ctrl+i";
        "command" = "editor.emmet.action.balanceIn";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+m ctrl+o";
        "command" = "editor.emmet.action.balanceOut";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+m ctrl+w";
        "command" = "editor.emmet.action.wrapWithAbbreviation";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+m ctrl+m";
        "command" = "editor.emmet.action.matchTag";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+m ctrl+e";
        "command" = "editor.action.smartSelect.expand";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+m ctrl+r";
        "command" = "editor.emmet.action.updateTag";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+m ctrl+backspace";
        "command" = "editor.emmet.action.removeTag";
        "when" = "editorTextFocus";
      }
      {
        "key" = "shift+alt+down";
        "command" = "editor.emmet.action.incrementNumberByOne";
        "when" = "editorTextFocus";
      }
      {
        "key" = "shift+alt+up";
        "command" = "editor.emmet.action.decrementNumberByOne";
        "when" = "editorTextFocus";
      }
      /**
       * Code Ace Jumper
       **/
      {
        "key" = "ctrl+g ctrl+g";
        # "key" = "ctrl+space";
        "command" = "extension.aceJump";
      }
      {
        # "key" = "ctrl+g ctrl+m";
        "key" = "ctrl+space";
        "command" = "extension.aceJump.multiChar";
      }
      {
        "key" = "ctrl+g ctrl+l";
        "command" = "extension.aceJump.line";
      }
      {
        "key" = "ctrl+g ctrl+s";
        "command" = "extension.aceJump.selection";
      }
      /**
      * IntelliSense
      **/
      {
        "key" = "ctrl+o";
        "command" = "workbench.action.gotoSymbol";
      }
      {
        "key" = "ctrl+shift+o";
        "command" = "workbench.action.showAllSymbols";
      }
      {
        "key" = "ctrl+i";
        "command" = "workbench.action.gotoLine";
      }
      {
        "key" = "ctrl+k ctrl+enter";
        "command" = "editor.action.goToDeclaration";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+r ctrl+i";
        "command" = "namespaceResolver.import";
      }
      {
        "key" = "ctrl+r ctrl+r";
        "command" = "editor.action.codeAction";
        "args" = {
          "kind" = "refactor";
          "apply" = "never";
        };
      }
      {
        "key" = "ctrl+r ctrl+e";
        "command" = "editor.action.codeAction";
        "args" = {
          "kind" = "refactor.extract";
          "apply" = "ifSingle";
        };
      }
      {
        "key" = "ctrl+r ctrl+m";
        "command" = "editor.action.codeAction";
        "args" = {
          "kind" = "refactor.move";
          "apply" = "ifSingle";
        };
      }
      {
        "key" = "ctrl+r ctrl+w";
        "command" = "editor.action.codeAction";
        "args" = {
          "kind" = "refactor.rewrite";
          "apply" = "ifSingle";
        };
      }
      /**
      * Project Switching
      **/
      {
        "key" = "ctrl+;";
        "command" = "workbench.action.switchWindow";
        "when" = "! config.simple-project-switcher.present";
      }
      {
        "key" = "alt+ctrl+right";
        "command" = "workbench.action.showNextWindowTab";
      }
      {
        "key" = "alt+ctrl+left";
        "command" = "workbench.action.showPreviousWindowTab";
      }
      /**
      * Open DevTools
      **/
      {
        "key" = "alt+ctrl+i";
        "command" = "workbench.action.toggleDevTools";
      }
      /**
      * Hide Toaster Notifications
      **/
      {
        "key" = "escape";
        "command" = "notifications.hideToasts";
        "when" = "notificationToastsVisible";
      }
      {
        "key" = "ctrl+k ctrl+r";
        "command" = "-git.revertSelectedRanges";
        "when" = "isInDiffEditor";
      }
      {
        "key" = "ctrl+k ctrl+r";
        "command" = "-workbench.action.keybindingsReference";
      }
      {
        "key" = "ctrl+k ctrl+r";
        "command" = "workbench.action.openRecent";
      }
      {
        "key" = "ctrl+r";
        "command" = "-workbench.action.openRecent";
      }
    ];
  };
}
