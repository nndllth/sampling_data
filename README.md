# sampling_data

PENJELASAN SINTAK DARI SAMPLING.SH



#download data dari file excel dari link github

wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx
# menggunakan perintah wget untuk mendownload data dari link address. Penggunaan perintah wget dapat dilakukan hanya dengan menggunakan link dari dataset tidak perlu menggunakan raw. Kemudian diikuti dengan link dataset yang ingin didownload.



# Mengkonvert setiap sheet dari excel menjadi csv

in2csv weather_data.xlsx > weather_2014.csv 
#in2csv adalah perintah untuk mengkonvert file excel menjadi file csv. Tanda ">" bermaksud untuk mengubah nama file menjadi weather_2014.csv
 
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv
# Sama seperti sebelumnya tetapi pada bagian ini akan mengkonvert sheet tertentu pada file excel yang dipilih. Disini yang akan dikonvert adalah sheet "weather_2015" menjadi file csv weather_2015.csv



# Menggabungkan kedua sheet yang telah dikonvert sekaligus menghapus file weather_data.xlsx

csvstack weather_2014.csv weather_2015.csv | csvlook > weather.csv
# Perintah csvstack berguna untuk menggabungkan file weather_2014.csv dan weather_2015.csv menjadi satu file yang sama yaitu weather.csv

rm weather_data.xlsx
# Fungsi "rm" bertugas untuk menghapus file/directori yang ada. Disini file yang akan dihapus adalah weather_data.xlsx



# Melakukan sampling dari file weather.csv dengan rate 0.3

cat weather.csv | sample -r 0.3 >> sample_weather.csv
# Disini kita akan mengambil sampel dari data yang ada dengan menggunakan "sample -r 0.3". Nilai 0.3 menyatakan sampel yang akan diambil adalah 0.3 dari populasi data yang ada.

