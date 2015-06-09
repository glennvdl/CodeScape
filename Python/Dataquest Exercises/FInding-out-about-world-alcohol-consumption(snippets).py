#Dataquest.io
#NOTE - This is not a full exerise. This only contains snippets of code that serve as a personal reminder.


#Importing numpy and reading in the file
import numpy
f = "world_alcohol.csv"
world_alcohol = numpy.genfromtxt(f, delimiter=",", dtype="U75", skip_header=1)

#Slicing matrices
country_algeria = world_alcohol[:,2][world_alcohol[:,2] == "Algeria"]
year_1987 = world_alcohol[:,0][world_alcohol[:,0] == "1987"]

#Slicing matrices
yemen_1987_boolean = (world_alcohol[:,2] == "Yemen") & (world_alcohol[:,0] == "1987")
yemen_1987 = world_alcohol[yemen_1987_boolean,:]

latvia_1989_wine_boolean = (world_alcohol[:,2] == "Latvia") & (world_alcohol[:,0] == "1989") & (world_alcohol[:,3] == "Wine")
latvia_1989_wine = world_alcohol[latvia_1989_wine_boolean,:]

#Replacing values in numpy arrays
world_alcohol[:,0][world_alcohol[:,0] == '1986'] = '2014'
world_alcohol[:,3] = 'Grog'

#identifying alcohol consumption per country & year 
canada_1986 = (world_alcohol[:,2] == "Canada") & (world_alcohol[:,0] == '1986')
canada_1986_alcohol = alcohol_consumption[canada_1986].sum()

tnt_1987 = (world_alcohol[:,2] == "Trinidad and Tobago") & (world_alcohol[:,0] == '1987')
trinidad_1987_alcohol = alcohol_consumption[tnt_1987].sum()

#Loose end to change consumption to floats
alcohol_consumption_float_colum = world_alcohol[:,4].astype(float)

#Create a function that sums the alcohol consumption per country/year
def calculate_consumption(country, year):
    selector_year = (world_alcohol[:,2] == country) & (world_alcohol[:,0] == year)
    result = alcohol_consumption[selector_year].sum()
    return result

india_1989_alcohol = calculate_consumption("India","1989")

#Country that drank the least
for k, v in country_consumption_1989.items():
    if lowest_consumption is None or v < lowest_consumption:
        lowest_country = k
        lowest_consumption = v

#Country that drank the most
for k, v in country_consumption_1989.items():
    if lowest_consumption is None or v < lowest_consumption:
        lowest_country = k
        lowest_consumption = v