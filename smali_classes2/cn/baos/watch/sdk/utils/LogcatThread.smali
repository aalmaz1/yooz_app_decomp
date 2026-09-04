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
    .locals 1

    sget-object v0, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss\'.log\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private writeTofile(Ljava/lang/String;)V
    .locals 9

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
    :try_start_0
    iget-object v3, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    sget-object v3, Lcn/baos/watch/sdk/utils/LogcatThread;->logFileSdf:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    .line 244
    :cond_0
    iget-object v3, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 248
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

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

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x40000000

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

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
    :cond_3
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->fileLogPath:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 266
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 270
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_5

    .line 270
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :cond_5
    :goto_4
    throw p1
.end method


# virtual methods
.method public cleanLogFiles()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 186
    array-length v1, v0

    if-gtz v1, :cond_1

    goto/16 :goto_1

    .line 189
    :cond_1
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

    if-le v1, v2, :cond_2

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
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 218
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public endThread()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    return-void
.end method

.method public endrunFlag()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z

    return-void
.end method

.method public getAllDataFileName()Ljava/util/ArrayList;
    .locals 9
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

    if-eqz v1, :cond_1

    .line 281
    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 282
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 283
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

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

    if-gtz v4, :cond_0

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

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLogFilePath()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->fileLogPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmCurFilename()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->mCurFilename:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 8

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
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 122
    iget-boolean v6, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v6, :cond_2

    .line 139
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_1

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    .line 125
    :cond_2
    :try_start_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 127
    :cond_3
    iget-boolean v6, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v6, :cond_5

    .line 139
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_4

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    .line 130
    :cond_5
    :try_start_6
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

    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 139
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_0

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v3

    move-object v5, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_8

    :catch_4
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    :goto_4
    move-object v2, v3

    .line 134
    :goto_5
    :try_start_8
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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_7

    .line 139
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz v4, :cond_0

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 143
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v5

    :goto_8
    if-eqz v2, :cond_8

    .line 139
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_a

    :cond_8
    :goto_9
    if-eqz v4, :cond_9

    .line 141
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_b

    .line 143
    :goto_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :cond_9
    :goto_b
    throw v0

    :cond_a
    const-string v0, "LogcatThread end ******"

    .line 147
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setLogDir(Ljava/lang/String;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    .line 55
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public startRunThread()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    return-void
.end method

.method public startThread()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runFlag:Z

    .line 73
    invoke-virtual {p0}, Lcn/baos/watch/sdk/utils/LogcatThread;->start()V

    return-void
.end method

.method public startrunFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/baos/watch/sdk/utils/LogcatThread;->runLogFlag:Z

    return-void
.end method
