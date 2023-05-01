library(ggplot2)


UCDF <- read.csv("TMPUsedCarDF.csv")
UCDF <- na.omit(UCDF)
glimpse(UCDF)
view(UCDF)
head(UCDF)

colnames(UCDF)[5] = "Year_Resale_Value"

Sedans_coupesDF <- UCDF %>%
  filter(Vehicle_type == 'Passenger')

Trucks_SUVsDF <- UCDF %>%
  filter(Vehicle_type == 'Car')

Cars2011 <- UCDF %>%
  filter(Years_Added == 2011)

Cars2012 <- UCDF %>% 
  filter(Years_Added == 2012)

ToyotaDF <- UCDF %>%
  filter(Manufacturer == 'Toyota')

HondaDF <- UCDF %>%
  filter(Manufacturer == "Honda")

NissanDf <- UCDF %>% 
  filter(Manufacturer == "Nissan")

MercedesDf <- UCDF %>% 
  filter(Manufacturer == "Mercedes-B")

FordDf <- UCDF %>% 
  filter(Manufacturer == "Ford")


# Univariate analysis

ggplot(UCDF, aes(x = Manufacturer))+
  geom_bar()

ggplot(UCDF, aes(x = Vehicle_type))+
  geom_bar()

ggplot(UCDF, aes(x = Months_Added))+
  geom_bar()

# general overlook of sales and prices( continuation of UA )

mean(Sedans_coupesDF$Sales_in_thousands)

mean(Trucks_SUVsDF$Sales_in_thousands)

hist(Sedans_coupesDF$Sales_in_thousands)

hist(Trucks_SUVsDF$Sales_in_thousands)

boxplot(Sedans_coupesDF$Sales_in_thousands)

boxplot(Trucks_SUVsDF$Sales_in_thousands)

max(Sedans_coupesDF$Sales_in_thousands)

min(Sedans_coupesDF$Sales_in_thousands)

IQR(Sedans_coupesDF$Sales_in_thousands)




mean(Sedans_coupesDF$Price_in_thousands)

mean(Trucks_SUVsDF$Price_in_thousands)

hist(Sedans_coupesDF$Price_in_thousands)

hist(Trucks_SUVsDF$Prices_in_thousands)

boxplot(Sedans_coupesDF$Prices_in_thousands)

boxplot(Trucks_SUVsDF$Sales_in_thousands)

max(Sedans_coupesDF$Sales_in_thousands)

min(Sedans_coupesDF$Sales_in_thousands)



mean(Sedans_coupesDF$Year_Resale_Value)

mean(Trucks_SUVsDF$Year_Resale_Value)


  
  

