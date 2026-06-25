# The Daily Drivers(learn these first)

| Key                         | Does                                   | When                                        |
| --------------------------- | -------------------------------------- | ------------------------------------------- |
| ``K``                       | Show docs of thing under cursor        | "What does this function do?"⭐️             |
| ``grd``                     | Go to definition                       | "How is this defined?" -- jumps into source |
| ``<Control-o>/<Control-t>`` | Jump back / forward                    | After ``grd``, return where you were        |
| `Control-Space`             | Trigger completion (_==insert mode==_) | "What functions/type exist here?"⭐️         |
| ``<leader>f``               | Format file                            | After messy edits (runs goimports)          |
| `gra`                       | Code action (auto-fix)                 | When you see a diagnostic / error underline |
> These 6 aline covers 80% of my Go workflow. 

# Finding Things (Telescope)

| Key                  | Finds                           | When                               |
| -------------------- | ------------------------------- | ---------------------------------- |
| ``<leader>sf``       | __Files__ by name               | Open any file fast                 |
| ``<leader>sg``       | __Grep__- text in whole project | "Where is this string/function?"⭐️ |
| ``<leader>sw``       | Word under cursor, project-wide | Cursor on a name -> find all uses  |
| ``<leader><leader>`` | Open buffers                    | Switch between open files          |
| ``<leader>sr``       | Resume last search              | Reopen your last grep              |
| `<leader>/`          | fuzzy find in the current dir   |                                    |
# Reading Code & Docs 

| Key            | Does                         | When                                     |
| -------------- | ---------------------------- | ---------------------------------------- |
| `gO`           | symbols in __this file__     | "Table of contents" of current file ⭐️   |
| `gW`           | Symbols in __whole project__ | Find a function across the codebase      |
| `grr`          | Find all references          | "Where is this used?" before changing it |
| `grt`          | Go to __type__ definition    | "What type is this variable?"            |
| ``<leader>sh`` | Search Neovim help docs      | Learning vim/plugin features             |

# Movement (this is where speed comes from)

| Key       | Moves                                          | Tip                                   |
| --------- | ---------------------------------------------- | ------------------------------------- |
| `w` /`b`  | Word forward / back                            |                                       |
| `}`/`{`   | Paragraph / block jump                         | Fast vertical travel                  |
| `gg`/`G`  | Top / Bottom of file                           |                                       |
| `%`       | Matching bracket (<->)                         | Great for code blocks                 |
| `*`       | Next occurrence of word under cursor           | Quick find of string under the cursor |
| `f<char>` | Jump to next `<char>` on line Jump **forward** | `f(` jumps to next paren              |
| `F<char>` | Jump to backward                               |                                       |
# Editing(the vim superpowers)

| Key               | Does                 | Example                     |
| ----------------- | -------------------- | --------------------------- |
| `ciw`             | Change inner word    | cursor on word -> retype it |
| `ci"`             | Change inside quotes | Cursor anywhere in "..."    |
| `ci(`             | Change inside parens | Rewrite function args       |
| `dd`/`yy`         | Delete / copy line   |                             |
| `.`               | Repeat last edit     | The most underrated key ⭐️  |
| `u`/`<Control-r>` | Undo / redo          |                             |
# Windows & Diagnostics

| Key               | Does                               |
| ----------------- | ---------------------------------- |
| `:vs`             | splits the screen                  |
| `Control-h/j/k/l` | Move between split windows         |
| `<leader>q`       | Open all errors in a list          |
| `<leader>sd`      | Search diagnostics (Telescope)     |
| `grn`             | Rename symbol everywhere           |
| `<leader>th`      | Toggle inlay hits (inferred types) |

# The 3 Workflows (My productie)
1. __"Understanding a Go Package"__ 
	- _type_: http. -> `<control-leader>` (see all the functions)
	- _hover_: `K` (read the doc inline)
	- _drive_: `grd` (jump into stdlib source)
	- _back_: `<control-o` (return to your code)
2. "Find and fix something"
	- `<leader>sg` -> grep for it across project 
	- `grd` -> jump to definition 
	- `ciw` / `ci(` -> edit it 
	- `<leader>f` -> format
3. "Read an unfamiliar file"
	- `gO` -> See all functions / types (the outline)
	- `grd` on each ->dive into the interesting ones
	- `<control-o>` -> pop back out

