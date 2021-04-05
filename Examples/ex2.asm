; C code: f = (g + h) – (i + j);

; ARM Assembly
ADD t0, g, h ; temporary variable t0 contains g + h
ADD t1, i, j ; temporary variable t1 contains i + j
SUB f, t0, t1 ; f gets t0 - t1, which is (g + h) - (i + j)