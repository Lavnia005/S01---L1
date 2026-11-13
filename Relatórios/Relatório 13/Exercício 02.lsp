(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - Bioma: ~a - Profundidade: ~a metros - Perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not
   (lambda (c) (> (criatura-profundidade c) metros))
   catalogo))

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peixe-bolha"
                  :bioma "Recifes seguros"
                  :profundidade 80
                  :perigo :inofensiva)
   (make-criatura :nome "Stalker"
                  :bioma "Floresta de algas"
                  :profundidade 120
                  :perigo :agressiva)
   (make-criatura :nome "Reaper Leviathan"
                  :bioma "Dunas"
                  :profundidade 250
                  :perigo :leviata)
   (make-criatura :nome "Cuddlefish"
                  :bioma "Arvore de cogumelos"
                  :profundidade 150
                  :perigo :inofensiva)))
                  
(defun main ()
  (format t "--- Catalogo de Criaturas ---~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))

  (let* ((profundidade-minima 100)
         (criaturas-profundas
           (mapcar #'descreve-criatura
                   (abaixo-de profundidade-minima *catalogo*))))
    (format t "~%--- Criaturas abaixo de ~a metros ---~%"
            profundidade-minima)
    (dolist (texto criaturas-profundas)
      (format t "~a~%" texto))

    (format t "Quantidade de criaturas: ~a~%"
            (length criaturas-profundas))))

(main)
