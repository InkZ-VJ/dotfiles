Nvim Config inspired by [Kickstart neovim](https://github.com/nvim-lua/kickstart.nvim)

* New neovim users
* Colemak users

>**Checkhealth**

run command checkhealth to see each package may require some dependency like `rust cargo fzf fd npm node`


---
>**CHANGE THEME**

you can change theme by 

1. add file in `lazy/theme/${themeName}.lua` then add installation to file. You can see example in others theme that I already installed
2. change theme by change lazy section in `init.lua` from `'lazy.theme.nightfox'` to `lazy.theme.${themeName}`

---
>**COLEMAK REMAP**

|colemak| querty | desription|
|----|----|----|
|`h`|`h`|left|
|`n`|`j`|up|
|`e`|`k`|down|
|`i`|`l`|right|
|`j`|`e`|jump to the end of word|
|`k`|`n`|last search downwards|
|`l`|`i`|switch to insert mode at before cursor|
|`K`|`N`|last search upward|
|`L`|`I`|switch to insert mode at begin line|
|`H`|`0`|Move to first char of line|
|`I`|`$`|Move to end line|
---
**Caution** remap your vim motion to new one

### Ex
 * `ci(` to `cl(` : erase every thing in `( )` and switch to insert mode
 * `vi{` to `vl{` : switch to visual mode and select all in `{ }` 
 * ...

>**Basic Keymap**

**diagnosis**
|Key|Description|
|----|----|
|`[`d|move to previous diagnosis|
|`]`d|move to next diagnosis|
|`␣`e|Make diagnosis float|

**peek**
you can use with go to defenition ␣dd in fzf defenition
|Key|Description|
|----|----|
|`K`|peek variable or function defenetion|
|`KK`|peek variable or function defenetion and move in description|
|`q`|quit from peeking|

**format**
|Key|Description|
|----|----|
|`␣`fp|format file with prettierd|

---
>** File Explore **

|Key|Description|
|----|----|
|`␣`pv|Explore file|
|`␣`nt|Open Nvim tree|
|`␣`ft|Move cursor to Nvim tree|
|`-`|Open Oil Nvim|

---
>**Harpoon**

This keymap are suit with my personal layout(Colemak). you can change keymap to hjkl for qwerty
|Key|Definition|
|----|----|
|`␣`a|Pin current file to Harpoon|
|`Ctrl`+`o`|Open Harpoon Dashboard|
|`Ctrl`+`h`|Move to index 0 in Harpoon Dashboard|
|`Ctrl`+`n`|Move to index 1 in Harpoon Dashboard|
|`Ctrl`+`e`|Move to index 2 in Harpoon Dashboard|
|`Ctrl`+`i`|Move to index 3 in Harpoon Dashboard|

---
>**FUZZY FINDER**

`␣` : Spacebar symbols
|Key|Description|
|----|----|
|`␣`s/|[S]earch [/] in Open Files|
|`␣`ss|[S]earch [S]elect Telescope|
|`␣`gf|Search [G]it [F]iles|
|`␣`sf|[S]earch [F]iles|
|`␣`sh|[S]earch [H]elp|
|`␣`sw|[S]earch current [W]ord|
|`␣`sg|[S]earch by [G]rep|
|`␣`sG|[S]earch by [G]rep on Git Root|
|`␣`sd|[S]earch [D]iagnostics|
|`␣`sr|[S]earch [R]esume|
|`␣`dd|[D]efinitions same as `gd` go to defenision|
|`␣`pp|[P]revious file|
|`␣`ff|[F]ormat with Prittier|

---
>**Golang Ultimate Key**

`␣`ee : auto type err handling
```go
if err != nil {
    return err
}
```

`␣`ne : auto type err handling
```go
if err != nil {
    return nil, err
}
```

