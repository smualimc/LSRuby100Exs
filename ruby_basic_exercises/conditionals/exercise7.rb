status = ['awake', 'tired'].sample
captured =  if status == 'awake'
              "Be productive!"
            else
              "Go to sleep!"
            end
puts captured 