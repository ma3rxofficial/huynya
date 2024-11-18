-- АРТТЕТЕОЕТТЕОЛМ МСЕМЕНОФООФОФЫ ВВ В АРТЕММ СНСЕПН НЕКРРМООЕВОВ В

-- Константы
FLAP_AUTH = 
FLAP_RESS = 

-- 1/16
ENCR_CLSID = {"0946134A 4C7F 11D1 8222 444553540000", "0946134B 4C7F 11D1 8222 444553540000", "0946134D 4C7F 11D1 8222 444553540000", "09461341 4C7F 11D1 8222 444553540000", "09460000 4C7F 11D1 8222 444553540000", "09461343 4C7F 11D1 8222 444553540000", "094601FF 4C7F 11D1 8222 444553540000", "09460001 4C7F 11D1 8222 444553540000"

-- 2/16
ENCR_REPRESENT = "134A"
ENCR_REPRESENT_KEY = {"01FF", "1345", "1346"}

-- Имлпементация ебучего ФЛАПа
header = b'\x2a'..bytes([channel])..(length).to_bytes(2, 'big')..b'\x00\x00'
packet = header..data

-- FLAP основной
function send_flap(sock, channel, data)
  length = len(data) + 4
  sock.send(packet)
  print(packet, " FLAP x00")
end

function receive_flap(sock)
  _, channel, sequence, length = struct.unpack(">BBHH", header)
end

-- НУ НЕ ЗАВИСИМЫЙ ЖЕ!
function fucker()
  device_id = b'\x00\x00\x00\x01'
  flags = b'\x00\x00\x00\x00'

  send_flap(sock, 1, device_id..flags)
end
