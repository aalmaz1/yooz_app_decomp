.class public Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;
.super Ljava/lang/Object;
.source "CbtLogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;,
        Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;,
        Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TYPE;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final BOTTOM_CORNER:Ljava/lang/String; = "\u2514"

.field private static final CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final FILE:I = 0x10

.field private static final FILE_SEP:Ljava/lang/String;

.field private static final FORMAT:Ljava/text/Format;

.field public static final I:I = 0x4

.field private static final JSON:I = 0x20

.field private static final LEFT_BORDER:Ljava/lang/String; = "\u2502 "

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final MAX_LEN:I = 0xbb8

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final MIDDLE_CORNER:Ljava/lang/String; = "\u251c"

.field private static final MIDDLE_DIVIDER:Ljava/lang/String; = "\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final NOTHING:Ljava/lang/String; = "log nothing"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final PLACEHOLDER:Ljava/lang/String; = " "

.field private static final SIDE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final T:[C

.field private static final TOP_BORDER:Ljava/lang/String; = "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_CORNER:Ljava/lang/String; = "\u250c"

.field public static final V:I = 0x2

.field public static final W:I = 0x5

.field private static final XML:I = 0x30

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$sfgetFILE_SEP()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->FILE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLINE_SEP()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetT()[C
    .locals 1

    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->T:[C

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisSpace(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->isSpace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 64
    fill-array-data v0, :array_0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->T:[C

    const-string v0, "file.separator"

    .line 70
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->FILE_SEP:Ljava/lang/String;

    const-string v0, "line.separator"

    .line 71
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->FORMAT:Ljava/text/Format;

    .line 90
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config-IA;)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    return-void

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 142
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs aTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    .line 146
    invoke-static {v0, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 535
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 3

    .line 494
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 496
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 498
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    invoke-static {p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printDeviceInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 502
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 2

    .line 110
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs dTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 114
    invoke-static {v0, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 2

    .line 134
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 138
    invoke-static {v0, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(ILjava/lang/Object;)V
    .locals 3

    or-int/lit8 p0, p0, 0x10

    .line 154
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    or-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 162
    invoke-static {p0, p1, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(Ljava/lang/Object;)V
    .locals 3

    .line 150
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x13

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static file(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x13

    .line 158
    invoke-static {p1, p0, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "{"

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ">"

    .line 333
    :try_start_0
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 334
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 335
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string v4, "indent"

    const-string v5, "yes"

    .line 336
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    .line 337
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v3, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 339
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static getConfig()Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 1

    .line 98
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    return-object v0
.end method

.method private static getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .line 273
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    array-length v1, v0

    if-lez v1, :cond_1

    .line 280
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    :cond_1
    const/16 v0, 0x24

    .line 282
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 286
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i([Ljava/lang/Object;)V
    .locals 2

    .line 118
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs iTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 122
    invoke-static {v0, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static input2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 549
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 550
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 552
    :cond_0
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;

    invoke-direct {v1, p1, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 575
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-void

    :catch_0
    move-exception p0

    .line 579
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 577
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 581
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "log to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " failed!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 540
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 541
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static json(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p0, p0, 0x20

    .line 170
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p0, p0, 0x20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 178
    invoke-static {p0, p1, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 3

    .line 166
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x23

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x23

    .line 174
    invoke-static {p1, p0, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 198
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLog2ConsoleSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLog2FileSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p0, 0xf

    and-int/lit16 p0, p0, 0xf0

    .line 200
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmConsoleFilter(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmFileFilter(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    .line 201
    :cond_1
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->processTagAndHead(Ljava/lang/String;)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;

    move-result-object p1

    .line 202
    invoke-static {p0, p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLog2ConsoleSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmConsoleFilter(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result v2

    if-lt v1, v2, :cond_2

    if-eq p0, v3, :cond_2

    .line 204
    iget-object v2, p1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->tag:Ljava/lang/String;

    iget-object v4, p1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->consoleHead:[Ljava/lang/String;

    invoke-static {v1, v2, v4, p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLog2FileSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v2

    if-nez v2, :cond_3

    if-ne p0, v3, :cond_4

    :cond_3
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmFileFilter(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result p0

    if-lt v1, p0, :cond_4

    .line 207
    iget-object p0, p1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->fileHead:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 350
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmSingleTagSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 354
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2502 "

    if-eqz p2, :cond_1

    .line 356
    array-length v3, p2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p2, v4

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    .line 359
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_1
    sget-object p2, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    :goto_1
    if-ge v2, p3, :cond_2

    aget-object v3, p2, v2

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 364
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 367
    array-length v0, p2

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 368
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 371
    :cond_4
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printMsgSingleTag(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    .line 375
    invoke-static {p0, p1, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printBorder(ILjava/lang/String;Z)V

    .line 376
    invoke-static {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printHead(ILjava/lang/String;[Ljava/lang/String;)V

    .line 377
    invoke-static {p0, p1, p3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {p0, p1, v2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printBorder(ILjava/lang/String;Z)V

    :goto_4
    return-void
.end method

.method private static print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 471
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 472
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->FORMAT:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 473
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 474
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmDir(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmDefaultDir(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmDir(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmFilePrefix(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "create "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " failed!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 482
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->T:[C

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v3, p0

    .line 484
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    .line 485
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 486
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 487
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    .line 488
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-static {p0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->input2File(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printBorder(ILjava/lang/String;Z)V
    .locals 1

    .line 383
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    goto :goto_0

    :cond_0
    const-string p2, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 384
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static printDeviceInfo(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 511
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 513
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 515
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 516
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 519
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 521
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "************* Log Head ****************\nDate of Log        : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nDevice Manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nDevice Model       : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nAndroid Version    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nAndroid SDK        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nApp VersionName    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nApp VersionCode    : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n************* Log Head ****************\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->input2File(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printHead(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 390
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 391
    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u2502 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_1
    sget-object p2, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static printMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 398
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 399
    div-int/lit16 v1, v0, 0xbb8

    if-lez v1, :cond_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit16 v4, v3, 0xbb8

    .line 403
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    if-eq v3, v0, :cond_2

    .line 407
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_1
    invoke-static {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static printMsgSingleTag(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 415
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 416
    div-int/lit16 v1, v0, 0xbb8

    if-lez v1, :cond_3

    .line 418
    sget-object v2, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xbb8

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    const-string v5, "\u2502 "

    const-string v6, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    const-string v7, " "

    if-ge v2, v1, :cond_0

    .line 422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v6, v4, 0xbb8

    .line 423
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-static {p0, p1, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    if-eq v4, v0, :cond_4

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 428
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_1
    if-ge v3, v1, :cond_2

    add-int/lit16 v4, v2, 0xbb8

    .line 434
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_2
    if-eq v2, v0, :cond_4

    .line 438
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 442
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private static printSubMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 447
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 452
    :cond_0
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 453
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u2502 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static printSubMsg1(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 459
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 465
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u2502 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const-string v0, "null"

    if-eqz p1, :cond_5

    .line 292
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 293
    aget-object p1, p1, v2

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    .line 296
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_3

    :cond_1
    const/16 p1, 0x30

    if-ne p0, p1, :cond_5

    .line 298
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 301
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_4

    .line 303
    aget-object v3, p1, v2

    const-string v4, "args["

    .line 304
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_3

    move-object v3, v0

    goto :goto_2

    .line 309
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->LINE_SEP:Ljava/lang/String;

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_6

    const-string v0, "log nothing"

    :cond_6
    return-object v0
.end method

.method private static processTagAndHead(Ljava/lang/String;)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;
    .locals 17

    .line 212
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmTagIsSpace(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v1

    const-string v2, ": "

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogHeadSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 216
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmStackOffset(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result v4

    const/4 v5, 0x3

    add-int/2addr v4, v5

    .line 217
    array-length v6, v1

    const/4 v7, -0x1

    const/16 v8, 0x2e

    const/4 v9, 0x0

    if-lt v4, v6, :cond_3

    .line 218
    aget-object v1, v1, v5

    .line 219
    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmTagIsSpace(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    .line 224
    :goto_0
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;

    invoke-direct {v1, v0, v3, v2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 226
    :cond_3
    aget-object v6, v1, v4

    .line 227
    invoke-static {v6}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v10

    .line 228
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmTagIsSpace(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static/range {p0 .. p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->isSpace(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 229
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v7, :cond_4

    move-object v7, v10

    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object/from16 v7, p0

    .line 232
    :goto_1
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmLogHeadSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 234
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v2, v11, v9

    .line 237
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 238
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v11, v14

    aput-object v10, v11, v5

    .line 240
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v11, v10

    const-string v6, "%s, %s.%s(%s:%d)"

    .line 235
    invoke-virtual {v3, v6, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, " ["

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "]: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmStackDeep(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result v11

    if-gt v11, v13, :cond_6

    .line 244
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;

    new-array v1, v13, [Ljava/lang/String;

    aput-object v3, v1, v9

    invoke-direct {v0, v7, v1, v6}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 246
    :cond_6
    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmStackDeep(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I

    move-result v0

    array-length v11, v1

    sub-int/2addr v11, v4

    .line 247
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    .line 251
    aput-object v3, v11, v9

    .line 252
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    .line 253
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "%"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "s"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v12, v13, [Ljava/lang/Object;

    const-string v15, ""

    aput-object v15, v12, v9

    invoke-virtual {v3, v2, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v13

    :goto_2
    if-ge v3, v0, :cond_7

    add-int v12, v3, v4

    .line 255
    aget-object v12, v1, v12

    .line 256
    new-instance v15, Ljava/util/Formatter;

    invoke-direct {v15}, Ljava/util/Formatter;-><init>()V

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v2, v10, v9

    .line 259
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v13

    .line 260
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v14

    .line 261
    invoke-static {v12}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v5

    .line 262
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x4

    aput-object v12, v10, v16

    const-string v12, "%s%s.%s(%s:%d)"

    .line 257
    invoke-virtual {v15, v12, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v10

    .line 263
    invoke-virtual {v10}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v16

    goto :goto_2

    .line 265
    :cond_7
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;

    invoke-direct {v0, v7, v11, v6}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    move-object v0, v7

    .line 269
    :goto_3
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;

    invoke-direct {v1, v0, v3, v2}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static varargs v([Ljava/lang/Object;)V
    .locals 2

    .line 102
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs vTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 106
    invoke-static {v0, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w([Ljava/lang/Object;)V
    .locals 2

    .line 126
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs wTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 130
    invoke-static {v0, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(ILjava/lang/String;)V
    .locals 3

    or-int/lit8 p0, p0, 0x30

    .line 186
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    or-int/lit8 p0, p0, 0x30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 194
    invoke-static {p0, p1, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 3

    .line 182
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->CONFIG:Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->-$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x33

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static xml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x33

    .line 190
    invoke-static {p1, p0, v0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
