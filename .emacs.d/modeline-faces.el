(defface mode-base
  '((t
     :background "#2c3e50"
     :box (:line-width 8 :color "#2c3e50")
     ))
  "Basic mode line face"
  :group 'basic-faces
  )

(defface mode-green
  '((t
     :foreground "#ecf0f1"
     :background "#27ae60"
     :box (:line-width 8 :color "#27ae60")
     ))
  "Green mode segment"
  :group 'basic-faces
  )

(defface mode-red
  '((t
     :foreground "#ecf0f1"
     :background "#c0392b"
     :box (:line-width 8 :color "#c0392b")
     ))
  "Red mode segment"
  :group 'basic-faces
  )

(defface mode-blue
  '((t
     :foreground "#ecf0f1"
     :background "#2980b9"
     :box (:line-width 8 :color "#2980b9")
     ))
  "Blue mode segment"
  :group 'basic-faces
  )

(defface mode-yellow
  '((t
     :foreground "#f1c40f"
     :background "#f39c12"
     :box (:line-width 8 :color "#f39c12")
     ))
  "Yellow mode segment"
  :group 'basic-faces
  )

(defface mode-orange
  '((t
     :foreground "#e67e22"
     :background "#d35400"
     :box (:line-width 8 :color "#d35400")
     ))
  "Orange mode segment"
  :group 'basic-faces
  )

(defface mode-purple
  '((t
     :foreground "#ecf0f1"
     :background "#8e44ad"
     :box (:line-width 8 :color "#8e44ad")
     ))
  "Purple mode segment"
  :group 'basic-faces
  )

(defface mode-teal
  '((t
     :foreground "#ecf0f1"
     :background "#16a085"
     :box (:line-width 8 :color "#16a085")
     ))
  "Teal mode segment"
  :group 'basic-faces
  )

(defface mode-black
  '((t
     :foreground "#ecf0f1"
     :background "#2c3e50"
     :box (:line-width 8 :color "#2c3e50")
     ))
  "Black mode segment"
  :group 'basic-faces
  )

(defface mode-white
  '((t
     :foreground "#2c3e50"
     :background "#ecf0f1"
     :box (:line-width 8 :color "#ecf0f1")
     ))
  "White mode segment"
  :group 'basic-faces
  )

(set-face-attribute 'mode-line nil
		    :foreground "#ecf0f1"
		    :background "#2c3e50"
		    :box '(:line-width 8 :color "#2c3e50")
		    )

(set-face-attribute 'mode-line-inactive nil
		    :foreground "#95a5a6"
		    :background "#7f8c8d"
		    :box '(:line-width 8 :color "#7f8c8d")
		    )

(defface mode-line-buffer-name
  '((t
     :inherit 'mode-black
     ))
  "Buffer name face"
  :group 'basic-faces
  )

(defface mode-line-dir-name
  '((t
     :inherit 'mode-black
     :foreground "#2980b9"
     ))
  "Directory name in mode line"
  :group 'basic-faces
  )
