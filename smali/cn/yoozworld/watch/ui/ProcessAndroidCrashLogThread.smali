.class public Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;
.super Ljava/lang/Thread;
.source "ProcessAndroidCrashLogThread.java"


# static fields
.field public static final CRASH_LOG_SUFFIX:Ljava/lang/String; = "crash-"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;->mCtx:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/io/File;)V
    .registers 3

    .line 73
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "crashLogFile"

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 101
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_38

    .line 103
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_35

    goto :goto_10

    .line 109
    :cond_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_35
    move-exception p0

    move-object v1, v2

    goto :goto_39

    :catchall_38
    move-exception p0

    :goto_39
    if-eqz v1, :cond_3e

    .line 109
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 110
    :cond_3e
    throw p0
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 35
    iget-object v0, p0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "processCrashedLogs"

    .line 37
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;->mCtx:Landroid/content/Context;

    const-string v1, "watchSdkLog"

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 40
    iget-object v0, p0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;->mCtx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    .line 42
    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_12

    :catch_24
    move-exception v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    .line 47
    :cond_29
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    return-void

    .line 50
    :cond_35
    new-instance v0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread$1;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread$1;-><init>(Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 58
    array-length v1, v0

    if-nez v1, :cond_44

    goto :goto_8c

    .line 60
    :cond_44
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    array-length v2, v0

    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v2, :cond_8c

    aget-object v4, v0, v3

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "crash-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ".log"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    new-instance v5, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :try_start_7d
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception v4

    .line 92
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_8c
    :goto_8c
    return-void
.end method
