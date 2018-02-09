;;; camel-spell-test.el --- tests for camel-spell -*- lexical-binding: t -*-

;;; Commentary:

;; Tests for camel-spell.el functionality.

;;; Code:

(eval-when-compile
  (require 'cl))

(require 'camel-spell)

(ert-deftest camel-spell-test/break-string ()
  "Test `camel-spell-break-string'."
  (cl-loop for (input expected) in
           '(("" nil)
             ("a" ("a"))
             ("abc" ("abc"))
             ("aB" ("a" "B"))
             ("aBB" ("a" "BB"))
             ("fooBarBaz" ("foo" "Bar" "Baz"))
             ("fooHTMLBaz" ("foo" "HTML" "Baz"))
             ("fooBarHTML" ("foo" "Bar" "HTML"))
             ("FOObarBaz" ("FOO" "bar" "Baz")))
           do
           (should (equal (camel-spell-break-string input) expected))))

(provide 'camel-spell-test)
;;; camel-spell-test.el ends here
