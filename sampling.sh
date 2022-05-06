# Mendonload data dari file excel dari link github
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# Mengkonvert setiap sheet dari excel menjadi csv
in2csv weather_data.xlsx > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

# Menggabungkan kedua sheet yang telah dikonvert sekaligus menghapus file weather_data.xlsx
csvstack weather_2014.csv weather_2015.csv | csvlook > weather.csv
rm weather_data.xlsx

# Melakukan sampling dari file weather.csv dengan rate 0.3
cat weather.csv | sample -r 0.3 >> sample_weather.csv


