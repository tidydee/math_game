# Math Game Planning

## Methods:
### Game Start
  * P1 Name
  * P2 Name

### Equation Generator
  * Random + Random = evalaute answer

### Equation Validator
  * Takes instance variables from "Equation Generator" and validates it against user input.  

### Player Turn Order
  * P1 to P2

### Player Question
  * Equation vs. PLayer Answer
    ** Use string Interprelation " #{} "

### Right/Wrong
  * If true -> Equation Generator
  * If false -> PLayer Minus Life

### Player Minus Life
  * Player Life -1

### Player Profiles
  * P1 = 3 (On Start)
  * P2 = 3 (On Start)

### Display Player Score
  * P1 Lives
  * P2 Lives

### Life Evaluator
  * If P1 Life > 0 -> Equation Generator
  * If P2 Life = 0 -> Game Over

### Game Over
  * P1 Life vs. P2 Life
    * If P1 > P2 Life
        -> P1 wins 
      else
        P2 wins
      end
  * ------------------>>>> Game Start    
