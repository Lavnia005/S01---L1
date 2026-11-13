(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$~,2f por grama - Classificacao: ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Maomao vai testar esta erva em si mesma antes."
      "Esta erva esta liberada para o paciente."))

(defun main ()
  (let ((estoque
          (list
           (make-erva :nome "Camomila"
                      :preco-por-grama 2.50
                      :toxicidade 1)
           (make-erva :nome "Dedaleira"
                      :preco-por-grama 8.00
                      :toxicidade 5)
           (make-erva :nome "Aconito"
                      :preco-por-grama 12.00
                      :toxicidade 9))))

    (format t "--- Estoque de Ervas ---~%")
    (dolist (erva estoque)
      (format t "~a~%" (descreve-erva erva))
      (format t "~a~%~%" (aviso erva)))

    (format t "Preco de uma dose de 3 gramas de ~a: R$~,2f~%"
            (erva-nome (car estoque))
            (preco-da-dose (car estoque) 3))))

(main)
