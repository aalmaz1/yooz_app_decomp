.class public Lcn/baos/watch/sdk/old/test/TestMessageManager;
.super Ljava/lang/Object;
.source "TestMessageManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/old/test/TestMessageManager;


# instance fields
.field byteNumBig:I

.field byteNumSmall:I

.field mCurrentBigPackage:Ljava/lang/String;

.field mCurrentSmallPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf0

    .line 26
    iput v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumBig:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumSmall:I

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/old/test/TestMessageManager;
    .locals 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->instance:Lcn/baos/watch/sdk/old/test/TestMessageManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcn/baos/watch/sdk/old/test/TestMessageManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/old/test/TestMessageManager;->instance:Lcn/baos/watch/sdk/old/test/TestMessageManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/old/test/TestMessageManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/old/test/TestMessageManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/old/test/TestMessageManager;->instance:Lcn/baos/watch/sdk/old/test/TestMessageManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->instance:Lcn/baos/watch/sdk/old/test/TestMessageManager;

    return-object v0
.end method

.method public static getRandStr(I)Ljava/lang/String;
    .locals 6

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringHexForBigPackage()Ljava/lang/StringBuffer;
    .locals 5

    const/16 v0, 0x2f0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 89
    aput-byte v3, v0, v2

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 90
    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 91
    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 92
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getStringHexForBigPackageNew()Ljava/lang/String;
    .locals 2

    .line 99
    iget v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumBig:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    const/16 v0, 0xf0

    .line 100
    iput v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumBig:I

    .line 102
    :cond_0
    iget v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumBig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumBig:I

    .line 103
    invoke-static {v1}, Lcn/baos/watch/sdk/old/test/TestMessageManager;->getRandStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringHexForSmallPackageNew()Ljava/lang/String;
    .locals 2

    .line 108
    iget v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumSmall:I

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumSmall:I

    .line 111
    :cond_0
    iget v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumSmall:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->byteNumSmall:I

    .line 112
    invoke-static {v0}, Lcn/baos/watch/sdk/old/test/TestMessageManager;->getRandStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveBigPackageDate(Lcn/baos/watch/w100/messages/CommandContentReturnRequest;)[B
    .locals 4

    const-string v0, "\u53d1\u9001\u5927\u5305message\u5e8f\u5217\u5316\u603b\u957f\u5ea6\uff1a"

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 133
    :try_start_0
    invoke-static {}, Lorg/msgpack/core/MessagePack;->newDefaultBufferPacker()Lorg/msgpack/core/MessageBufferPacker;

    move-result-object v2

    .line 134
    invoke-virtual {p0, v2}, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 135
    invoke-virtual {v2}, Lorg/msgpack/core/MessageBufferPacker;->toByteArray()[B

    move-result-object p0

    .line 136
    array-length v2, p0

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 137
    array-length v3, p0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getCurrentBigPackage()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentBigPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSmallPackage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentSmallPackage:Ljava/lang/String;

    return-object v0
.end method

.method public startBigPackageTest(I)Ljava/lang/String;
    .locals 4

    .line 64
    invoke-direct {p0}, Lcn/baos/watch/sdk/old/test/TestMessageManager;->getStringHexForBigPackageNew()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentBigPackage:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "st:\u5927\u5305\u53d1\u9001\u5185\u5bb9\u5b57\u8282\u957f\u5ea6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentBigPackage:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;-><init>()V

    .line 71
    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentBigPackage:Ljava/lang/String;

    iput-object v0, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->id:I

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "st:\u53d1\u9001\u5927\u5305\u6570\u636e\u6d4b\u8bd5,\u5199\u5165\u84dd\u7259\u901a\u9053\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    .line 77
    iget-object p1, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentBigPackage:Ljava/lang/String;

    return-object p1
.end method

.method public startSmallPackageTest(I)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-direct {p0}, Lcn/baos/watch/sdk/old/test/TestMessageManager;->getStringHexForSmallPackageNew()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentSmallPackage:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "st:\u5c0f\u5305\u53d1\u9001\u5185\u5bb9\u5b57\u8282\u957f\u5ea6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentSmallPackage:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;-><init>()V

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentSmallPackage:Ljava/lang/String;

    iput-object v0, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    const-string v0, "100"

    .line 54
    invoke-static {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "st:\u53d1\u9001\u5c0f\u5305\u6570\u636e\u6d4b\u8bd5,\u5199\u5165\u84dd\u7259\u901a\u9053\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    .line 57
    iget-object p1, p0, Lcn/baos/watch/sdk/old/test/TestMessageManager;->mCurrentSmallPackage:Ljava/lang/String;

    return-object p1
.end method
