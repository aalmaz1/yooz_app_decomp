.class public Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;
.super Ljava/lang/Object;
.source "CallStateManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;


# instance fields
.field isQuietByWatch:Z

.field private mCallStateReceiver:Lcn/baos/watch/sdk/old/callcontroller/CallStateReceiver;

.field private mContext:Landroid/content/Context;

.field oldRingerMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->isQuietByWatch:Z

    const/4 v0, 0x2

    .line 137
    iput v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->oldRingerMode:I

    return-void
.end method

.method private answerRingingCall_4_1(Landroid/content/Context;)V
    .registers 11

    const-string v0, "android.intent.extra.KEY_EVENT"

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const-string v2, "input keyevent "

    const-string v3, "4.1\u4e4b\u540e\u7248\u672c\u63a5\u542c\u7535\u8bdd"

    .line 206
    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "audio"

    .line 207
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    const-string v4, "HTC"

    .line 210
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_27

    move v3, v5

    goto :goto_28

    :cond_27
    move v3, v6

    :goto_28
    if-eqz v3, :cond_2d

    .line 212
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->broadcastHeadsetConnected(Landroid/content/Context;)V

    :cond_2d
    const/16 v4, 0x4f

    .line 216
    :try_start_2f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v7, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_47} :catch_4a
    .catchall {:try_start_2f .. :try_end_47} :catchall_48

    goto :goto_6e

    :catchall_48
    move-exception v0

    goto :goto_74

    :catch_4a
    :try_start_4a
    const-string v2, "android.permission.CALL_PRIVILEGED"

    .line 221
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/view/KeyEvent;

    invoke-direct {v8, v6, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 224
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v5, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_4a .. :try_end_6e} :catchall_48

    :goto_6e
    if-eqz v3, :cond_73

    .line 232
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->broadcastHeadsetConnected(Landroid/content/Context;)V

    :cond_73
    return-void

    :goto_74
    if-eqz v3, :cond_79

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->broadcastHeadsetConnected(Landroid/content/Context;)V

    .line 234
    :cond_79
    throw v0
.end method

.method private broadcastHeadsetConnected(Landroid/content/Context;)V
    .registers 5

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    const-string v2, "mysms"

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 246
    :try_start_1a
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public static endCall(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    const-string v0, "telecom"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const-string v1, "android.permission.ANSWER_PHONE_CALLS"

    .line 115
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 118
    :cond_11
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    const-string v0, "phone"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1f

    return-void

    .line 122
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getITelephony"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_39

    return-void

    .line 126
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "endCall"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;
    .registers 2

    .line 39
    sget-object v0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->instance:Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->instance:Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->instance:Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->instance:Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    return-object v0
.end method


# virtual methods
.method public answerRingingCall()V
    .registers 7

    :try_start_0
    const-string v0, "4.1\u4e4b\u524d\u7248\u672c\u63a5\u542c\u7535\u8bdd"

    .line 190
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "android.os.ServiceManager"

    .line 191
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "phone"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 193
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_37

    :catch_2e
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->answerRingingCall_4_1(Landroid/content/Context;)V

    :goto_37
    return-void
.end method

.method public endCall()V
    .registers 8

    const-string v0, "exception:"

    :try_start_2
    const-string v1, "android.os.ServiceManager"

    .line 87
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 88
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "phone"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 90
    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2a} :catch_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2a} :catch_49
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2a} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2a} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2a} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2a} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2a} :catch_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_74

    :catch_2b
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74

    :catch_30
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_74

    :catch_35
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_74

    :catch_3a
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_74

    :catch_3f
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_74

    :catch_44
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_74

    :catch_49
    move-exception v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_74

    :catch_5f
    move-exception v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_74
    return-void
.end method

.method public quietCallOff()V
    .registers 6

    .line 161
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 162
    new-instance v1, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager$1;-><init>(Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;)V

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public quietCallOn()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 147
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->oldRingerMode:I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9759\u97f3\u65e7\u6a21\u5f0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->oldRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_33

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v1, 0x2

    .line 151
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    const-string v0, "RINGING \u5df2\u88ab\u9759\u97f3"

    .line 152
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    :cond_33
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->isQuietByWatch:Z

    return-void
.end method

.method public registerCallStateListener()V
    .registers 4

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcn/baos/watch/sdk/old/callcontroller/CallStateReceiver;

    invoke-direct {v1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateReceiver;-><init>()V

    iput-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mCallStateReceiver:Lcn/baos/watch/sdk/old/callcontroller/CallStateReceiver;

    .line 71
    iget-object v2, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4

    .line 50
    iput-object p1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    .line 52
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/baos/watch/sdk/old/callcontroller/CallListenService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public stopService()V
    .registers 5

    const-string v0, "\u7ec8\u6b62\u7535\u8bdd\u670d\u52a1\u76d1\u542c"

    .line 59
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    const-class v3, Lcn/baos/watch/sdk/old/callcontroller/CallListenService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public unRegisterCallStateListener()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->mCallStateReceiver:Lcn/baos/watch/sdk/old/callcontroller/CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "\u53d6\u6d88\u6765\u7535\u76d1\u542c\u5e7f\u64ad"

    .line 79
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
