# analyze_workouts.R

# Function to calculate the total number of cardio minutes
calculate_cardio_minutes <- function(monthly_workouts) {
  total_cardio_minutes <- 0
  
  for (week in monthly_workouts) {
    for (day in week) {
      if (!is.null(week[[day]]$exercises)) {
        cardio_exercises <- week[[day]]$exercises
        for (exercise in cardio_exercises) {
          if (exercise %in% c("Running", "Cycling", "Jump Rope")) {
            total_cardio_minutes <- total_cardio_minutes + 30  # Assuming 30 minutes per cardio exercise
          }
        }
      }
    }
  }
  
  return(total_cardio_minutes)
}
