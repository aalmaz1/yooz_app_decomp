.class public Lcn/baos/watch/sdk/utils/ShareZipFileUtils;
.super Ljava/lang/Object;
.source "ShareZipFileUtils.java"


# static fields
.field public static final LOG_DIR_NAME:Ljava/lang/String; = "watchSdkZip"

.field private static instance:Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

.field private static logFileSdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private filePath:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mCurFilename:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$IiSM38YwFlm-C6vHNpsBSYMFJJc(Lcn/baos/watch/sdk/utils/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->lambda$shareZipFile$0(Lcn/baos/watch/sdk/util/ZipShareCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OmpSB5qFEIsFjbjd81S7dE-xYhg(Lcn/baos/watch/sdk/utils/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->lambda$shareZipFile$1(Lcn/baos/watch/sdk/util/ZipShareCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss\'.zip\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->logFileSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/utils/ShareZipFileUtils;
    .locals 2

    .line 34
    sget-object v0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

    invoke-direct {v1}, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->instance:Lcn/baos/watch/sdk/utils/ShareZipFileUtils;

    return-object v0
.end method

.method private synthetic lambda$shareZipFile$0(Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->shareFile(Ljava/io/File;)V

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Lcn/baos/watch/sdk/util/ZipShareCallback;->onShareEnd()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shareZipFile$1(Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 4

    const-string v0, "---zipStatus-->"

    const-string v1, "---zipStatus-->file="

    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    invoke-interface {p1}, Lcn/baos/watch/sdk/util/ZipShareCallback;->onShareStart()V

    .line 73
    :cond_0
    new-instance v2, Lcn/baos/watch/sdk/utils/LogcatThread;

    iget-object v3, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcn/baos/watch/sdk/utils/LogcatThread;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/utils/LogcatThread;->getAllDataFileName()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "----mCurFilename="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-static {v2, v1}, Lcn/baos/watch/sdk/utils/ZipUtils;->zipFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/baos/watch/sdk/utils/ShareZipFileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/utils/ShareZipFileUtils$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/utils/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public setContext(Landroid/app/Activity;)V
    .locals 2

    .line 45
    iput-object p1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    .line 46
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

    iput-object p1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->filePath:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-----<<<>>>>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 48
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_0
    :try_start_0
    sget-object p1, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->logFileSdf:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->filePath:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mCurFilename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shareFile(Ljava/io/File;)V
    .locals 4

    .line 92
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    .line 94
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

    .line 93
    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "*/*"

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcn/baos/watch/sdk/utils/ShareZipFileUtils;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shareZipFile(Lcn/baos/watch/sdk/util/ZipShareCallback;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/utils/ShareZipFileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/utils/ShareZipFileUtils$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/utils/ShareZipFileUtils;Lcn/baos/watch/sdk/util/ZipShareCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
