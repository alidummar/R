# visualize_progress.R

# Function to create a line plot of the total number of repetitions over time
visualize_repetitions_progress <- function(monthly_workouts) {
  total_repetitions <- sapply(monthly_workouts, calculate_total_repetitions)
  
  plot(1:4, total_repetitions, type = "o", col = "blue", xlab = "Week", ylab = "Total Repetitions",
       main = "Workout Progress Over Time", ylim = c(0, max(total_repetitions) + 10))
}
