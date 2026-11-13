(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)
          :initial-value 0))

(defun purifica (g quantidade)
  (make-garota-magica
   :nome (garota-magica-nome g)
   :escuridao (if (>= quantidade (garota-magica-escuridao g))
                  0
                  (- (garota-magica-escuridao g) quantidade))
   :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((grupo
           (list
            (make-garota-magica :nome "Madoka"
                                :escuridao 35
                                :bruxas 4)
            (make-garota-magica :nome "Homura"
                                :escuridao 60
                                :bruxas 8)
            (make-garota-magica :nome "Sayaka"
                                :escuridao 75
                                :bruxas 3)))
         (nova-garota
           (make-garota-magica :nome "Mami"
                               :escuridao 20
                               :bruxas 5))
         (novo-grupo (cons nova-garota grupo))
         (original (car grupo))
         (purificada (purifica original 20)))

    (format t "--- Grupo original ---~%")
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%"
            (total-de-bruxas grupo))

    (format t "~%--- Grupo com a nova garota ---~%")
    (format t "Escuridao do grupo original: ~a~%"
            (escuridao-total grupo))
    (format t "Escuridao do novo grupo: ~a~%"
            (escuridao-total novo-grupo))
            
    (format t "~%--- Purificacao de ~a ---~%"
            (garota-magica-nome original))
    (format t "Escuridao da original: ~a~%"
            (garota-magica-escuridao original))
    (format t "Escuridao da nova garota: ~a~%"
            (garota-magica-escuridao purificada))))
            
(main)
