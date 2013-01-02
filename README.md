pushClientIOS
=============

Este é um projeto bem simples apenas para exemplificar o uso de notificações push da apple.

Trata-se de uma aplicação em branco que ao ser iniciada solicita um registro destes dispositivo para receber notificações push.


## Passos para criar o projeto

### 1 - Criamos um projeto do tipo Single View (pode ser qualquer um...)

### 2 - Modificamos a classe AppDelegate para registrar o aplicativo na apple e obter o token que representará o dispositivo.

Registrando o dispositivo
```objectivec
    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];    
        return YES;
    }
```

Recebendo o token ( neste momento deve-se guardar o token ou envia-lo para a aplicação associa-lo a um cpf por exemplo)
```objectivec
    - (void)application:(UIApplication*)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken{
          NSLog(@"My token is: %@", deviceToken);
    }
```
*Obs: Nesta classe tem um método utilitário para formatar o token...


### 3 - Assinar o aplicativo com o perfil criado para esta aplicação (isso esta melhor explicado na doc do server)

O perfil utilizado para o push deve ser o mesmo que foi configurado para o aplicativo e dispositivos. 
Também deve ser o mesmo utilizado para o servidor.

Somente é possível testar o push em um dispositivo, no simulador não funciona.

## Referências:

* [Apple Developer](http://developer.apple.com/library/mac/#documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008194-CH1-SW1)
* [raywenderlich : Apple Push Notification Services Tutorial](http://www.raywenderlich.com/3443/apple-push-notification-services-tutorial-part-12)
