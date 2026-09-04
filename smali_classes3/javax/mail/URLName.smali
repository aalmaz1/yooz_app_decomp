.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "URLName.java"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z = true

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "mail.URLName.dontencode"

    .line 127
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :catch_0
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 565
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 568
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 571
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 574
    :cond_3
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 575
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 576
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 577
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 578
    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Ljavax/mail/URLName;->port:I

    .line 118
    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 186
    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 118
    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 155
    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 157
    iput p3, p0, Ljavax/mail/URLName;->port:I

    if-eqz p4, :cond_0

    const/16 p1, 0x23

    .line 159
    invoke-virtual {p4, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 160
    invoke-virtual {p4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    .line 161
    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_0
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 166
    :goto_0
    sget-boolean p1, Ljavax/mail/URLName;->doEncode:Z

    if-eqz p1, :cond_1

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_1
    iput-object p5, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 167
    sget-boolean p1, Ljavax/mail/URLName;->doEncode:Z

    if-eqz p1, :cond_2

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    :cond_2
    iput-object p6, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 602
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 603
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    move v4, v3

    .line 605
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 606
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 607
    sget-object v6, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    const/16 v5, 0x2b

    :cond_0
    int-to-char v5, v5

    .line 611
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 615
    :cond_1
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 616
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move v6, v3

    .line 622
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_4

    const/16 v7, 0x25

    .line 623
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    aget-byte v7, v5, v6

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    .line 627
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    .line 630
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    .line 632
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    .line 635
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 637
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2

    .line 618
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 641
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "+%"

    .line 677
    invoke-static {p0, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 680
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 681
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 682
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    .line 699
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x20

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x3

    .line 690
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    .line 689
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Illegal URL encoded value: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_1
    const-string v0, "8859_1"

    .line 706
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 707
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v1

    :catch_1
    return-object p0
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 591
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 592
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 593
    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_2
    :goto_1
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .locals 2

    monitor-enter p0

    .line 521
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 523
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 524
    monitor-exit p0

    return-object v1

    .line 526
    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 528
    :catch_0
    :try_start_3
    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    :goto_0
    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 531
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 721
    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    .line 726
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_1

    .line 728
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 445
    instance-of v0, p1, Ljavax/mail/URLName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 447
    :cond_0
    check-cast p1, Ljavax/mail/URLName;

    .line 450
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v2, p1, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 455
    :cond_2
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p1}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 458
    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 461
    :cond_3
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 465
    :cond_4
    iget-object v2, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v0, v2, :cond_5

    return v1

    .line 471
    :cond_5
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v2, p1, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v0, v2, :cond_7

    if-eqz v0, :cond_6

    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    .line 479
    :cond_7
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_8

    move-object v0, v2

    .line 480
    :cond_8
    iget-object v3, p1, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    move-object v2, v3

    .line 482
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 486
    :cond_a
    iget v0, p0, Ljavax/mail/URLName;->port:I

    iget p1, p1, Ljavax/mail/URLName;->port:I

    if-eq v0, p1, :cond_b

    return v1

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 403
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 343
    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 418
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 393
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 498
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 500
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 502
    :cond_1
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 504
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 506
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 507
    :cond_3
    :goto_0
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 508
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 509
    :cond_4
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 510
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 511
    :cond_5
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget v1, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    return v0
.end method

.method protected parseString(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    const/4 v0, -0x1

    .line 260
    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v0, :cond_0

    .line 269
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    :cond_0
    add-int/lit8 v5, v3, 0x1

    const-string v6, "//"

    const/4 v7, 0x2

    .line 272
    invoke-virtual {p1, v5, v6, v4, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v3, v3, 0x3

    const/16 v5, 0x2f

    .line 275
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v0, :cond_2

    .line 277
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_1

    .line 279
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 281
    iput-object p1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/16 p1, 0x40

    .line 286
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 288
    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 289
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 294
    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    .line 295
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    goto :goto_1

    .line 297
    :cond_3
    iput-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 303
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_5

    const/16 p1, 0x5d

    .line 305
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    goto :goto_2

    .line 307
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    :goto_2
    if-eq p1, v0, :cond_7

    add-int/lit8 v1, p1, 0x1

    .line 310
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 313
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavax/mail/URLName;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 315
    :catch_0
    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 319
    :cond_6
    :goto_3
    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    goto :goto_4

    .line 321
    :cond_7
    iput-object v3, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    goto :goto_4

    :cond_8
    if-ge v5, v1, :cond_9

    .line 325
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 330
    :cond_9
    :goto_4
    iget-object p1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz p1, :cond_a

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v0, :cond_a

    .line 331
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 194
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    const-string v2, ":"

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    :cond_1
    const-string v1, "//"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "@"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_3
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_4
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_5
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "/"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_6
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_7
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "#"

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    .line 248
    :cond_9
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v0
.end method
