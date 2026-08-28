.class public Lcn/baos/watch/sdk/utils/LogcatThread;
.super Ljava/lang/Thread;
.source "LogcatThread.java"


# static fields
.field public static final LOG_DIR_NAME:Ljava/lang/String; = "watchSdkLog"

.field private static final LOG_FILE_MAX_COUNT:I = 0x2

.field private static final LOG_FILE_MAX_SIZE:I = 0x40000000

.field private static final LOG_TAG:Ljava/lang/String; = "w100"

.field private static logFileSdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private fileLogPath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mCurFilename:Ljava/lang/String;

.field private runFlag:Z

.field private runLogFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetlogFileSdf()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss\'.log\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z

    .line 42
    iput-object p1, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCtx:Landroid/content/Context;

    .line 43
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/watchSdkLog"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-----<<<>>>>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_56

    .line 47
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_56
    return-void
.end method

.method private writeTofile(Ljava/lang/String;)V
    .registers 11

    const-string v0, "log file size > 1073741824\r\n"

    const-string v1, "\u65e5\u5fd7\u6587\u4ef6\u4e0d\u5b58\u5728,\u521b\u5efa\u6587\u4ef6:"

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 239
    :try_start_18
    iget-object v3, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 240
    sget-object v3, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    .line 244
    :cond_2d
    iget-object v3, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    return-void

    .line 248
    :cond_36
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    goto :goto_93

    .line 252
    :cond_5b
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x40000000

    cmp-long v1, v5, v7

    if-lez v1, :cond_93

    const-string v1, "\u65e5\u5fd7\u6587\u4ef6\u8fc7\u5927,\u91cd\u65b0\u521b\u5efa\u6587\u4ef6"

    .line 253
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 255
    sget-object v1, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    .line 256
    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    :cond_93
    :goto_93
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->fileLogPath:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_9f} :catch_b5
    .catchall {:try_start_18 .. :try_end_9f} :catchall_b3

    .line 263
    :try_start_9f
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a9} :catch_b0
    .catchall {:try_start_9f .. :try_end_a9} :catchall_ad

    .line 270
    :try_start_a9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_bf

    goto :goto_c3

    :catchall_ad
    move-exception p1

    move-object v2, v0

    goto :goto_c4

    :catch_b0
    move-exception p1

    move-object v2, v0

    goto :goto_b6

    :catchall_b3
    move-exception p1

    goto :goto_c4

    :catch_b5
    move-exception p1

    .line 266
    :goto_b6
    :try_start_b6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_b3

    if-eqz v2, :cond_c3

    .line 270
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c3

    :catch_bf
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c3
    :goto_c3
    return-void

    :goto_c4
    if-eqz v2, :cond_ce

    .line 270
    :try_start_c6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :cond_ce
    :goto_ce
    throw p1
.end method


# virtual methods
.method public cleanLogFiles()V
    .registers 5

    .line 155
    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 159
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 186
    array-length v1, v0

    if-gtz v1, :cond_19

    goto/16 :goto_9c

    .line 189
    :cond_19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u96c6\u5408\u7684\u5217\u8868:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcn/baos/watch/sdk/utils/LogcatThread$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/utils/LogcatThread$1;-><init>(Lcn/baos/watch/sdk/utils/LogcatThread;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u6587\u4ef6\u5217\u8868:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_7e

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete fname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 216
    :cond_7e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9c

    .line 218
    :try_start_84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_97} :catch_98

    goto :goto_88

    :catch_98
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public endThread()V
    .registers 2

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    return-void
.end method

.method public endrunFlag()V
    .registers 2

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z

    return-void
.end method

.method public getAllDataFileName()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 281
    array-length v2, v1

    if-lez v2, :cond_87

    const/4 v2, 0x0

    .line 282
    :goto_16
    array-length v3, v1

    if-ge v2, v3, :cond_87

    .line 283
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 284
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6587     \u4ef6\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 286
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v7, 0x40000000

    cmp-long v4, v4, v7

    if-gtz v4, :cond_84

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_87
    return-object v0
.end method

.method public getLogFilePath()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->fileLogPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmCurFilename()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 9

    .line 104
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "\u672c\u5730\u5b58\u50a8\u65e5\u5fd7\u7ebf\u7a0b\u542f\u52a8"

    .line 107
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 108
    :cond_d
    :goto_d
    iget-boolean v2, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    if-eqz v2, :cond_e6

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :try_start_14
    const-string v3, "logcat"

    .line 113
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_9d
    .catchall {:try_start_14 .. :try_end_26} :catchall_9a

    .line 118
    :try_start_26
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_97
    .catchall {:try_start_26 .. :try_end_30} :catchall_95

    .line 121
    :goto_30
    :try_start_30
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    .line 122
    iget-boolean v6, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_93
    .catchall {:try_start_30 .. :try_end_38} :catchall_d2

    if-nez v6, :cond_48

    .line 139
    :try_start_3a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_47

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    :goto_47
    return-void

    .line 125
    :cond_48
    :try_start_48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_30

    .line 127
    :cond_53
    iget-boolean v6, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_93
    .catchall {:try_start_48 .. :try_end_55} :catchall_d2

    if-nez v6, :cond_65

    .line 139
    :try_start_57
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_64

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    return-void

    .line 130
    :cond_65
    :try_start_65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/baos/watch/sdk/utils/LogcatThread;->writeTofile(Ljava/lang/String;)V

    goto :goto_30

    .line 132
    :cond_86
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_89} :catch_93
    .catchall {:try_start_65 .. :try_end_89} :catchall_d2

    .line 139
    :try_start_89
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_d

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_91} :catch_c4

    goto/16 :goto_d

    :catch_93
    move-exception v2

    goto :goto_a1

    :catchall_95
    move-exception v0

    goto :goto_d4

    :catch_97
    move-exception v3

    move-object v5, v2

    goto :goto_a0

    :catchall_9a
    move-exception v0

    move-object v4, v2

    goto :goto_d4

    :catch_9d
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    :goto_a0
    move-object v2, v3

    .line 134
    :goto_a1
    :try_start_a1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogcatThread exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_a1 .. :try_end_be} :catchall_d2

    if-eqz v5, :cond_c6

    .line 139
    :try_start_c0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_c6

    :catch_c4
    move-exception v2

    goto :goto_cd

    :cond_c6
    :goto_c6
    if-eqz v4, :cond_d

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cb} :catch_c4

    goto/16 :goto_d

    .line 143
    :goto_cd
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    :catchall_d2
    move-exception v0

    move-object v2, v5

    :goto_d4
    if-eqz v2, :cond_dc

    .line 139
    :try_start_d6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_dc

    :catch_da
    move-exception v1

    goto :goto_e2

    :cond_dc
    :goto_dc
    if-eqz v4, :cond_e5

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e1} :catch_da

    goto :goto_e5

    .line 143
    :goto_e2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :cond_e5
    :goto_e5
    throw v0

    :cond_e6
    const-string v0, "LogcatThread end ******"

    .line 147
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setLogDir(Ljava/lang/String;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 55
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_19

    .line 56
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_19
    return-void
.end method

.method public startRunThread()V
    .registers 2

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    return-void
.end method

.method public startThread()V
    .registers 2

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    .line 73
    invoke-virtual {p0}, Lcn/baos/watch/sdk/utils/LogcatThread;->start()V

    return-void
.end method

.method public startrunFlag()V
    .registers 2

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z

    return-void
.end method
