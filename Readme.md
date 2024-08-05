# Arch Linux Başlangıç Scripti

Bu script, Arch Linux sisteminizi yeni başlayanlar için bazı uygulamalarla donatmayı amaçlayan bir araçtır. Script, Arch Linux tabanlı sistemlerde yaygın olarak kullanılan yazılımların kurulumunu otomatikleştirir.

## Özellikler

- **Yay Paket Yöneticisi Kurulumu:** Script, `yay` paket yöneticisini sisteminize kurar. `yay`, Arch Linux tabanlı dağıtımlarda AUR (Arch User Repository) paketlerini yönetmenizi sağlar.
- **Anydesk Kurulumu:** `flatpak` ile Anydesk kurulumu sağlar.
- **Whatsapp Kurulumu:** `flatpak` ile Whatsapp kurulumu sağlar.

## Kullanım

1. **Script'i indirin:**
    ```bash
    git clone https://github.com/range79/archnb.git
    ```

2. **Script'in bulunduğu dizine gidin:**
    ```bash
    cd archnb
    ```

3. **Script'i çalıştırın:**
    ```bash
    sudo bash arch.sh
    ```

## Script Açıklaması

Script çalıştırıldığında aşağıdaki adımları takip eder:

1. **Script Başlangıcı:** Kullanıcıdan script'i başlatmak isteyip istemediğini sorar.
2. **Sudo Şifresi:** `sudo` komutları için gerekli olan şifreyi alır ve doğrular.
3. **Yay Paket Yöneticisi Kurulumu:** `yay` paket yöneticisinin kurulumu yapar.
4. **Uygulama Seçimi:** Kullanıcıya kurulacak uygulamaları seçme imkanı sunar ve seçilen uygulamaları kurar.
5. **Kurulum Tamamlandı:** İşlemin tamamlandığını bildirir.

## Gereksinimler

- **Arch Linux** veya Arch tabanlı bir dağıtım.
- **`sudo`** yetkileri.
- **`git`** ve **`flatpak`** kurulu olmalıdır.




## sürüm değişiklik günlüğü
**1.0.0** - bu benim ilk versiyonum olduğu için daha fazla uygulama eklemedim
Gelecek sürümlerde ek uygulamalar ekleyeceğim
**1.0.1**-bu surumde yay paket yoneticisinin inmesiyle bagli buglar duzeltildi




## İletişim

- **GitHub:** [@range79](https://github.com/range79)
- **Telegram:** [@Onlyrange](https://t.me/Onlyrange)




## Lisans

Bu script [MIT Lisansı](https://opensource.org/licenses/MIT) altında lisanslanmıştır.


