# Arch Linux Başlangıç Scripti

Bu script, Arch Linux sisteminizi yeni başlayanlar için bazı temel uygulamalarla donatmayı amaçlayan otomatik bir kurulum aracıdır. Arch Linux ve türevlerinde yaygın kullanılan yazılımların kolayca kurulmasını sağlar.

## Kullanım

1. **Script’i indirin:**
    ```bash
    git clone https://github.com/range79/archnb.git
    ```

2. **Script’in bulunduğu dizine geçin:**
    ```bash
    cd archnb/
    ```

3. **Script’e çalıştırma izni verin:**
    ```bash
    chmod +x arch.sh
    ```

4. **Script’i çalıştırın:**
    ```bash
    ./arch.sh
    ```

## Script İşleyişi

Script çalıştırıldığında şu adımları takip eder:

1. **Başlangıç Onayı:** Kullanıcıdan script’i başlatmak isteyip istemediği sorulur.  
2. **Sudo Yetkisi:** `sudo` komutları için şifre istenir ve doğrulanır.  
3. **Yay Paket Yöneticisi Kurulumu:** `yay` paket yöneticisi otomatik olarak kurulur.  
4. **Uygulama Seçimi:** Kullanıcıya hangi uygulamaların kurulacağı sorulur ve seçilenler yüklenir.  
5. **Kurulum Tamamlandı:** İşlemin başarıyla tamamlandığı kullanıcıya bildirilir.

## Gereksinimler

- Arch Linux veya Arch tabanlı bir dağıtım.  
- `sudo` yetkisi.  
- `git` ve `flatpak` paketlerinin kurulu olması.

## Sürüm Değişiklik Günlüğü

### 1.0.0
- İlk sürüm, temel uygulamalar eklendi.  
- Gelecek sürümlerde yeni uygulamalar planlanıyor.

### 1.0.1
- Yay paket yöneticisi kurulumu ile ilgili hatalar giderildi.

### 1.0.2
- Flatpak, sistemde yüklü değilse otomatik kurulacak.

### 1.1.0
- Visual Studio Code ve modlu Discord client (Vesktop) eklendi.  
- Yay paket yöneticisi manuel kurulumdan otomatik kurulum sistemine geçildi.

### 2.0.0
- Modlu Discord client “Vesktop” olarak adlandırıldı.  
- Yay paket yöneticisi kurulumu ile ilgili sorunlar çözüldü.  
- Uygulama modüler hale getirildi:  
  - `logo.sh`: Uygulama başlangıcında gösterilen logo.  
  - `yay_installer.sh`: Yay paket yöneticisini indirip kuran betik.  
  - `check_distro_name`: Dağıtım ismini kontrol eder, Arch değilse script durur.  
- Bir uygulama kurulurken hata alınsa da script tamamen durmaz, diğer kurulumlara devam eder.

## İletişim

- **GitHub:** [@range79](https://github.com/range79)  
- **Telegram:** [@Onlyrange](https://t.me/Onlyrange)

## Lisans

Bu script [MIT Lisansı](LICENSE) ile lisanslanmıştır.
