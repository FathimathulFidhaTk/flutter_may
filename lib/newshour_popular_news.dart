
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: popular_news(),
    debugShowCheckedModeBanner: false,
  ));
}
class popular_news extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: [
              Container(
                height: 100,
                color: Colors.blueGrey[600],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 440,top: 10),
                      child: Icon(Icons.close,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 330,top: 30),
                      child: Text('Popular News',style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontSize: 23
                      ),),
                    ),
                  ],
                ),
              ),


              Container(
                height: 190,
                child: Stack(
                  children: [
                    Positioned(
                        top: 15,
                        left: 20,
                        right: 20,
                        child: Container(
                          height: 179.0,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )),
                    Positioned(
                        top: 20,
                        left: 30,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhYZGBgaHBkcHBoaGRocGhgcHBwcGhgaGRocIS4lHB4rIRoaJjgmKy8xNTU1HiQ7QDs0Py40NTEBDAwMEA8QHxISHzQrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAPsAyQMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgMEAAIHAQj/xABEEAABAwIDBAcECAQFAwUAAAABAAIRAyEEEjEFQVFhBiJxgZGhsRMywfAUI0JSktHh8QdicoIVFjNT0kOy4iRUosLT/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAIhEAAgMBAQACAgMBAAAAAAAAAAECESExEgNBUWEiMnET/9oADAMBAAIRAxEAPwDsSxYsWMYsWIPt3a3sGzE3hYwYWJJZ0zG9p8VJ/nRm5rj4LUC0OSxI3+dxMZHHhBue5Htn4us9uZ7fZg6NJl55n7vzojTB6QbUFTGsFi4TwFz4BAcXjw52TNmi5ANh/V+vgogwnWw4C37D5uiomcg27a1MWuewD0lYdrMGocO2PzS6+uwSM7Wga5SPOL+ahYaWuZs9/jcpvKF9MaG7XpHf6fAqZmPpn7QHbI8ylRzG8WHuHrK1aQNLdh+C3hA9sdgViVcLjHN0JHx8LIpQ2ppmuOO9K4tDqSYWWKKjXa73SD6+ClSjGLFixYxhKjNdvFa4ppLTC5ztvGVqNQtLze4WA2dI9u3ivPpDeK5M/bNb/ccov8arH/qO8UyjYrkdd+kt4rPpTeK46/a1b/cf4lR/4pV++78RR8s3tHbFixYkHMSZ05qDK0cSU5pI6e0+qx3AkeP7IoD4IlQonsjYVas8ZRlaCJeYLRvEX6x5BUMFR9pUZTFi4wm2jimMqtwlGzA4ue7QkNHXceO5o5EEzIVG6JJWT4bZmHwpNTK+o4e6XgQHT9hu/kbxGqnx3SANhri0PdbIOsQT7rTf3uV+5KG1dt1n1nGiMzWBwa6bZj1QWng0TAG8zuAAzZGAqmpnJL3sMGCA1s9xJOo7jcpLbHSSHfEbY9gDndneYho0bw7+zTmhjsdVqXecjDw1I1sBx5oe3DOY9zn5HmPsuksJt7rrE7t3NR4jE6wSTJuTmvynzPhzwf8AAo7FNAEMAEbxmJ5mbDctPprjoBH9It4IRSBcTqd5Mmy2FXcDKPqgKNhkY0jcJ5/oVK3HE6+WiFUDKI0KK3plFBF6hipCtMxVh3qmyiApC1ZOzOCC2GrXBBgpjwtfM2d41SVQBBsUa2bii0300PJZxYnBhWLAViQY8doub9Oaf1rTyPqukO0XPOnL5e0cAfM/omj0WXBSyryoIXr1pmlUeEkrIQZUns1tlXuZLbGo7msWLFMqYkv+IDvq2/1D0KdEj/xBpksaRoDdFAfBS6MYR9TEQwXy1JdMBuZjmAnvcF0DCbHpMblc1r3BgzvIu8mZJnic3mg3QbC5KBqGxqOP4GWn8WYd6MbYxeRmUavIPPg380W9AlgKxDBVf7KmGsHIABrdCbb9fNSnDNpxSpNDQ0GSdZN5M6uOpJ00F5UuzaXs2kn33ajhwk/AKvi8W1gtcnUmwJ4H5/JawUC8Zgxc3J3k8eXZ5T2qthdk2Dnbx1W8bw3uHnBWVcUajgxpnMQJ0337tVdxuI62UHQXO4AfkIKOG0F7UrtY0MZoT3mNCUMoOkqHG187yRpu7NykpCEjdstFUgphzwRXDFBMO9GMK/csmMkXWqUNWNC2DUbMeU2XRLD6ZuGqoUxdEsME0ZfQkl9hfZlaW5eGnYrqAYarkfzB8R+yPNdIkb0rQiMfoub9NP8AWH9PxK6Q7Rc56akCs3+n4lGLpgkrQq1SoGOkqTEVgqra0ItipfQQYxeezVUYpbfSuaFho7usWLEo5iTum7C/2VMf9So1niY+KcUH2nRY9wzR1Dm1gNOoJKKAyq/DzlY0ZWWAiwDG6gdvVHihuJwb6lYvLrNNoIMc+A7/AMlXxnSAVH+zotJY2zqhnK1txYDSYMTwNhCo4/ajQ3I19t4afVxi/cEDfoI7QxbKQgBs3jrZjztp4lKeMxpeTJ7ADp4WCrYmu91yY/lbu4Kr7YNt481rNQc2Ozr5vutMeEfHz5qttTFdR5GpdHcNfSFmGr5aZ/pnxv6AIdiT1Gt5EntP7IylSDGNuynRfdX2OQKrXDDF+wfNlK2vVd7rYHI/FIioyUdFfpVw2JIHek19HExLXHx/NVBg6gdLyT2381rSMkzqeExTH6EFX2hJOxH5YGZN+Dfm0S+h0j012tcJMIjhMQw6OB7CClvamFJcZ0QbDYV5eMhAvxNkY/IkxZRvh0Su24cN49EYwD5YOSV9mUKjIl2YSM2/W0jgmLZbrEKlp8ItNdLz9FzTpy+awHBvqSulVNFzLpwPrv7R6lGKFkxNqi60FOVI8L2jrCo0qJxbs8YzivfZqyaC09gp2Uo7ysWLEoxpVqBokrn3TjF1Ghjqb2ta55Lx9p5As0xq0eFkf6bYp9Ok0t92TmPoO+65Jj9p+0DZdBFiCeZPhc+axqLOxcfVovec0uNzazhMZY5WhWK+25M+zaCftEu8gTCpYau15a+RMOnw18lDjGnh3hAxLVrOdv7hZa4ekXOA3nyQ12Kgxc909mqN9H2BznPg9RpMTNzoL9/giloWW3iWnmYHYqWNN+wD0RGoRAn94AM+fkqGIpz5eiEhogZlGXZnIgcUxjZdA4cT2KOrQduQXEYVxfL8xHAeiFFF+gk/pC42Y2e4n57pWYXaNR/viW6EZYdwmN4mZ4ekzKIeIZTIkQQYAtaQRoi1fBF7ACGtfnc8vH80SA2LCAN60oxrBYyk5asBdR7mkFpsnzojWzi6T6tCBFp3kC3CyL9HsQWOAW8ob0a7exlR7ixkyZ03chOnal3CUMWTNPPMB0BxcY0mDbw8CnzaWzjn9sw+/qIFj9rx18VU2fg3MqNe1xaQQQC2WyDI0vE7pQUYrppNv+pY6F7be8mnUu8A7iCcvvSLye/TQC4D1ssWH93/ANUJ2Vs9rDndBe4kuIaADmMm25GNnmCW8HOHmI8gjFUSk03hefoub9OWfWg8W+hK6Q4rn3TX/Ub/AEn1VETYkPpqWjSUz4UbTwRkxYos5LKPIt2myyVModnlZK1lYmoFmmKw7KjCx7Q5rrEH5sVzLb3Runhs5YHPJJIloPUgQecGbgWtpv6glzpU/wCrggOvYETeDEc5hajWcaxLstx1b/t38lZqYoNIZr46Jg6Q4JjxhCWNYXlxdlES3MCDzsDfhCBYigM7NLiD4/ukbZWKTKwph5mOZ7k0bAw8U3g6ks8w5CcJRGfLHvS0eLv+JTJhmhoe3jBjvcE64JLtAbEu61/u+pn4jwVepVuVNjJL3HcGM8Tf8/BCqlTrJGysVYWoAFWRgGlC8PWRfC19FrDRYobPaNylrMAFlMx8rWqxHDOwPiWKDDVQHLbbFbLlbx+CHVsSxkFzg3hJAnxWsHk6RsbFBzcjrg/Mq+/C5SlLo3tAPIaOSbqW0KdVgcxwcNJBkGN4O8Ieot0FxktJGVNyIYR3W7YI9D5ShbRdEWuy5XbgYPKU5KSCbzZc76a1PrQN2X43XQi6Quc9NzNUDg31JTRWEpPRWfUlb03KqWQtmvhO1giel4uC1zBRh9lrmUyp2yVkrVYiKbZkudJ67WsEgOlwsdD2piSz0raAzMW5oIsZjvjciBi30hpONLD1HGXNc/MY0kSJ4aX4Ewlotl44Ag/2ukHzPqnGi8YjDvpR1ozCM2rSCZkniO2OSSa9QsqsYB1Q6I3vDjv5wbDs33MpdLQdBzY+Ez1qJg2AJ4S9rnnsERbjCu4khtS/2i5p7ySPOEx7IwzKdBrhbqMEWtLGnyaWpT23JJ3Xnx0WeIHWUNqAgOMXLQPB8ehCX6pv4pl2h12B7dHSHdpER+JrUt1WpJMrE1ZVhFMLiEDcYKtYWpdYqhtwtdXQ4FAsNVsFbdibLWYrbWwedwIMEFCsXsBlR4c4SdDcxG5F3YgDVVam0WzEx69yNfYibeDB0f2RTpN9k4S17SO47uxNGG2e1jA1giLpGw22JIa6Yb48k57F2q1+UEwTYTvPCUUooaanRapIzhaYLCCJBt5IfkGYkcUSwjhljgjHpCbw0oktJpuM2lp+83geYSF0zEVp4tHqV0HFslsjVvWHaPzEjvXPum96rebfiqLhF9FZokrZ9JSUKavUcE55hrS48As2ZIoMYt/ZJu2V0U0fWP8AaPiUd/wnDfcb+EIUGwsHLC9ar2EwlnoegXSao0Uzm07CfQo6wJb6Yt+qPaPVYIuYHGtY4BjsokTlaSXQftFxtabBCuk+Fyvzs917SWvG6T12iNLFwUTbFM+x8G3E0XsfqHMDN5a4gyTbS3zClJWUQWoPaaDALDJPwJSptdhdm4wdOIR3AS1jqTjLqZLJGjgQ1zSOWv4SqWMpiSTp5gyAfgZW6jLBc2I4nPRdfRzTwO/zE95QvF0iCRwPgiFT6qsDPuuE8wTB7gLDxU3SGkG1T/M0O+B8/VTZWL0WX01vSEKWoxeMCyKphHDPKv0qeZDcOUSpVYFlmBiptLaVQuLWMIAMSbSoMBReXjMRr7pJbM3TPUwoeSYUmH2XJCPpJDxaTNMPs8lpGSneLkTlnhJ1siWxui2Ib9aysHEHN7Nw6usw0z1Y8NympbOeNHHwTdsKmWMEzO9BNPKDOdLC9s7MWdf3ibq/WaWOzD3fT9FHhmy/lqp62OotOV9RjSdznNBPcSqRxHJN2yR1UFhcOB/ZJPSDZNWrXGRvVygSTA3ymUuBIDXS0ndwF/WEM2ntY03lrtfUHQqkdJSwqYDos1t6j55Cw/NGW1KdIQwAJWxvSG0gpZx/SQmbqqiTch8xm3miZKE/5mHFc5xu13u3qh9KdxKbwhfbPpBehewsCiOegpW6Zz7I9oTSlrpewmk7uWMI+EpOeYaCSmnY1U0mPIE5WucMsHrBv2ovpKW8K/KwmYkgHnvHofFGNn1nElvFpDtetmAbJO+Jv2A8UrKgKltptOuXuf1ahDS0fZE9Uu8TpuPJNFFjXidQb+S5ttfBuY7IWGm8uyhrryZH2vu6AG084KKdE9qupvyO/wBK5uZLRZrS3mS5kji881Meg70k2YYzxuh3Mag+SE9IQ51CjWGreqeYI/8AFP72NqMizmuFiEs7Q2cWYQsP2XGOzPb/ALksgxEluJDxwPBah6jxODIMiyrGoRY+KUqgtSqK2ypzQFtY8VM3FELBGGlUgyjGCq3CTWY1GdmYsGLomQ84d4tKN0GANlJ+FxIJAlPGzcMcoc8dgPqUY66F+SSSsmw1IhpO93kNy4Vtqg6jj3GsXPIqktJJjLLS1xv1rvY0DTWbCF9AEpB/iX0b9vRNRkh7AQYAJLDrY8IBmxEW4G6WUcrltgLo3i6tGls6lnGfEVaj3G8PbcNaIEAFrmkAwAG8gES/iYajW0alJhcYcHkMe4BogtnI0kXza21Rro7TYcNRqQ178mVjwNGucR1DwhovrCanMGWCJspp0O0fM+K28XOLZsOEjt1APkovpOa4K6/002LhKjS19NrX3h4EEf3BcX21s04apla/M06H81WHzfTJy+JPUTOeo5UFDEB1t6mhdHdJ1WH1GsWLFzjnoQLpSQKL+xHQlzpawmi7uPgVjCFhyDLXaHQ/dPGN4+d0GRzHB5OaN+aeOhBGs8uaxlECNSToB2x67kVwmEzkMIMA8JEmJM8AJ/DqJSVZR4XqeEbUpta+XkzkZcQetDgfswANI05oVtTokxjPa0sziCB1jIMFr+qQBIDgLxuB0TzsrDAQ1rYYAL6F08rdugERa9o+klYNp1DmADGHhqRp88PEtWBNoR9h7RNHE/RnHqVAXNMzD7aTuN9Bw3kph6QwKDjyA7y5seaQKNXO9lUwXsqMc0WuHObYH+WZ8E59L6mXCl5khuVxjWxbPlKnNbhSDFWphpCFYzA8ke2fUa9oIMgixVyrgZCk3RcQnUIUgo2R7E7Oh2i2+hWQswu02GU89FtjMd1nsDu3RLQw0O710no2wBgKJmV+k2HZRwrjTaGPL6TWubZ13tJAOtwCE9NNguc9McTnqYagN7/aO7GAgebvJdGYQRI03di6IcOX5f7Hq1e2RBWy9ATkwQ3Cspvp02gBjGl0cJMNHqr9epBjitKzB7V06GmB4OM+qhxAlnMb+xRf5LCn0zxTGAF9m3vf4X4rhe0qpe9zpJbmOWdcs9XyhdQ6U7RDs1OppdcyxkNJy3aqfHHLYjltA+k/K4Hgin0+nw9UNqQVplRp/kY+uJXoXgavQESR6EG6Ssmi+OBRkIL0nd9Q/sQChGZYCCM0XOsbwBHEXnu3GWbYeCghznkg2DRPWO887jsgGJuUv4BgD9MzjJDdwAvLu4SB+iccNiqVBgfUd1yPdnM4D4GI8EFozC1as2mwucYA11J7ABcnkufdMNttc3LPV+6N86T3X8VJtzpbn6rBa++e8kaLnO2K7iSdQdQdJ8bb+1UjGlbEbt4WqOLLq9ECMryxkAGWy4Cfngui9MYGBrE6NseYBuBzsuS4PGsbVpPsBTcw6QIDwSbrpX8Qax+hYhguc9M9jTUaT5gDvSSWopHhzDYe2X4dwnrM3t4c2nceW9dV2Vi2VmB7HBzTvHmDwPJcWKL7A2w/DPzsuwxmZucPg7ml+T471dKQnWM6tjMIDeFUqYWyKbMx9PEUm1GGWmxB1aRq1w3EKPEMhcjTRfvBYrYeHSmvZGJy05O4IDiYlUNt7RdTw74tb9kyVmsi+m/SMVUqbmnI08hrHeuk7K6RMyMa4boBHBtrjiuT9HmFrGCbm5PHemuo8Ci3QFrtQNx4jw04r0IQSVM8/wCSTbtHQmbZon7cdoPwV2jiWO0c09hC5I/EED8l7TxskAOi/BZ/GmBSaOo454Ba+dJaYO50X7iAq2PxQp03PdoCAe8gT5rndDaLg8OBvcxc2iYjf2J3x5f7ABlnwH5TeYBJZz18lKUEnV9KRna4cz/iBSYHh7HAtdrHFItRgOhXVX7TzCHsY4bwWNIPaCFTqYbCP97C0hzY0N/7MqvGFKrJSlbujlbsKcpdaJUX0fmukVej+DcfceANzHug9ubNdWvo2yf/AGr/AMdT/wDVDwH/AKM7FC8VXF7Qp0/ecJ4DX9EDxfShoswRz19dNeCmotjNoZKlRrRLiGjmYS5tvbFBzSwkunXcPzS3j9tueTMnxugmJxM3+H6plFC2w0dosZJYIc65cfeM8zoOwIJtLGudN7dqo1MSq1Soi8WDJW9KmIru4lC6tcyUUe0FD8TRhL6H8gzENmfMLq2zKzcVhGPeZD2CjV4hzern5GYdPMLlz7Ji6G7bFB7mPP1T4DhrldoH8hGvjuKWStBToBbZ2Y/DVnUag6wuHbnNPuubyPkZG5VWldi6T9Gm4ygGAgVWAmi86OG9jjwNr7jB5HjVSk9j3MeC1zSWuaRdpBgg9hCMXaMxg6Pbbfhqgc2S11nsmzhx5Ebj+a6T9NZUYHsMtPrvB5hcba5MGwtsGm6DdjveHo4cwkn8alq6NCfnHwbMW+6WelNfNkYN7gT3XR/GVRGYG2oPFKWPfnxDBwHqpwjcqKydRbDmzGw0d3kjjnSxzRr8RcIRhmHKCBIAJtwGp8wrrC7SL6+cW712rpwy4RsfaN3zdVaoLTI071YpAmwutcTSdBtz8p+I8UDIIdHKBfUaT7rSHeBCYsNtlz8UGZhlcQGcZB8BPWETwKXdl1SzDVqg190WuJsb8InzRTolTDi7Ev8AcpgkT9+L98R3kJWk7sZWuAjalIMrVAIgPeAL2GYx5KrnO4KLE4ove55iXOLjwlxk9114x/NMKYavz+3qsty/GvHOHGD2+XMLPZ9nimsFBRmPe+GPHXgBrz1i8gGZeBAcQAY7ddVWxFQ3NxcyJ08BzQKlXqMyklxDhIJIDSc8AtvBuw8fe4iFfobRpvhv2oguy6idZBuZ5buSSLweUdui17TnPOVBWcFAa8GNQdCINpsZ4c/Fel3zdEKRG8clWerLnqJ7uSDYyK8qKowFTv7Aoi+NwSUGwbiMPCpCQUdeZ+QqGIwu9AI5dB+lQZlw1Z3U0Y4/Z4NJ3cvDtz+K+xYyYxgHXhlSN7olj+8AtJ5NCRGN3FdS2ax2L2ccM8y91MZHO3ubDmFx/qAk8ErxmOPtfxVyg/54qriKBa4tIIIJBB1BBgg8wbdy2wz4N1ROgNWMmCxxLCw3G7tVHC9aq5x3QPC/xUVI8D88Vbps+0Bqet28UVBevQHN+fIaovJ32/NT16hAAk+O+ZUGGbI5rzFvuB8/Nk5IkwuJJBudXDXgSFu6tIiT4ofhnQXD+Z3qVI8LMK/QzdHsj2VMO8gZwXNniIj0RXbj/YUGYemIbEnibyJ5lwJPeg3QyhmrZnatbbv/AE9UR2nt7DvqPoV2WY8ta8AnKQYk7wZnRT7IZ5EVnLR0i4R7E7ELm56LhUZxkZgOB0sPmEu1ZDnAzIMOEGxHDl+qoKnZvUJ1mFF7V/3meJ/JbNeCLXkSDfw5qtA+6PxLGInsydVuUtdJObOHRPWBa9xluswdZ7tcawZgMwa4kkZSN4Ai+p0FpMahUsJtgQQ7NVn7NTJv4E3d4+quPxzHgMLAWyIZIE7oF5EAmNI3aJP4vg9yXUEqdTOMjy7NfKQCLRqcwBbvlpvotHOLHFhcCR6azz+dEMo4Yh5FMVQDfIWBzddG5njzmBv3rb/Es8NORxHHqObFyYcSCP7p3rW10OfReq8R4cVpmCwMcOt9k6HcRp+S0a2TIO/uP6wUrGPHhRlTk/oo4QCQOatM6tFirVWLAIX0Qbjw4zoO9dR2fhTSpsjVjG95DR+q5bSrFrmngR4g2+e1diqEOovcNC23YWEj4JZK6NdHL+n2CDMU97fdqtbUH9w63/zDj3pTBvddB6dsluFcd9FvcABPqEjYjDqiVqwXpLhakHvRqi8cLfBLAlpRjB4oEQjGX0LKIdwzy23yQRZTGIntVSmJAI1Hp+6sPMwPH9lQkUmG7u0/n3r0V9xWRD3DmPNoUVcIN0Ol9jV0MxQbVM7x8fyPkt+mGzcldzwOrU6wjifenvlKODxrqbw9uoM9vzcLo2GxtLHYfJMP3E6sdGh5etuCRVdhd0DOhlMMc+u55ZSpiXG0OcZOX9Agu0cU2pVfUYzKHOdIJuLkiBMDgddFd24402swzRAYA5381RwkuPECwHIIGHAiSIkz3ixnwIRMketdBOXnbnqPh5LT2jPurxxic2vHcbmPM+io+0P3vII2MkKivUsW5sEjM3gd14MHuVVrSR88FIGS3fAOsEjd3Bc6HDeDx7SIMEEnVxbk7CNfJWaopub1nNYbEZy+Yjq3PZvSs9sGxnmCrOFxxZYgOabEG9uU6JlN8YvlXYfw4ayMtVhzGC2DlOkEA6md407yrGcgkZCCDdhEOAkjMNzhIIzCRZCMPiKTuqQQBuBbef6t8jirjMa50RBLBlGcCcoJMB2m8giZublN03C+XAkaiRPzxXhMfnu5dmq0c1pjI4udIcRlLRB1iTBvO/f3rGTJ1tu4jnw9beIsZomzX+fHtUVRoK9Lt/l87p9Fq+Yj19FmYG4thC6F0G22H0fYvN2gNvwHuk8vnckh4DgVWw9R9J+dhg89D2oP9AaHrp5TEYdturTIG/TKD26BI2IomYgmABOukBPGFxzK9FjqrA5sxBMOY7kdRPnZVMR0WY8Th6oJFxTqDK7sDx1Xd8JotCtYJD6PJR5MpsjGO2e+m4sexzHC8ER3jiOYsqVSknaApFzZuK74RWnqD4JZpOyEHcj+CqyAingko/ZFUdD3dx8hqo3vXmJd9aRyHxj0UFQx8/NlnwZGr/mFb2K97aoLHESWgiCc0mA2BqZ0A48JVQe9HH58U8dFNnsw9I42o2YvTb/M62a+hvA4AE7wpydIdB3pXggcIX1i0VZAYQL3d7p49WTyhc8a+ZB3+EjcUx4/bAxLB7d2R0nK5oJY0TZr2zIkA9YcxdB6uznZjlcx4O9rwfLUW7E0eAwEYl4kCx1BaTpI913L9FFkZwP4B/xVo4Q+64ARcSWy4Sc2p5+ak9hU+XD/AJIDYKT6MacjFt/MarUkmBJ7O/d4la5yCBNluHnIL7/zUbGo2qUgGtcCbk2yxB3wQSDu4aqs4yrDqhjdoNABuHBV95WM8PCFco7Qe2BaLSMrSTFrkiZhVXad4+KjWugVYboY8O6sltteo0E66wCLidbIthDmaRmDxxD2k23AXtrqEnLcOg2Tqdi1XB2zEAZ9L3OptvE2M+m5bOoGJBE7rzc8e0Qgex8S4i53j1CNaT2kd0zHksOQZZJG/hpbd+/NePo6z2KV+n9zvVw+A8FtvH9RHkUGE1wtd9I9UyDq03DuSuU6gefq3+zd9xxOWf5TuHKO9Uqw0UD0yEaobMPj6j2ihi6LqlI6VWQ59I/flsx8dCEC23sh2HflJD2OGZlQe69p0I4HiPUXI8Y6oxmZj3NIjQ/DRdA2R/6vZxqYj6x4zEONiDA+7CdOmI1as5vWp2W+Bqkd0KSncBRsHr8UzzQL8EuLPWDxoYHeCTHnK1Lvk+vYt/sn54qofiszLCWl1nhvMDtzW8/RdF6XtIw9Fjfc6x/CGhvlK5vQdod4Mz3hdT6SsBwjTFxEHhYKdWx26EFryJgTmkZToDBtyMgKpWDes+LhpsRYwesY3A+RVnD3N97J75AnwXtJgmnbUmefun4I0EzA4WQCT1RHXmLutwvceW9WIZ/st/EPyV8sAJbFg0QOHVf+Q8Ahnt3cfIIBo//Z"),
                                )
                            ),
                          ),
                        )),
                    Positioned(top: 30,
                        left: 200,
                        child:
                        Container(
                          height: 150,
                          width: 280,
                          child: Column(
                            children: [
                              Text('Emilia Clarke says no more Fan photos after being Approached during a Panic Attack.',style: TextStyle(
                                  fontSize: 17
                              ),)
                            ],
                          ),
                        )),
                    Positioned(
                        top: 95,
                        left: 185,
                        child: Container(
                          height: 30,
                          width: 150,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]
                          ),
                          child: Center(child: Text("Entertainment")),
                        )),
                    Positioned(
                        top:90,
                        left: 200,
                        child: Container(
                          height: 150,
                          width: 280,
                          child: Row(
                            children: [
                              Icon(Icons.timer_outlined,size: 18,),
                              SizedBox(width: 10,),
                              Text("22 December 10"),
                              SizedBox(width: 100,),
                              Icon(Icons.favorite,size: 18,),
                              Text('10')
                            ],
                          ),
                        ))
                  ],
                ),
              ),


              Container(
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                        top: 20,
                        left: 20,
                        right: 20,
                        child: Container(
                          height: 180.0,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )),
                    Positioned(
                        top: 25,
                        left: 30,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/images/news1.jpg")
                                )
                            ),
                          ),
                        )),
                    Positioned(top: 40,
                        left: 200,
                        child:
                        Container(
                          height: 150,
                          width: 270,
                          child: Column(
                            children: [
                              Text('Kendall Jenner remains the worlds most popular top model.',style: TextStyle(
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        )),
                    Positioned(
                        top: 90,
                        left: 185,
                        child: Container(
                          height: 30,
                          width: 150,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]
                          ),
                          child: Center(child: Text("Entertainment")),
                        )),
                    Positioned(
                        top:85,
                        left: 200,
                        child: Container(
                          height: 150,
                          width: 280,
                          child: Row(
                            children: [
                              Icon(Icons.timer_outlined,size: 18,),
                              SizedBox(width: 10,),
                              Text("22 December 10"),
                              SizedBox(width: 100,),
                              Icon(Icons.favorite,size: 18,),
                              Text('10')
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                        top: 20,
                        left: 20,
                        right: 20,
                        child: Container(
                          height: 180.0,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )),
                    Positioned(
                        top: 25,
                        left: 30,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:AssetImage('assets/images/fa.jpg')
                                )
                            ),
                          ),
                        )),
                    Positioned(top: 40,
                        left: 200,
                        child:
                        Container(
                          height: 150,
                          width: 280,
                          child: Column(
                            children: [
                              Text('Facebook is exploring building its own operating system.',style: TextStyle(
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        )),
                    Positioned(
                        top: 90,
                        left: 185,
                        child: Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]
                          ),
                          child: Center(child: Text("Technology")),
                        )),
                    Positioned(
                        top:80,
                        left: 200,
                        child: Container(
                          height: 150,
                          width: 280,
                          child: Row(
                            children: [
                              Icon(Icons.timer_outlined,size: 18,),
                              SizedBox(width: 10,),
                              Text("22 December 10"),
                              SizedBox(width: 100,),
                              Icon(Icons.favorite,size: 18,),
                              Text('13')
                            ],
                          ),
                        ))
                  ],
                ),
              ),Container(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                        top: 20,
                        left: 20,
                        right: 20,
                        child: Container(
                          height: 180.0,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )),
                    Positioned(
                        top: 25,
                        left: 30,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage("https://cdn.spacetelescope.org/archives/images/screen/heic1608a.jpg")
                                )
                            ),
                          ),
                        )),
                    Positioned(top: 30,
                        left: 200,
                        child:
                        Container(
                          height: 150,
                          width: 280,
                          child: Column(
                            children: [
                              Text('Hubble investigates new type of supper - puffs planet with texture of cotton candy.',style: TextStyle(
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        )),
                    Positioned(
                        top: 100,
                        left: 185,
                        child: Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]
                          ),
                          child: Center(child: Text("Science")),
                        )),
                    Positioned(
                        top:90,
                        left: 200,
                        child: Container(
                          height: 150,
                          width: 280,
                          child: Row(
                            children: [
                              Icon(Icons.timer_outlined,size: 18,),
                              SizedBox(width: 10,),
                              Text("22 December 10"),
                              SizedBox(width: 100,),
                              Icon(Icons.favorite,size: 18,),
                              Text('13')
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ]
        )


    );
  }

}