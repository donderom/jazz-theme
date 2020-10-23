[![MELPA](http://melpa.org/packages/jazz-theme-badge.svg)](http://melpa.org/#/jazz-theme)

# Jazz theme for Emacs 24+

Jazz is a warm dark color theme for Emacs 24+ inspired by [zenburn](https://github.com/bbatsov/zenburn-emacs) color theme.
The theme uses Emacs 24+ theming support and is tested only with GUI version of Emacs.

# Installation

## use-package

```lisp
(use-package jazz-theme)
```

## package.el

jazz-theme is available in [MELPA](http://melpa.org) repository (instructions on adding the repo can be found [here](http://melpa.org/#/getting-started)).
With MELPA repo added the theme can be installed by:

`M-x package-install jazz-theme`

## el-get

The Jazz theme can also be installed with [el-get](https://github.com/dimitri/el-get) (the package is available via MELPA):

`M-x el-get-install RET jazz-theme RET`

The el-get recipe for the theme (if needed) would be the following though:

```lisp
(:name jazz-theme
       :description "A warm dark color theme for Emacs 24+"
       :type github
       :pkgname "donderom/jazz-theme"
       :minimum-emacs-version 24
       :prepare (add-to-list 'custom-theme-load-path default-directory))
```

## Manual

Download `jazz-theme.el` to the directory `~/.emacs.d/themes/` and add this to your `.emacs` (or `.emacs.d/init.el` or whatever init file you use):

```lisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```

Now you can load the theme like this:

`M-x load-theme RET jazz`

## Auto load

To load it automatically on Emacs startup add this to your init file:

```lisp
(load-theme 'jazz t)
```

# Screenshot

![Jazz theme with some Ruby](http://f.cl.ly/items/3O3v0h2m0r1W2U0a3g0z/screenshot.png)

# Contribution

You are more than welcome to send a pull request for any improvement you think is worth adding to the theme
(we're colour-nazi after all, aren't we? :)).
