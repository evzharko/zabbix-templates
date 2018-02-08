Для начала включим статистику Bind9, откроем файл конфигурации в текстовом редакторе

sudo nano /etc/bind/named.conf

И добавим следующие строки (где первый IP и порт — интерфейс на котором будет видна статистика, а следующие — с которых разрешен к ней доступ):

statistics-channels {
     inet 192.168.10.1 port 8053 allow { 127.0.0.1; 192.168.10.1; 192.168.10.15;};
};

# Monitoring BIND9
# Количество udp соединений к DNS:
UserParameter=bind.net.udp,netstat -nua | grep :53 | wc -l
# Количество tcp соединений к DNS:
UserParameter=bind.net.tcp,netstat -nta | grep :53 | wc -l
# Количество входящих и исходящих запросов:
UserParameter=bind.queries.in[*],curl http://127.0.0.1:8053/ 2>/dev/null | xml2 | grep -A1 "/isc/bind/statistics/server/queries-in/rdtype/name=$1$" | tail -1 | cut -d= -f2
UserParameter=bind.queries.out[*],curl http://127.0.00.1:8053/ 2>/dev/null | xml2 | grep -A1 "/isc/bind/statistics/views/view/rdtype/name=$1$" | tail -1 | cut -d= -f2
UserParameter=bind.worksdig, dig google.com.ua @127.0.0.1 | grep -c "google.com.ua"

