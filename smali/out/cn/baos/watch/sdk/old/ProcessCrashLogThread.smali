.class public Lcn/baos/watch/sdk/old/ProcessCrashLogThread;
.super Ljava/lang/Thread;
.source "ProcessCrashLogThread.java"


# static fields
.field public static final CRASH_LOG_SUFFIX:Ljava/lang/String; = "crash-"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/baos/watch/sdk/old/ProcessCrashLogThread;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 91
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_38

    .line 93
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_35

    goto :goto_10

    .line 99
    :cond_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 101
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

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 100
    :cond_3e
    throw p0
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "processCrashedLogs"

    .line 34
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/baos/watch/sdk/old/ProcessCrashLogThread;->mCtx:Landroid/content/Context;

    const-string v1, "watchSdkLog"

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 37
    iget-object v0, p0, Lcn/baos/watch/sdk/old/ProcessCrashLogThread;->mCtx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    .line 39
    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_d

    :catch_1f
    move-exception v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .line 44
    :cond_24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    .line 47
    :cond_30
    new-instance v0, Lcn/baos/watch/sdk/old/ProcessCrashLogThread$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/old/ProcessCrashLogThread$1;-><init>(Lcn/baos/watch/sdk/old/ProcessCrashLogThread;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 55
    array-length v1, v0

    if-nez v1, :cond_3f

    goto :goto_86

    .line 58
    :cond_3f
    array-length v1, v0

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v1, :cond_86

    aget-object v3, v0, v2

    .line 61
    :try_start_45
    invoke-static {v3}, Lcn/baos/watch/sdk/old/ProcessCrashLogThread;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_7f

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "APP\u5954\u6e83\u4e86: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "crash-"

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

    new-instance v6, Lcn/baos/watch/sdk/old/ProcessCrashLogThread$2;

    invoke-direct {v6, p0, v3}, Lcn/baos/watch/sdk/old/ProcessCrashLogThread$2;-><init>(Lcn/baos/watch/sdk/old/ProcessCrashLogThread;Ljava/io/File;)V

    invoke-static {v5, v4, v6}, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->send(Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V

    .line 80
    :try_start_72
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_79} :catch_7a

    goto :goto_83

    :catch_7a
    move-exception v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_83

    :catch_7f
    move-exception v3

    .line 63
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_86
    :goto_86
    return-void
.end method
