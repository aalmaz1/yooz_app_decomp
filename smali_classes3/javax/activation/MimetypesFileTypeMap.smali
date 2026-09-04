.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static final PROG:I = 0x0

.field private static final confDir:Ljava/lang/String;

.field private static final defaultType:Ljava/lang/String; = "application/octet-stream"


# instance fields
.field private DB:[Lcom/sun/activation/registries/MimeTypeFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    :try_start_0
    new-instance v0, Ljavax/activation/MimetypesFileTypeMap$1;

    invoke-direct {v0}, Ljavax/activation/MimetypesFileTypeMap$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->confDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 126
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "MimetypesFileTypeMap: load HOME"

    .line 130
    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "user.home"

    .line 132
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v1, "MimetypesFileTypeMap: load SYS"

    .line 142
    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 145
    :try_start_1
    sget-object v1, Ljavax/activation/MimetypesFileTypeMap;->confDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const-string v1, "MimetypesFileTypeMap: load JAR"

    .line 152
    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    const-string v1, "META-INF/mime.types"

    .line 154
    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V

    const-string v1, "MimetypesFileTypeMap: load DEF"

    .line 156
    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    const-string v1, "/META-INF/mimetypes.default"

    .line 157
    invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 162
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/activation/registries/MimeTypeFile;

    iput-object v1, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 301
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 303
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 291
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
    .locals 8

    const-string v0, "MimetypesFileTypeMap: can\'t load "

    const/4 v1, 0x0

    .line 208
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 212
    invoke-static {v2, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_b

    .line 216
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MimetypesFileTypeMap: getResources"

    .line 217
    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_2
    move v3, v1

    .line 218
    :goto_1
    :try_start_1
    array-length v4, v2

    if-ge v1, v4, :cond_a

    .line 219
    aget-object v4, v2, v1

    .line 221
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MimetypesFileTypeMap: URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    const/4 v5, 0x0

    .line 224
    :try_start_2
    invoke-static {v4}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 226
    new-instance v6, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v6, v5}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 228
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MimetypesFileTypeMap: successfully loaded mime types from URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MimetypesFileTypeMap: not loading mime types from URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    if-eqz v5, :cond_8

    .line 249
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v6

    .line 243
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    if-eqz v5, :cond_8

    goto :goto_3

    :catch_1
    move-exception v6

    .line 239
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    if-eqz v5, :cond_8

    goto :goto_3

    :catch_2
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :goto_5
    if-eqz v5, :cond_9

    .line 249
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 251
    :catch_3
    :cond_9
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_a
    move v1, v3

    goto :goto_7

    :catch_4
    move-exception v2

    move v1, v3

    goto :goto_6

    :catch_5
    move-exception v2

    .line 255
    :goto_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    if-nez v1, :cond_c

    const-string v0, "MimetypesFileTypeMap: !anyLoaded"

    .line 261
    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 264
    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 1

    .line 275
    :try_start_0
    new-instance v0, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 6

    const-string v0, "MimetypesFileTypeMap: successfully loaded mime types file: "

    const-string v1, "MimetypesFileTypeMap: not loading mime types file: "

    const-string v2, "MimetypesFileTypeMap: can\'t load "

    const/4 v3, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 174
    :try_start_1
    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, v4}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    .line 175
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v4, :cond_1

    .line 193
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    .line 180
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v4, :cond_6

    .line 193
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v3

    .line 188
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    if-eqz v4, :cond_6

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v4, v3

    .line 185
    :goto_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_0

    :catch_5
    :cond_6
    :goto_3
    return-object v3

    :catchall_1
    move-exception p1

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_7

    .line 193
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 195
    :catch_6
    :cond_7
    throw p1
.end method


# virtual methods
.method public declared-synchronized addMimeTypes(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 317
    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>()V

    aput-object v2, v0, v1

    .line 319
    :cond_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->appendToRegistry(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 331
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "."

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string p1, "application/octet-stream"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 349
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "application/octet-stream"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 353
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 354
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;->getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 358
    monitor-exit p0

    return-object v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_3
    const-string p1, "application/octet-stream"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
