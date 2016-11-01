# Emacs Camel Spell - Spellchecking for camelCase words.

Spell check camelcased words with the normal ispell and flyspell commands.


<!-- # Installation -->

<!-- ## With MELPA -->

<!-- First, add the package repository: -->

<!-- ```lisp -->
<!-- (add-to-list 'package-archives -->
<!--              '("melpa" . "https://melpa.org/packages/") t) -->
<!-- ``` -->

<!-- Then install camel-spell: -->

<!-- <kbd>M-x package-install RET camel-spell RET</kbd> -->

# Usage


# Developing

Patches are always welcome.  To submit a patch, use something like the following
workflow.

``` sh
git clone https://github.com/jschaf/camel-spell.git
cd camel-spell
git checkout -b MY-NEW-FIX
```

Implement your fix.  Please use [angular-style commit messages](https://github.com/angular/angular.js/blob/master/CONTRIBUTING.md#-git-commit-guidelines).

Ensure that all Emacs-lisp code is lint-clean with flycheck.

Test your fix with [Cask](https://github.com/cask/cask).  You can install cask with:

``` sh
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
export PATH="/home/joe/.cask/bin:$PATH"

```

Test your fixes with the Emacs Regression Test runner.


```
cask exec ert-runner
```

Send your commits for review.

```
git push origin MY-NEW-FIX
```

Create a pull request with the normal Github user interface.
