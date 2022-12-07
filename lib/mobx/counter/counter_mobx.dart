import 'package:mobx/mobx.dart';
part 'counter_mobx.g.dart';

class MobxCounter = _MobxCounterBase with _$MobxCounter;

abstract class _MobxCounterBase with Store {

  // Mobx genel olarak bu şekilde;

  // Mobx statemanagement yöntemini kullanmak için eklememiz gereken
  // paketler ; 
  // -) mobx
  // -) flutter_mobx
  // -) build_runner
  // -) mobx_codegen


  // Mobx ile statemanagement yapmak istediğimizde
  // bizim için otomatik olarak bir dart dosyası oluşturuyor
  // ve bizim yaptığımız işlemleri arka tarafta kendisi
  // otomatik olarak işliyor
  // Programda bir değişiklik yaptığımızda kaydetmemiz gerekiyor
  // Biz bu sınıfta işlemleri gerçekleştirdikten sonra arka tarafta 
  // işlemlerimizi işleyen dart dosyası oluşturmak için
  // flutter packages pub run build_runner build

  // Mobx state mangement yöntemini kullanmak için mobx'i oluşturduk
  // mobx yönteminde değişkenlerde olan değişiklikleri dinlemek için 
  // @observable => kullanıyoruz
  @observable
  int degisken1 = 0;

  @observable
  int degisken2 = 1;

  // methodları dinlemek için
  // @action => diyoruz. 
  @action
  void metod() => print(degisken1);

  // Birden fazla değişkenimiz varsa ve onlar üzerinde 
  // işlemler yapıyorsak
  // değişiklikleri dinlemesi için
  // @computed => kullanıyoruz
  @computed
  int get toplam => degisken1 + degisken2;

  // Counter uygulamamız için;
  // dinleyeceğimiz değişken
  @observable
  int counter = 0;

  // Counter uygulamamız için;
  // dinleyeceğimiz değişken
  @action
  arttir(){
    counter++;
    // Aşağıdaki listenin otomatik olarak 
    // güncellendiğini bu şekilde görebiliriz
    list.add(counter);
    list.forEach((element) => print(element));
  }

  // Counter uygulamamız için;
  // dinleyeceğimiz değişken
  @action
  azalt(){
    counter--;
    // Aşağıdaki listenin otomatik olarak 
    // güncellendiğini bu şekilde görebiliriz
    list.add(counter);
    list.forEach((element) => print(element));
  }

  // Uygulama içerisinde kullanacağımız reactionları tutabildiğimiz yapılar; 
  // Bu reaksiyonları uygulamanın initstate'i içerisinde başlatabiliriz.
  // ve gerçekleşen bu reaksiyonlara göre nasıl bir işlem yapacağımızı belirleyebiliyoruz.
  // uygulamanın initstate'inde başlatıyoruz ve artık uygulama bu reactionu takip ediyor

  // Eğer counter değişkenim 10'un üzerinde veya 0'ın altında değer alırsa bir mesaj yazdıralım 
  @observable
  String mesaj = "";

  List<ReactionDisposer>? _reactions;

  // bu fonksiyonu state management yapacağım sayfada çağırırsam
  // sürekli olarak takip edecek

  void setup() {
    [
      reaction<int>((_) => counter, (value){mesaj = value >= 10 || value < 1 ? "Tehlike" : "Tehlikede Değil";}), // her bir duruma göre yapmasını istediğimiz işlevi yapar (value var)
      autorun((_){print("Count is $counter");}), // her defasında çalışır
      when((_) => counter > 10, (){print("Count has reached the limit of 10");}), // herhangi bir duruma göre bir işlem gerçekleştirir. Ama o durumu control etmez (value yok)

    ];
  }

  // O sayfadan çıktığımda program takip etmesin
  void dispose(){
    // bütün respose'ları kapatmış olduk
    _reactions!.forEach((reactionDispos) { reactionDispos(); });
  }

  // oluşturmuş olduğumuz reaction ReactionDisposer tipinde olmak zorunda 



  // Aynı zamanda Mobx içerisindeki observal tipleride kullanabiliriz

  final list = ObservableList<int>.of([1]);

  // @observable ObservableFuture<void>? loadOperation = null;

  // @computed
  // bool get hasResults =>
  //     loadOperation != null &&
  //     loadOperation!.status == FutureStatus.fulfilled;

}