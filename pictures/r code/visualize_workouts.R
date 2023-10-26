# visualize_workouts.R

# Function to create a bar plot of the number of sets for each strength exercise
visualize_sets <- function(monthly_workouts) {
  strength_sets <- list()
  
  # Extract number of sets for each strength exercise
  for (week in monthly_workouts) {
    for (day in week) {
      if (!is.null(week[[day]]$strength_exercise)) {
        exercise <- week[[day]]$strength_exercise$exercise
        sets <- week[[day]]$strength_exercise$sets
        if (!is.null(strength_sets[[exercise]])) {
          strength_sets[[exercise]] <- strength_sets[[exercise]] + sets
        } else {
          strength_sets[[exercise]] <- sets
        }
      }
    }
  }
  
  # Create a bar plot
  barplot(unlist(strength_sets), main = "Number of Sets for Strength Exercises",
          xlab = "Strength Exercise", ylab = "Number of Sets", col = "blue", border = "black")
}
