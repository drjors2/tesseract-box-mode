(define-derived-mode tessbox-mode
	text-mode "TesseractBox"
	"Major mode for Tesseract Box editing."
	;; (setq case-fold-search nil)
	(make-variable-buffer-local 'post-self-insert-hook)
	(add-hook 'post-self-insert-hook 'tess-next)
	)

(defun tess-next ()
	(delete-char 1)
	(forward-line)
	)


;; END --------------------------------------------------------------------------------
