(defface mode-base
  '((t
     :background "#2d3436"
     :box (:line-width 8 :color "#2d3436")
     ))
  "Basic mode line face"
  :group 'basic-faces
  )

(defface mode-green
  '((t
     :foreground "#55efc4"
     :background "#00b894"
     :box (:line-width 8 :color "#00b894")
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-black-green
  '((t
     :foreground "#55efc4"
     :background "#2d3436"
     :box (:line-width 8 :color "#2d3436")
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-red
  '((t
     :foreground "#ff7675"
     :background "#d63031"
     :box (:line-width 8 :color "#d63031")
     ))
  "Red mode segment"
  :group 'basic-faces
  )

(defface mode-blue
  '((t
     :foreground "#74b9ff"
     :background "#0984e3"
     :box (:line-width 8 :color "#0984e3")
     ))
  "Blue mode segment"
  :group 'basic-faces
  )

(defface mode-yellow
  '((t
     :foreground "#ffeaa7"
     :background "#fdcb6e"
     :box (:line-width 8 :color "#fdcb6e")
     ))
  "Yellow mode segment"
  :group 'basic-faces
  )

(defface mode-orange
  '((t
     :foreground "#fab1a0"
     :background "#e17055"
     :box (:line-width 8 :color "#e17055")
     ))
  "Orange mode segment"
  :group 'basic-faces
  )

(defface mode-purple
  '((t
     :foreground "#a29bfe"
     :background "#6c5ce7"
     :box (:line-width 8 :color "#6c5ce7")
     ))
  "Purple mode segment"
  :group 'basic-faces
  )

(defface mode-teal
  '((t
     :foreground "#81ecec"
     :background "#00cec9"
     :box (:line-width 8 :color "#00cec9")
     ))
  "Teal mode segment"
  :group 'basic-faces
  )

(defface mode-black
  '((t
     :foreground "#dfe6e9"
     :background "#2c3e50"
     :box (:line-width 8 :color "#2c3e50")
     ))
  "Black mode segment"
  :group 'basic-faces
  )

(defface mode-white
  '((t
     :foreground "#2d3436"
     :background "#dfe6e9"
     :box (:line-width 8 :color "#dfe6e9")
     ))
  "White mode segment"
  :group 'basic-faces
  )

(set-face-attribute 'mode-line nil
		    :foreground "#dfe6e9"
		    :background "#2d3436"
		    :box '(:line-width 8 :color "#2d3436")
		    )

(set-face-attribute 'mode-line-inactive nil
		    :foreground "#636e72"
		    :background "#2d3436"
		    :box '(:line-width 8 :color "#2d3436")
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
     :foreground "#74b9ff"
     ))
  "Directory name in mode line"
  :group 'basic-faces
  )
