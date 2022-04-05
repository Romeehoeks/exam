######################
# CREATE PIVOT TABLE #
######################

# create pivot table
df_pivot <- df_grouped %>% dcast(date ~ neighbourhood, fun.aggregate = sum, value.var = "num_reviews")

write.csv(df_pivot, "../../gen/analysis/input/df_pivot", row.names = FALSE)
