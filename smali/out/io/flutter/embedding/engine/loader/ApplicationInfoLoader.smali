.class public final Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;
.super Ljava/lang/Object;
.source "ApplicationInfoLoader.java"


# static fields
.field public static final NETWORK_POLICY_METADATA_KEY:Ljava/lang/String; = "io.flutter.network-policy"

.field public static final PUBLIC_AOT_SHARED_LIBRARY_NAME:Ljava/lang/String;

.field public static final PUBLIC_AUTOMATICALLY_REGISTER_PLUGINS_METADATA_KEY:Ljava/lang/String; = "io.flutter.automatically-register-plugins"

.field public static final PUBLIC_FLUTTER_ASSETS_DIR_KEY:Ljava/lang/String;

.field public static final PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY:Ljava/lang/String;

.field public static final PUBLIC_VM_SNAPSHOT_DATA_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".aot-shared-library-name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_AOT_SHARED_LIBRARY_NAME:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vm-snapshot-data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_VM_SNAPSHOT_DATA_KEY:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".isolate-snapshot-data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".flutter-assets-dir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_FLUTTER_ASSETS_DIR_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 54
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getNetworkPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 62
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    const-string v1, "io.flutter.network-policy"

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_10

    return-object v0

    .line 72
    :cond_10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 74
    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 76
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    :goto_24
    const/4 v3, 0x1

    if-eq p1, v3, :cond_3e

    const/4 v3, 0x2

    if-ne p1, v3, :cond_39

    .line 79
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "domain-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 80
    invoke-static {p0, v1, v2}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->parseDomainConfig(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    .line 83
    :cond_39
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3d} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_3d} :catch_43

    goto :goto_24

    .line 88
    :cond_3e
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_43
    return-object v0
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 47
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;
    .registers 11

    .line 148
    invoke-static {p0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 149
    new-instance v9, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v2, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_AOT_SHARED_LIBRARY_NAME:Ljava/lang/String;

    .line 150
    invoke-static {v1, v2}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v3, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_VM_SNAPSHOT_DATA_KEY:Ljava/lang/String;

    .line 151
    invoke-static {v1, v3}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v4, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY:Ljava/lang/String;

    .line 152
    invoke-static {v1, v4}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->PUBLIC_FLUTTER_ASSETS_DIR_KEY:Ljava/lang/String;

    .line 153
    invoke-static {v1, v5}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v0, p0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getNetworkPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "io.flutter.automatically-register-plugins"

    const/4 v1, 0x1

    .line 156
    invoke-static {p0, v0, v1}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v9
.end method

.method private static parseDomain(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "includeSubdomains"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-interface {p0, v2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 127
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 130
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 132
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 134
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 135
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 137
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_36

    return-void

    .line 138
    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected end of domain tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseDomainConfig(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "cleartextTrafficPermitted"

    .line 95
    invoke-interface {p0, v0, v1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 98
    :cond_7
    :goto_7
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 100
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 102
    invoke-static {p0, p1, p2}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->parseDomain(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    goto :goto_7

    .line 103
    :cond_1e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domain-config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 104
    invoke-static {p0, p1, p2}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->parseDomainConfig(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    goto :goto_7

    .line 106
    :cond_2e
    invoke-static {p0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->skipTag(Landroid/content/res/XmlResourceParser;)V

    goto :goto_7

    :cond_32
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    return-void
.end method

.method private static skipTag(Landroid/content/res/XmlResourceParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 117
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, v0, :cond_12

    goto :goto_13

    :cond_12
    return-void

    .line 118
    :cond_13
    :goto_13
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_8
.end method
