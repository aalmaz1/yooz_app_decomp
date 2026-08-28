.class public Lcn/baos/watch/sdk/code/ProcessCrashLogThread;
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
    iput-object p1, p0, Lcn/baos/watch/sdk/code/ProcessCrashLogThread;->mCtx:Landroid/content/Context;

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
    .registers 1

    return-void
.end method
