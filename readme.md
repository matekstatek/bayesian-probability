# Bayesian probability of $P(A, \neg B, C | \neg D, \neg E)$ (or similar)
[![Build Status](https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1467711784/yplhmw1xjm2uy2y4ducw.png)](https://towardsdatascience.com/probability-concepts-explained-bayesian-inference-for-parameter-estimation-90e8930e5348)
## Assumptions
| Probability| Value |
| ------ | ------ |
|$P(A)$ |$0,8$|
|$P(B)$|$0,3$|
|$P(C\mid A,B)$|$0,9$|
|$P(C\mid  \neg A,B)$|$0,4$|
|$P(C\mid A, \neg B)$|$0,7$|
|$P(C\mid  \neg A, \neg B)$|$0,2$|
|$P(D\mid C)$|$0,2$|
|$P(D\mid  \neg C)$|$0,7$|

## $P(A, \neg B, C | \neg D, \neg E)$
$$P(A, \neg B, C | \neg D, \neg E)={P(A, \neg B, C, \neg  D, \neg E) \over P(\neg D, \neg E)}=$$ 

$${P(\neg E | \neg D) \cdot P(\neg D | C) \cdot P(C | A, \neg B) \cdot P(A) \cdot P(\neg B) \over 
P(\neg E | \neg D) \cdot P(\neg C)}=$$

$${P(\neg E | \neg D) \cdot P(\neg D | C) \cdot P(C | A, \neg B) \cdot P(A) \cdot P(\neg B) \over 
P(\neg E | \neg D) \cdot [P(\neg D | C) \cdot \textbf{P(C)} + P(\neg D | \neg C) \cdot P(\neg C)]}$$

### Need to calculate $P(C)$
## $P(C)$

$$\textbf{P(C)}=P(C|A,B) \cdot P(A)\cdot P(B)+P(C| \neg A,B)\cdot P( \neg A) \cdot P(B)+P(C|A, \neg B)\cdot P(A) \cdot P( \neg B)+P(C| \neg A, \neg B) \cdot P( \neg A) \cdot P( \neg B)=$$

$$P(C|A,B) \cdot P(A)\cdot P(B)+P(C| \neg A,B)\cdot [1-P(A)] \cdot P(B)+P(C|A, \neg B)\cdot P(A) \cdot [1-P(B)]+P(C| \neg A, \neg B) \cdot  [1-P(A)] \cdot  [1-P(B)]=$$

$$0,9 \cdot 0,8 \cdot 0,3+0,4 \cdot 0,2 \cdot 0,3+0,7 \cdot 0,8 \cdot 0,7+0,2 \cdot 0,2 \cdot 0,7=0,66$$

## $P(A, \neg B, C | \neg D, \neg E)$ continued
$$P(A, \neg B, C | \neg D, \neg E)={P(\neg E | \neg D) \cdot P(\neg D | C) \cdot P(C | A, \neg B) \cdot P(A) \cdot P(\neg B) \over 
P(\neg E | \neg D) \cdot [P(\neg D | C) \cdot P(C) + P(\neg D | \neg C) \cdot P(\neg C)]}=$$

$${[1-P(D | C)] \cdot P(C | A, \neg B) \cdot P(A) \cdot [1-P(B)] \over [1-P( D | C)] \cdot P(C) + [1-P(D | \neg C)] \cdot [1-P(C)]}=$$

$${0,8 \cdot 0,7 \cdot 0,8 \cdot 0,7 \over 0,8 \cdot 0,66+0,3 \cdot 0,34}={0,3136 \over 0,63} \approx 0,498$$

# Simulation
Simulation was made in matlab.
