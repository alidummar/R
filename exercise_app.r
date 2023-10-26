# Advanced Weekly Workout Routine Generator

set.seed(456)  # Set seed for reproducibility

# Define muscle groups and exercises
muscle_groups <- c("Cardio", "Upper Body", "Lower Body", "Core")

exercises <- list(
  Cardio = c("Running", "Cycling", "Jump Rope"),
  "Upper Body" = c("Push-ups", "Pull-ups", "Bicep Curls", "Shoulder Press"),
  "Lower Body" = c("Squats", "Lunges", "Leg Press", "Deadlifts"),
  Core = c("Planks", "Crunches", "Russian Twists", "Hanging Leg Raises")
)

# Define exercise types
exercise_types <- c("Strength", "Endurance")

# Generate a weekly workout routine for a month (4 weeks)
for (week in 1:4) {
  cat("Week", week, ":\n")
  for (day in 1:7) {
    muscle_group <- sample(muscle_groups, 1)
    exercise_type <- sample(exercise_types, 1)
    
    if (exercise_type == "Cardio") {
      exercise <- sample(exercises[[muscle_group]], 1)
      cat("  Day", day, ":", muscle_group, "-", exercise, " (", exercise_type, ")\n")
    } else {
      strength_exercise <- sample(exercises[[muscle_group]], 1)
      sets <- sample(3:5, 1)  # Randomly choose 3, 4, or 5 sets
      repetitions <- sample(8:12, 1)  # Randomly choose 8 to 12 repetitions
      cat("  Day", day, ":", muscle_group, "-", strength_exercise, " (", exercise_type, ")\n")
      cat("    Sets:", sets, "\n")
      cat("    Repetitions:", repetitions, "\n")
    }
  }
  cat("\n")
}
