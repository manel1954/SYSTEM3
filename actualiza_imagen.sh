                
#!/bin/bash                                
                                          
                        cd /home/pi/SYSTEM3
                        
                        git pull --force

                        

                        sudo rm -R /home/pi/SYSTEM

                        mkdir /home/pi/SYSTEM
                                                
                        cp -R /home/pi/SYSTEM3/* /home/pi/SYSTEM
                        cp -R /home/orangepi/SYSTEM3/AUTOARRANQUE_SYSTEM/* /home/orangepi/AUTOARRANQUE_SYSTEM                      
                        
                        sudo rm -R /home/pi/qt

                                      
                        cp -R /home/pi/SYSTEM3/qt/ /home/pi/
pi
                        sudo chmod 777 -R /home/pi/SYSTEM
                        
                        sudo chmod 777 -R /home/pi/qt

                        sudo chmod 777 -R /home/pi/AUTOARRANQUE_SYSTEM
                        
                        

                        











