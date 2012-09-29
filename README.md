# Jazz theme for Emacs 24

Jazz is a warm dark color theme for Emacs 24 inspired by [zenburn](https://github.com/bbatsov/zenburn-emacs) color theme.
The theme uses Emacs 24 theming support and is tested only with GUI version of Emacs.

# Installation

## Manual

Download `jazz-theme.el` to the directory `~/.emacs.d/themes/` and add this to your `.emacs` (or `.emacs.d/init.el` or whatever init file you use):

```lisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```

Now you can load the theme like this:

`M-x load-theme RET jazz`

## el-get

The Jazz theme can also be installed with [el-get](https://github.com/dimitri/el-get) with the following recipe:

```lisp
(:name jazz-theme
       :description "A warm dark color theme for Emacs 24"
       :type github
       :pkgname "donderom/jazz-theme"
       :prepare (progn
                  (add-to-list 'custom-theme-load-path default-directory)))
```

To load it automatically on Emacs startup add this to your init file:

```lisp
(load-theme 'jazz t)
```

# Screenshot

![Jazz theme with some Ruby](https://github.com/donderom/jazz-theme/raw/master/screenshot.png)

# Contribution

You are more than welcome to send a pull request for any improvement you think is worth adding to the theme
(we're colour-nazi after all, aren't we? :)).
