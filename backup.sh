#!/bin/bash
backup(){
#y=year m=month h=hour d=day M=minutes
day=`date +%H:%M:%y:%d:%m`
clear
echo "                   O Linux criou uma backupLinux. "
echo ""
mkdir /home/vera-cruz/Desktop/backupLinux.$day
echo ""
echo ""
echo "         Hi Sr.$vera welcome to service backup. "
echo ""
echo "Do you want do backup in which diretorio."    
   read BCKP
 case $BCKP in
Musica)
#this will creat backup in Music dir
    tar -cvzpf /home/vera-cruz/Desktop/backupLinux.$day/Musica.tar.gz.$day /home/vera-cruz/Música
       echo "backup is done";;
Videos)
#this will creat backup in Video dir
    tar -cvzpf /home/vera-cruz/Desktop/backupLinux.$day/Videos.tar.gz.$day /home/vera-cruz/Vídeos
       echo "backup is done";;
Downloads)
#this will creat backup in Downloads dir
    tar -cvzpf /home/vera-cruz/Desktop/backupLinux.$day/Downloads.tar.gz.$day /home/vera-cruz/Transferências
       echo "backup is done";;
Documentos)
#this will creat backup in Documents dir
    tar -cvzpf /home/vera-cruz/Desktop/backupLinux.$day/Documentos.tar.gz.$day /home/vera-cruz/Documentos
       echo "backup is done";;
Images)
#this will creat backup in Images dir
    tar -cvzpf /home/vera-cruz/Desktop/backupLinux.$day/Images.tar.gz.$day /home/vera-cruz/Imagens    
       echo "backup is done";;
Raiz)
#this will creat backup in all system
    tar -cvzpf /home/vera-cruz/Desktop/backupLinux,$day/Documentosbckp.tar.gz.$day /
       echo "backup is done";;
*)
echo "Invalid try again"
echo ""
   read AG
      if [ $AG = "yes" ]
        then
            sleep 0.7
            backup
      else
        echo ""
        echo "Have a good day"
      fi;;
esac
}
backup
