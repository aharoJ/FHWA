

1. **Moving Around**:
   - `h`, `j`, `k`, `l`: Left, down, up, and right navigation in normal mode.
   - `w`: Move to the beginning of the next word.
   - `b`: Move to the beginning of the previous word.
   - `gg`: Go to the first line of the file.
   - `G`: Go to the last line of the file.
   - `Ctrl + f`: Move forward one screen.
   - `Ctrl + b`: Move backward one screen.
   - `{`: Move to the previous paragraph.
   - `}`: Move to the next paragraph.

2. **Editing**:
   - `i`: Enter insert mode before the cursor.
   - `I`: Enter insert mode at the beginning of the line.
   - `a`: Enter insert mode after the cursor.
   - `A`: Enter insert mode at the end of the line.
   - `o`: Insert a new line below the current line and enter insert mode.
   - `O`: Insert a new line above the current line and enter insert mode.
   - `r`: Replace the character under the cursor with the following character.
   - `R`: Enter replace mode to overwrite text.

3. **Copy, Cut, and Paste**:
   - `yy` or `Y`: Copy (yank) the current line.
   - `yw`: Copy (yank) the current word.
   - `p`: Paste the copied/cut text after the cursor.
   - `P`: Paste the copied/cut text before the cursor.
   - `dd`: Cut (delete) the current line.
   - `dw`: Cut (delete) the current word.

4. **Undo and Redo**:
   - `u`: Undo the last change.
   - `Ctrl + r`: Redo the previously undone change.

5. **Search and Replace**:
   - `/`: Search forward for a specific term.
   - `?`: Search backward for a specific term.
   - `n`: Move to the next occurrence of the search term.
   - `N`: Move to the previous occurrence of the search term.
   - `:s/old/new`: Replace the first occurrence of 'old' with 'new' in the current line.
   - `:%s/old/new/g`: Replace all occurrences of 'old' with 'new' in the entire file.
   - `:s/old/new/gc`: Replace all occurrences with confirmation.

6. **Tabs and Windows**:
   - `:tabnew` or `:tabe`: Open a new tab.
   - `gt`: Move to the next tab.
   - `gT`: Move to the previous tab.
   - `:vsp` or `:vsp filename`: Open a vertical split.
   - `:sp` or `:sp filename`: Open a horizontal split.
   - `Ctrl + ww`: Cycle through open windows.

7. **Miscellaneous**:
   - `.`: Repeat the last command.
   - `:q`: Quit Vim.
   - `:w`: Save the file.
   - `:q!`: Quit Vim without saving changes.
