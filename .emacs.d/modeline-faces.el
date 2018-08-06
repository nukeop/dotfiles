(defface mode-base
  '((t
     :background "#22252c"
     :box (:line-width 6 :color "#22252c")
     ))
  "Basic mode line face"
  :group 'basic-faces
  )

(defface mode-green
  '((t
     :foreground "#98be65"
     :background "#3f6d54"
     :box (:line-width 6 :color "#3f6d54")
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-black-green
  '((t
     :foreground "#98be65"
     :background "#22252c"
     :box (:line-width 6 :color "#22252c")
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-red
  '((t
     :foreground "#ff6c6b"
     :background "#744a5b"
     :box (:line-width 6 :color "#744a5b")
     ))
  "Red mode segment"
  :group 'basic-faces
  )

(defface mode-blue
  '((t
     :foreground "#61afef"
     :background "#4e5079"
     :box (:line-width 6 :color "#4e5079")
     ))
  "Blue mode segment"
  :group 'basic-faces
  )

(defface mode-yellow
  '((t
     :foreground "#ffeaa7"
     :background "#fdcb6e"
     :box (:line-width 6 :color "#fdcb6e")
     ))
  "Yellow mode segment"
  :group 'basic-faces
  )

(defface mode-orange
  '((t
     :foreground "#ddbd78"
     :background "#4a473d"
     :box (:line-width 6 :color "#4a473d")
     ))
  "Orange mode segment"
  :group 'basic-faces
  )

(defface mode-purple
  '((t
     :foreground "#c678dd"
     :background "#48384c"
     :box (:line-width 6 :color "#48384c")
     ))
  "Purple mode segment"
  :group 'basic-faces
  )

(defface mode-black
  '((t
     :foreground "#3e4451"
     :background "#24282f"
     :box (:line-width 6 :color "#24282f")
     ))
  "Black mode segment"
  :group 'basic-faces
  )

(defface mode-white
  '((t
     :foreground "#abb2bf"
     :background "#ccd4e3"
     :box (:line-width 6 :color "#ccd4e3")
     ))
  "White mode segment"
  :group 'basic-faces
  )

(set-face-attribute 'mode-line nil
		    :foreground "#ccd4e3"
		    :background "#22252c"
		    :box '(:line-width 6 :color "#22252c")
		    )

(set-face-attribute 'mode-line-inactive nil
		    :foreground "#abb2bf"
		    :background "#24282f"
		    :box '(:line-width 6 :color "#24282f")
		    )

(defface mode-line-buffer-name
  '((t
     :inherit 'mode-line
     ))
  "Buffer name face"
  :group 'basic-faces
  )

(defface mode-line-dir-name
  '((t
     :inherit 'mode-line
     :foreground "#61afef"
     ))
  "Directory name in mode line"
  :group 'basic-faces
  )
