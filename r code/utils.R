# utils.R

# Function to calculate the total number of repetitions in a workout
calculate_total_repetitions <- function(monthly_workouts) {
  total_repetitions <- 0
  
  for (week in monthly_workouts) {
    for (day in week) {
      if (!is.null(week[[day]]$strength_exercise)) {
        repetitions <- week[[day]]$strength_exercise$repetitions
        total_repetitions <- total_repetitions + repetitions
      }
    }
  }
  
  return(total_repetitions)
}
