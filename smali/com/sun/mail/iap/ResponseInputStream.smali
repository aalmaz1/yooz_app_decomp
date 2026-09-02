.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    return v0
.end method

.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 92
    new-instance p1, Lcom/sun/mail/iap/ByteArray;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 94
    :cond_c
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    move v2, v0

    :cond_11
    move v3, v0

    move v4, v3

    :goto_13
    const/4 v5, -0x1

    if-nez v3, :cond_44

    .line 102
    iget-object v4, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 103
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    if-eq v4, v5, :cond_44

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2d

    if-lez v2, :cond_2d

    add-int/lit8 v5, v2, -0x1

    .line 105
    aget-byte v5, v1, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2d

    const/4 v3, 0x1

    .line 108
    :cond_2d
    array-length v5, v1

    if-lt v2, v5, :cond_3d

    .line 109
    array-length v1, v1

    const/high16 v5, 0x40000

    if-le v1, v5, :cond_36

    move v1, v5

    .line 112
    :cond_36
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 113
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    :cond_3d
    add-int/lit8 v5, v2, 0x1

    int-to-byte v6, v4

    .line 115
    aput-byte v6, v1, v2

    move v2, v5

    goto :goto_13

    :cond_44
    const-string v3, "Connection dropped by server?"

    if-eq v4, v5, :cond_97

    const/4 v4, 0x5

    if-lt v2, v4, :cond_93

    add-int/lit8 v4, v2, -0x3

    .line 123
    aget-byte v6, v1, v4

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_54

    goto :goto_93

    :cond_54
    add-int/lit8 v6, v2, -0x4

    :goto_56
    if-ltz v6, :cond_62

    .line 129
    aget-byte v7, v1, v6

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_5f

    goto :goto_62

    :cond_5f
    add-int/lit8 v6, v6, -0x1

    goto :goto_56

    :cond_62
    :goto_62
    if-gez v6, :cond_65

    goto :goto_93

    :cond_65
    add-int/lit8 v6, v6, 0x1

    .line 138
    :try_start_67
    invoke-static {v1, v6, v4}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v4
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6b} :catch_93

    if-lez v4, :cond_11

    .line 145
    array-length v6, v1

    sub-int/2addr v6, v2

    add-int/lit8 v7, v4, 0x10

    if-le v7, v6, :cond_80

    sub-int/2addr v7, v6

    const/16 v1, 0x100

    if-le v1, v7, :cond_79

    move v7, v1

    .line 148
    :cond_79
    invoke-virtual {p1, v7}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 150
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    :cond_80
    :goto_80
    if-lez v4, :cond_11

    .line 159
    iget-object v6, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v6, v1, v2, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-eq v6, v5, :cond_8d

    sub-int/2addr v4, v6

    add-int/2addr v2, v6

    goto :goto_80

    .line 161
    :cond_8d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :catch_93
    :cond_93
    :goto_93
    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    return-object p1

    .line 119
    :cond_97
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
