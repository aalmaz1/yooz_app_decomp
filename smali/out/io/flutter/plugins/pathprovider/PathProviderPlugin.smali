.class public Lio/flutter/plugins/pathprovider/PathProviderPlugin;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/pathprovider/Messages$PathProviderApi;


# static fields
.field static final TAG:Ljava/lang/String; = "PathProviderPlugin"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getApplicationSupportDirectory()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderApplicationDocumentsDirectory()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderExternalCacheDirectories()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    if-eqz v4, :cond_1a

    .line 106
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method private getPathProviderExternalStorageDirectories(Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getStorageDirectoryString(Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    return-object v0
.end method

.method private getPathProviderStorageDirectory()Ljava/lang/String;
    .registers 3

    .line 94
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    .line 98
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderTemporaryDirectory()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageDirectoryString(Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;)Ljava/lang/String;
    .registers 5

    .line 114
    sget-object v0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;->$SwitchMap$io$flutter$plugins$pathprovider$Messages$StorageDirectory:[I

    invoke-virtual {p1}, Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    const-string p1, "documents"

    return-object p1

    :pswitch_23
    const-string p1, "dcim"

    return-object p1

    :pswitch_26
    const-string p1, "downloads"

    return-object p1

    :pswitch_29
    const-string p1, "movies"

    return-object p1

    :pswitch_2c
    const-string p1, "pictures"

    return-object p1

    :pswitch_2f
    const-string p1, "notifications"

    return-object p1

    :pswitch_32
    const-string p1, "alarms"

    return-object p1

    :pswitch_35
    const-string p1, "ringtones"

    return-object p1

    :pswitch_38
    const-string p1, "podcasts"

    return-object p1

    :pswitch_3b
    const-string p1, "music"

    return-object p1

    :pswitch_3e
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method private setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .registers 5

    .line 27
    :try_start_0
    invoke-static {p1, p0}, Lio/flutter/plugins/pathprovider/Messages$PathProviderApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/pathprovider/Messages$PathProviderApi;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p1

    const-string v0, "PathProviderPlugin"

    const-string v1, "Received exception while setting up PathProviderPlugin"

    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_c
    iput-object p2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationCachePath()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationDocumentsPath()Ljava/lang/String;
    .registers 2

    .line 57
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderApplicationDocumentsDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationSupportPath()Ljava/lang/String;
    .registers 2

    .line 52
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getApplicationSupportDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCachePaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderExternalCacheDirectories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .registers 2

    .line 67
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStoragePaths(Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderExternalStorageDirectories(Lio/flutter/plugins/pathprovider/Messages$StorageDirectory;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTemporaryPath()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderTemporaryDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    .line 37
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    .line 42
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/plugins/pathprovider/Messages$PathProviderApi;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/pathprovider/Messages$PathProviderApi;)V

    return-void
.end method
