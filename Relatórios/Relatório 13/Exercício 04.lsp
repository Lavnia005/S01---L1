(defstruct dominio
  nome
  elementos
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d)
     (bonus-elemental (dominio-elementos d))))

(defun rota (lista dificuldade-maxima)
  (let* ((dominios-disponiveis
           (remove-if-not
            (lambda (d)
              (<= (dominio-dificuldade d) dificuldade-maxima))
            lista))
         (textos
           (mapcar
            (lambda (d)
              (format nil "~a - Recompensa: ~,2f mora"
                      (dominio-nome d)
                      (recompensa-final d)))
            dominios-disponiveis)))
    textos))

(defun main ()
  (let* ((dominios
           (list
            (make-dominio :nome "Templo do Leao"
                          :elementos :pyro
                          :dificuldade 1
                          :mora 1000)
            (make-dominio :nome "Jardim Cecilia"
                          :elementos :hydro
                          :dificuldade 2
                          :mora 1500)
            (make-dominio :nome "Palacio Oculto"
                          :elementos :electro
                          :dificuldade 3
                          :mora 2000)
            (make-dominio :nome "Pico de Vindagnyr"
                          :elementos :cryo
                          :dificuldade 4
                          :mora 2500)
            (make-dominio :nome "Vale Lembrado"
                          :elementos :anemo
                          :dificuldade 5
                          :mora 3000)))
         (dificuldade-maxima 3)
         (copia (copy-dominio (car dominios))))
         
    (format t "--- Rota para dificuldade ate ~a ---~%"
            dificuldade-maxima)
    (dolist (texto (rota dominios dificuldade-maxima))
      (format t "~a~%" texto))

    (format t "~%Total de mora dos dominios: ~,2f~%"
            (reduce #'+
                    (mapcar #'recompensa-final dominios)
                    :initial-value 0))

    (format t "~%--- Copia de um dominio ---~%")
    (setf (dominio-mora copia) 5000)
    (format t "Mora da copia: ~a~%" (dominio-mora copia))
    (format t "Mora do original: ~a~%"
            (dominio-mora (car dominios)))))

(main)
