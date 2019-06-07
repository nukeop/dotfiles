(defface mode-base
  '((t
     :inherit default
     ))
  "Basic mode line face"
  :group 'basic-faces
  )

(defface mode-green
  '((t
     :foreground "#98be65"
     :background "#3f6d54"
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-black-green
  '((t
     :foreground "#98be65"
     :background "#22252c"
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-red
  '((t
     :foreground "#ff6c6b"
     :background "#744a5b"
     ))
  "Red mode segment"
  :group 'basic-faces
  )

(defface mode-blue
  '((t
     :inherit font-lock-variable-name-face
     :background "#4e5079"
     ))
  "Blue mode segment"
  :group 'basic-faces
  )

(defface mode-yellow
  '((t
     :foreground "#ffeaa7"
     :background "#fdcb6e"
     ))
  "Yellow mode segment"
  :group 'basic-faces
  )

(defface mode-orange
  '((t
     :foreground "#ddbd78"
     :background "#4a473d"
     ))
  "Orange mode segment"
  :group 'basic-faces
  )

(defface mode-purple
  '((t
     :foreground "#c678dd"
     :background "#48384c"
     ))
  "Purple mode segment"
  :group 'basic-faces
  )

(defface mode-black
  '((t
     :foreground "#3e4451"
     :background "#24282f"
     ))
  "Black mode segment"
  :group 'basic-faces
  )

(defface mode-white
  '((t
     :foreground "#abb2bf"
     :background "#ccd4e3"
     ))
  "White mode segment"
  :group 'basic-faces
  )

(set-face-attribute 'mode-line nil
                    :underline nil
		                )

(set-face-attribute 'mode-line-inactive nil
                    :inherit font-lock-comment-face
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
     :inherit 'font-lock-function-name-face
     ))
  "Directory name in mode line"
  :group 'basic-faces
  )
