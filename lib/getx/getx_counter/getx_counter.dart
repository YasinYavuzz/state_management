// GET X
/*
  - State Management
  - Dependency Injection => Programı oluşturan yazılımların olabildiğince birbirinden bağımsız hareket ettiği ve bağımlılık oluşturacak parçalarının ayrılıp, 
    bunların sisteme dışarıdan verilmesine (enjekte edilmesine) denir.
  - Route Management => Getx aynı zamanda sayfalar arasındaki geçişleride kontrol eder.

  - Getx ile => viewların parçalanıp yönetilmesi, logic tarafında yayın yapılması, 
    business (verilerin nasıl oluşturulabileceğini, saklanabileceğini ve değiştirilebileceğini belirleyen katman) - (backend),
    dependency injection dışarıdan verilerin enjecte edilmesi,
    Navigaton sayfalar arası geçişleri organize eder.
    Getx aynı zamanda oldukça performanslıdır ve kullanımı kolaydır.

    Getx state management tarafında : 
    - Simple State Management(GetBuilder),
    - Reactive(Duyarlı) State Management(GetX)

  - Rotalar arasında gezinmek için context'e ihtiyaç duyulmaz
  - aslında hiçbir işlem için contexte gerek yoktur. widget ağacına 
  - bağımlılığı yoktur.

  - Biz contexti kullanırken aslında oradaki widgeta yapmak 
  - istediğimiz enjekte ediyoruz fakat getx kendi dependency
  - enjectionunu kullandığı için bizim bunu context ile widget
  - ağacına eklememize gerek yok.

  - dependency injection ile katmanlar birbirinden tamamen ayrılır
  - getx ile bunların hepsinin kullanımıda zorunlu değildir
  - sadece state management için kullanılacaksa sadece arka tarafta
  - o kodlar derlenecektir.
  - Sadece navigator işlemleri kullanılırsa state management yönteminden
  - hiçbir şey derlenmez bu da performansı artıran unsurlardır


*/

// GetX ile state Yönetiminden başlayalım
/**
 * GetX'in iki farklı durum yöneticisi vardır;
 * Bunlar: 
 * Getx state management tarafında : 
    - Simple State Management(GetBuilder),
    - Reactive(Duyarlı) State Management(GetX)
 * Burada asıl kullanılacak olan durum yönetimi reactive (duyarlı) state management yöntemi
 * Bizim için bazı işleri otomatik olarak yapar. StreamController
 * StreamBuilder oluşturmamıza gerek kalmaz anlar bunu
 * 
 * GetX ile Reaktif Durum Yönetimi
 * setState kullanmak kadar basittir.
 * 
 * 
 */