# Applied Patches Table

| Файл | Описание изменений | Обоснование |
| :--- | :--- | :--- |
| `smali_classes2/cn/baos/watch/sdk/util/LogcatThread.smali` | Методы `run`, `startThread`, `startRunThread` заменены на `return-void`. | Полное отключение фонового сбора логов через `logcat` на уровне класса. |
| `smali_classes2/cn/baos/watch/sdk/utils/LogcatThread.smali` | Методы `run`, `startThread`, `startRunThread` заменены на `return-void`. | Дубликат класса SDK, отключен аналогично. |
| `smali_classes2/cn/yoozworld/watch/ui/HomeActivity.smali` | Удалены вызовы `LogcatThread`. Восстановлен `postDelayed` для крэш-логов. | Очистка кода от мусорных патчей, возврат фонового сбора локальных крэш-логов. |
| `smali_classes2/cn/baos/watch/sdk/util/DeviceIdUtil.smali` | Методы `getDeviceId`, `getAndroidId` и др. возвращают `yooz_private_id`. | Privacy hardening: маскировка реальных идентификаторов устройства. |
| `smali_classes2/com/google/android/datatransport/cct/CctTransportBackend.smali` | Метод `doSend` всегда возвращает `null`. | Privacy hardening: блокировка отправки телеметрии в Google CCT. |
| `smali_classes3/com/google/firebase/analytics/FirebaseAnalytics.smali` | Методы `logEvent` и настройки заглушены (`return-void`). | Privacy hardening: полное отключение событий Firebase Analytics. |
| `smali_classes2/com/google/android/gms/internal/measurement/zzdy.smali` | Заглушены 8 методов логирования событий и параметров. | Privacy hardening: блокировка аналитики на уровне GMS Measurement SDK. |
| `smali_classes2/com/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin.smali` | Метод `getContextData()` возвращает статические фейковые данные. | Подмена данных окружения (device_id, fingerprint и др.) для AWS Cognito. |
| `smali_classes2/com/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin.smali` | `getEndpointId` возвращает фейк, `onAttachedToEngine` заглушен. | Privacy hardening: отключение телеметрии AWS Pinpoint. |
| `smali_classes3/com/google/firebase/installations/FirebaseInstallations.smali` | `getId()` возвращает `Task` с `yooz_private_id`. | Privacy hardening: маскировка Firebase Installation ID. |
| `smali_classes3/io/flutter/plugins/GeneratedPluginRegistrant.smali` | Добавлены `Throwable` catch-блоки вокруг регистрации плагинов. | Повышение стабильности: предотвращение падения при ошибке одного плагина. |
| `apktool.yml` | Изменен `minSdkVersion` на 28, добавлен `targetSdkVersion: 34`. Исправлен путь в `doNotCompress`. | Синхронизация с манифестом и современными стандартами. |

## Не затронуто (Out of Scope)
*   **allowBackup=true**: Возможность резервного копирования данных через ADB сохранена.
*   **READ_LOGS**: Разрешение на чтение логов в манифесте присутствует.
*   **NotificationListener**: Экспортируемый сервис прослушивания уведомлений не изменялся.
*   **Dart Layer**: Сетевые запросы к `c.taqwa.io`, `iot-watch.baos.cn`, `ipify`, `ip-api.com` в Flutter-коде остаются активными.
