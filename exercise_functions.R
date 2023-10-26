# exercise_functions.R

# Function to randomly select a specified number of exercises from a muscle group
select_random_exercises <- function(muscle_group, exercises, num_exercises) {
  sample(exercises[[muscle_group]], num_exercises)
}

# Function to generate a strength exercise with a specified number of sets and repetitions
generate_strength_exercise <- function(muscle_group, exercises) {
  strength_exercise <- sample(exercises[[muscle_group]], 1)
  sets <- sample(3:5, 1)  # Randomly choose 3, 4, or 5 sets
  repetitions <- sample(8:12, 1)  # Randomly choose 8 to 12 repetitions
  return(list(exercise = strength_exercise, sets = sets, repetitions = repetitions))
}

# Function to generate a random workout
generate_workout <- function(muscle_groups, exercises, exercise_types) {
  workout <- list()
  
  for (muscle_group in muscle_groups) {
    exercise_type <- sample(exercise_types, 1)
    
    if (exercise_type == "Cardio") {
      exercises_selected <- select_random_exercises(muscle_group, exercises, 1)
      workout[[muscle_group]] <- list(exercise_type = exercise_type, exercises = exercises_selected)
    } else {
      strength_exercise <- generate_strength_exercise(muscle_group, exercises)
      workout[[muscle_group]] <- list(exercise_type = exercise_type, strength_exercise = strength_exercise)
    }
  }
  
  return(workout)
}
