.class public Lcn/baos/watch/sdk/util/ShareZipFileUtils;
.super Ljava/lang/Object;
.source "ShareZipFileUtils.java"


# static fields
.field public static final LOG_DIR_NAME:Ljava/lang/String; = "watchSdkZip"

.field private static instance:Lcn/baos/watch/sdk/util/ShareZipFileUtils;

.field private static logFileSdf:Ljava/text/SimpleDateFormat;

.field private static mContext:Landroid/app/Activity;


# instance fields
.field private filePath:Ljava/lang/String;

.field private mCurFilename:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Wv-x77UeLbf7oLBAHq32I0rVJIQ(Lcn/baos/watch/sdk/util/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->lambda$shareZipFile$1(Lcn/baos/watch/sdk/util/ZipShareCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xblrCHxR6kzBJ7VzYkYnSaAQ--c(Lcn/baos/watch/sdk/util/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->lambda$shareZipFile$0(Lcn/baos/watch/sdk/util/ZipShareCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss\'.zip\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->logFileSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    return-void
.end method

.method public static filterRecentFiles(Ljava/util/List;I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 143
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    add-long/2addr v5, v7

    sub-long v5, v1, v5

    int-to-long v7, p1

    const-wide/32 v9, 0x36ee80

    mul-long/2addr v7, v9

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File date:  currentTimeMillis: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "----x:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "----"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "----hour_x:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 153
    div-long v9, v5, v9

    cmp-long v4, v5, v7

    if-gtz v4, :cond_0

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File date:  add"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse date from file: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcn/baos/watch/sdk/util/ShareZipFileUtils;
    .locals 2

    .line 40
    sget-object v0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    invoke-direct {v1}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    return-object v0
.end method

.method private synthetic lambda$shareZipFile$0(Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->shareFile(Ljava/io/File;)V

    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1}, Lcn/baos/watch/sdk/util/ZipShareCallback;->onShareEnd()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shareZipFile$1(Lcn/baos/watch/sdk/util/ZipShareCallback;I)V
    .locals 7

    const-string v0, "---zipStatus-->"

    const-string v1, "---zipStatus-->file="

    const-string v2, "\u5386\u53f2\u6587\u4ef6   \u6279\u91cf\uff1a"

    const-string v3, "\u5386\u53f2\u6587\u4ef6\uff1a"

    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-interface {p1}, Lcn/baos/watch/sdk/util/ZipShareCallback;->onShareStart()V

    .line 79
    :cond_0
    new-instance v4, Lcn/baos/watch/sdk/utils/LogcatThread;

    sget-object v5, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcn/baos/watch/sdk/utils/LogcatThread;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v4}, Lcn/baos/watch/sdk/utils/LogcatThread;->endThread()V

    .line 84
    invoke-virtual {v4}, Lcn/baos/watch/sdk/utils/LogcatThread;->getAllDataFileName()Ljava/util/ArrayList;

    move-result-object v5

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    invoke-static {v5, p2}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filterRecentFiles(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    sget-object v2, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->logFileSdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filePath:Ljava/lang/String;

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 96
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, "hour:"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v6, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "----mCurFilename="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-static {v3, p2}, Lcn/baos/watch/sdk/utils/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p2

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 105
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcn/baos/watch/sdk/util/ShareZipFileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/baos/watch/sdk/util/ShareZipFileUtils$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/util/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    invoke-virtual {v4}, Lcn/baos/watch/sdk/utils/LogcatThread;->startThread()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public setContext(Landroid/app/Activity;)V
    .locals 2

    .line 51
    sput-object p1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/watchSdkZip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filePath:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-----<<<>>>>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 54
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_0
    :try_start_0
    sget-object p1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->logFileSdf:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->filePath:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 63
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shareFile(Ljava/io/File;)V
    .locals 4

    .line 164
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "*/*"

    .line 169
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    sget-object p1, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shareZipFile(ILcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/util/ShareZipFileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcn/baos/watch/sdk/util/ShareZipFileUtils$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/util/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
