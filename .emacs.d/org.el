(setq
 org-directory "~/Documents/org"
 org-default-notes-file "~/Documents/org/notes.org"
 org-fontify-done-headline t
 org-fontify-whole-heading-line t
 org-fontify-whole-heading-line t
 org-src-fontify-natively t
 org-src-tab-acts-natively t
 org-indent-indentation-per-level 2
 org-tags-column 0
 org-todo-keywords '(
                     (sequence "[ ](t)" "[-](p)" "[?](m)" "|" "[X](d)")
                     (sequence "TODO(T)" "IN PROGRESS(P)" "|" "IN REVIEW(R)" "DONE(D)" )
                     )
 org-todo-keyword-faces '(
                           ("TODO" . (:foreground "OrangeRed1" :background "OrangeRed4" :weight bold))
                           ("IN PROGRESS" . (:foreground "GoldenRod1" :background "Goldenrod4" :weight bold))
                           ("IN REVIEW" . (:foreground "DeepSkyBlue1" :background "DeepSkyBlue4" :weight bold))
                           ("DONE" . (:foreground "SpringGreen1" :background "SpringGreen4" :weight bold))
                           )
 org-bullets-bullet-list '("◉" "●" "⚫" "∙")
 )
