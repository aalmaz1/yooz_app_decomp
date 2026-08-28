.class Lio/flutter/embedding/engine/loader/ResourceExtractor;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;
    }
.end annotation


# static fields
.field private static final SUPPORTED_ABIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ResourceExtractor"

.field private static final TIMESTAMP_PREFIX:Ljava/lang/String; = "res_timestamp-"


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mDataDirPath:Ljava/lang/String;

.field private mExtractTask:Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    sput-object v0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/res/AssetManager;)V
    .registers 5

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mDataDirPath:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mPackageName:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 137
    iput-object p4, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mAssetManager:Landroid/content/res/AssetManager;

    .line 138
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mResources:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 25
    invoke-static {p0, p1, p2}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->checkTimestamp(Ljava/io/File;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 2

    .line 25
    invoke-static {p0, p1}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->deleteFiles(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static checkTimestamp(Ljava/io/File;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "res_timestamp-"

    const/4 v1, 0x0

    .line 208
    :try_start_3
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_7} :catch_3f

    if-nez p1, :cond_a

    return-object v0

    .line 217
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->getVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p0}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->getExistingTimestamps(Ljava/io/File;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2e

    return-object p1

    .line 229
    :cond_2e
    array-length p2, p0

    .line 235
    array-length p2, p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3e

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p0, 0x0

    return-object p0

    :cond_3e
    :goto_3e
    return-object p1

    :catch_3f
    return-object v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 247
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_f

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_f
    return-void
.end method

.method private static deleteFiles(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 192
    :cond_24
    invoke-static {v0}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->getExistingTimestamps(Ljava/io/File;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2b

    return-void

    .line 196
    :cond_2b
    array-length p1, p0

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, p1, :cond_3c

    aget-object v2, p0, v1

    .line 197
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3c
    return-void
.end method

.method private static getExistingTimestamps(Ljava/io/File;)[Ljava/lang/String;
    .registers 2

    .line 175
    new-instance v0, Lio/flutter/embedding/engine/loader/ResourceExtractor$1;

    invoke-direct {v0}, Lio/flutter/embedding/engine/loader/ResourceExtractor$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3

    .line 34
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method addResource(Ljava/lang/String;)Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .registers 3

    .line 142
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method addResources(Ljava/util/Collection;)Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/engine/loader/ResourceExtractor;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method start()Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .registers 8

    .line 156
    new-instance v6, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mDataDirPath:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mResources:Ljava/util/HashSet;

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mAssetManager:Landroid/content/res/AssetManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;-><init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/res/AssetManager;)V

    iput-object v6, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mExtractTask:Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;

    .line 158
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v6, v0, v1}, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method waitForCompletion()V
    .registers 3

    .line 163
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mExtractTask:Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;

    if-nez v0, :cond_5

    return-void

    .line 168
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lio/flutter/embedding/engine/loader/ResourceExtractor$ExtractTask;->get()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_8} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    .line 170
    :catch_9
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mDataDirPath:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/ResourceExtractor;->mResources:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->deleteFiles(Ljava/lang/String;Ljava/util/HashSet;)V

    :goto_10
    return-void
.end method
