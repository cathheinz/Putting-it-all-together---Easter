
##### read in package and file & make the tibble ready

library(tidyverse)

bom_data_raw <- read_csv("C:/Users/ing06d/Documents/Data school FOCUS/Putting all together - Easter/Putting-it-all-together - Easter/BOM_data.csv")

## data with tmmp separated in two columns

bom_data_tidy <- 
  bom_data_raw %>% 
  separate(Temp_min_max, into = c('tmp_min', 'tmp_max'), sep = '/')           #splitting the combined max&min tmp


## bom_data_tidy %>%   
  ## mutate(tmp_min = as.numeric(tmp_min)) %>% 
  ## mutate(tmp_max = as.numeric(tmp_max)) %>% 
  ## mutate(Rainfall = as.numeric(Rainfall)) %>% 
  ## mutate(Solar_exposure = as.numeric(Solar_exposure))                       #leave the NAs in there - might have to 
###### when do this somehow messes with the NA-values. mutate must be done after filter aparently ########


#### Question 1
  ## For the Perth station (ID 9225), produce three scatter plots showing the
    # relationship between the maximum temperature and each other measurement 
    # recorded (minimum temperature, rainfall and solar exposure).

## only Perth data

  bom_data_Perth <- 
    bom_data_tidy %>%
      filter(Station_number=="9225") %>% 
      mutate(tmp_min = as.numeric(tmp_min)) %>% 
      mutate(tmp_max = as.numeric(tmp_max)) %>% 
      mutate(Rainfall = as.numeric(Rainfall)) %>% 
      mutate(Solar_exposure = as.numeric(Solar_exposure))   
      #write_csv("C:/Users/ing06d/Documents/Data school FOCUS/Putting all together - Easter/Putting-it-all-together - Easter/output/BOM-data_Perth.csv")

#plot1 <-
    bom_data_Perth %>% 
      ggplot(mapping = aes(x=tmp_max, y=tmp_min)) +  
      geom_point(size=0.4, colour='black', alpha=0.6) +        #alpha is the transparency of points
      labs(title="plot1",
            x="Maximum temperature (°C)",
            y="Minimum temperature (°C)")

  
 #plot2 <-
    bom_data_Perth %>% 
      ggplot(mapping = aes(x=tmp_max, y=Rainfall)) +  
      geom_point(size=0.4, colour='black', alpha=0.6) +     
      labs(title="plot2",
           x="Maximum temperature (°C)",
           y="Rainfall (mm)")

#plot3 <-
    bom_data_Perth %>% 
      ggplot(mapping = aes(x=tmp_max, y=Solar_exposure)) +  
      geom_point(size=0.4, colour='black', alpha=0.6) +       
      labs(title= "plot3", 
           x="Maximum~temperature (°C)", 
           y=expression(paste("Solar exposure (","MJ m"^"-2",")")))     # not easy getting the y-axis right
           
    

#### Question 2
  ## Display these four measurements for the Perth station in a single scatter
    # plot by using additional aesthetic mappings.

#### Question 3
  ## Take the four plots you have produced in Q1 and Q2 and save them as a multi-panel figure.


#### Question 4
  ## Using the entire BOM dataset, calculate the average monthly rainfall for each station. 
    # Produce a lineplot to visualise this data and the state each station is in.





################ Tina's fra GitHub ##################################################################

SAET TINAS DAT IND!!!
    
    
    
    