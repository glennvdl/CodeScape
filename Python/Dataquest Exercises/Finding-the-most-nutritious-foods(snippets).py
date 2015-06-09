#Dataquest.io - This is not a fulle exercise, only a collection of code snippets that serve as a reminder on how panda operators work

# Import pandas
import pandas
food_info = pandas.read_csv("food_info.csv")

#indexing operators for pandas
second_row = food_info.iloc[1,:]
tenth_row = food_info.iloc[9,:]

#index a series
first_20_items_in_second_row = food_info.iloc[1,:][0:20]
first_10_items_in_first_column = food_info.iloc[:,0][0:10]

#Get names of all the columns
print(list(food_info.columns.values))

#Call columns by name
sodium_column = food_info["Sodium_(mg)"]
saturated_fat = food_info["FA_Sat_(g)"]
cholesterol = food_info["Cholestrl_(mg)"]

#Getting multiple column by name
column_list3 = ["Selenium_(mcg)", "Thiamin_(mg)"]
selenium_and_thiamin = food_info[column_list3]

#Order by column
descending_sodium = food_info.sort(["Sodium_(mg)"], ascending=[False])
ascending_vitamin_c = food_info.sort(["Vit_C_(mg)"], ascending=[True])

#Multi-column sort
ascending_sugar_then_descending_zinc = food_info.sort(["Sugar_Tot_(g)","Zinc_(mg)"], ascending = [True, False])
descending_cholesterol_then_ascending_protein = food_info.sort(["Cholestrl_(mg)","Protein_(g)"], ascending = [False,True])

#Normalizing values by divinding the column by its max values
normalized_vitamin_c = food_info["Vit_C_(mg)"]/food_info["Vit_C_(mg)"].max()
normalized_zinc = food_info["Zinc_(mg)"]/food_info["Zinc_(mg)"].max()

#Building a better index - Client is interested twice as much in having more protein than having saturated_fat
protein_reworked = food_info["Protein_(g)"]/food_info["Protein_(g)"].max()
fat_reworked = food_info["Lipid_Tot_(g)"]/food_info["Lipid_Tot_(g)"].max()
better_protein_rating = (2 * protein_reworked) - fat_reworked

#Normalising all columns
column_count = len(all_columns)
all_columns = all_columns[2:column_count]
for column in all_columns:
    food_info[column] = food_info[column] / food_info[column].max()

#Sums in pandas
column_list = ['Fiber_TD_(g)', 'Sugar_Tot_(g)']

# Let's sum the amount of fiber and sugar in each of the foods. (axis = 1)
row_total = food_info[column_list].sum(axis=1)
# This gives us a sum for each row in the data
print(row_total)

# Let's sum up the total amount of fiber and sugar across all the foods. (axis = 0)
column_total = food_info[column_list].sum(axis=0)
print(column_total)

#Sum total amount of vitamins per product
vitamin_columns = ['Calcium_(mg)', 'Iron_(mg)', 'Magnesium_(mg)', 'Phosphorus_(mg)', 'Potassium_(mg)', 'Sodium_(mg)', 'Zinc_(mg)', 'Copper_(mg)', 'Manganese_(mg)', 'Selenium_(mcg)', 'Vit_C_(mg)', 'Thiamin_(mg)', 'Riboflavin_(mg)', 'Niacin_(mg)', 'Vit_B6_(mg)', 'Vit_B12_(mcg)', 'Vit_A_IU', 'Vit_A_RAE', 'Vit_E_(mg)', 'Vit_D_mcg', 'Vit_D_IU', 'Vit_K_(mcg)']
vitamin_totals = food_info[vitamin_columns].sum(axis=1)

#Creating an index based on user requirements
nutritional_rating = (food_info["vitamin_totals"]*3) + (food_info["Lipid_Tot_(g)"]*(-2)) + (food_info["Protein_(g)"]*3) + (food_info["Sugar_Tot_(g)"] * (-1)) + (food_info["Fiber_TD_(g)"]) + (food_info["Cholestrl_(mg)"] * (-2))

#Find the three most nutritious foods
sorted_food_info = food_info.sort(["nutritional_rating"], ascending=[False])
most_nutritious_foods = sorted_food_info["Shrt_Desc"].iloc[0:3]
most_nutritious_foods = list(most_nutritious_foods)
print(most_nutritious_foods)

#Find the three least nutritious foods
sorted_food_info = food_info.sort(["nutritional_rating"], ascending=[True])
least_nutritious_foods = sorted_food_info["Shrt_Desc"].iloc[0:3]
least_nutritious_foods = list(least_nutritious_foods)