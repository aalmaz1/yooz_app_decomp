.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/iap/Argument;->nastring([BLcom/sun/mail/iap/Protocol;Z)V

    return-void
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 400
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 384
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private nastring([BLcom/sun/mail/iap/Protocol;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 315
    invoke-virtual/range {p2 .. p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 316
    array-length v2, v0

    const/16 v3, 0x400

    if-le v2, v3, :cond_11

    .line 320
    invoke-direct/range {p0 .. p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    return-void

    :cond_11
    const/4 v3, 0x1

    if-nez v2, :cond_16

    move v4, v3

    goto :goto_18

    :cond_16
    move/from16 v4, p3

    .line 327
    :goto_18
    invoke-virtual/range {p2 .. p2}, Lcom/sun/mail/iap/Protocol;->supportsUtf8()Z

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_1f
    const/16 v9, 0x5c

    const/16 v10, 0x22

    if-ge v7, v2, :cond_6a

    .line 331
    aget-byte v11, v0, v7

    if-eqz v11, :cond_66

    const/16 v12, 0xd

    if-eq v11, v12, :cond_66

    const/16 v12, 0xa

    if-eq v11, v12, :cond_66

    const/16 v12, 0x7f

    if-nez v5, :cond_3a

    and-int/lit16 v13, v11, 0xff

    if-le v13, v12, :cond_3a

    goto :goto_66

    :cond_3a
    const/16 v13, 0x2a

    if-eq v11, v13, :cond_5a

    const/16 v13, 0x25

    if-eq v11, v13, :cond_5a

    const/16 v13, 0x28

    if-eq v11, v13, :cond_5a

    const/16 v13, 0x29

    if-eq v11, v13, :cond_5a

    const/16 v13, 0x7b

    if-eq v11, v13, :cond_5a

    if-eq v11, v10, :cond_5a

    if-eq v11, v9, :cond_5a

    and-int/lit16 v13, v11, 0xff

    const/16 v14, 0x20

    if-le v13, v14, :cond_5a

    if-le v13, v12, :cond_63

    :cond_5a
    if-eq v11, v10, :cond_61

    if-ne v11, v9, :cond_5f

    goto :goto_61

    :cond_5f
    move v4, v3

    goto :goto_63

    :cond_61
    :goto_61
    move v4, v3

    move v8, v4

    :cond_63
    :goto_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 335
    :cond_66
    :goto_66
    invoke-direct/range {p0 .. p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    return-void

    :cond_6a
    if-nez v4, :cond_90

    .line 354
    array-length v5, v0

    const/4 v7, 0x3

    if-ne v5, v7, :cond_90

    aget-byte v5, v0, v6

    const/16 v7, 0x4e

    if-eq v5, v7, :cond_7a

    const/16 v7, 0x6e

    if-ne v5, v7, :cond_90

    :cond_7a
    aget-byte v5, v0, v3

    const/16 v7, 0x49

    if-eq v5, v7, :cond_84

    const/16 v7, 0x69

    if-ne v5, v7, :cond_90

    :cond_84
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v7, 0x4c

    if-eq v5, v7, :cond_91

    const/16 v7, 0x6c

    if-ne v5, v7, :cond_90

    goto :goto_91

    :cond_90
    move v3, v4

    :cond_91
    :goto_91
    if-eqz v3, :cond_96

    .line 361
    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write(I)V

    :cond_96
    if-eqz v8, :cond_a9

    :goto_98
    if-ge v6, v2, :cond_ac

    .line 366
    aget-byte v4, v0, v6

    if-eq v4, v10, :cond_a0

    if-ne v4, v9, :cond_a3

    .line 368
    :cond_a0
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 369
    :cond_a3
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 372
    :cond_a9
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :cond_ac
    if-eqz v3, :cond_b1

    .line 376
    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write(I)V

    :cond_b1
    return-void
.end method

.method private nstring([BLcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    if-nez p1, :cond_e

    .line 307
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/DataOutputStream;

    const-string p2, "NIL"

    .line 308
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_12

    :cond_e
    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/iap/Argument;->nastring([BLcom/sun/mail/iap/Protocol;Z)V

    :goto_12
    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 406
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v1

    const/16 v2, 0x7b

    .line 408
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 409
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    const-string p2, "+}\r\n"

    .line 411
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_23

    :cond_1e
    const-string p2, "}\r\n"

    .line 413
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 414
    :goto_23
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    if-nez v1, :cond_40

    .line 420
    :goto_28
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object p2

    .line 421
    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_40

    .line 423
    :cond_33
    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_28

    .line 424
    :cond_3a
    new-instance p1, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw p1

    :cond_40
    :goto_40
    return-object v0
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 264
    :goto_b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/DataOutputStream;

    :goto_11
    if-ge v1, v0, :cond_88

    if-lez v1, :cond_1a

    const/16 v3, 0x20

    .line 268
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 270
    :cond_1a
    iget-object v3, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 271
    instance-of v4, v3, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_2c

    .line 272
    check-cast v3, Lcom/sun/mail/iap/Atom;

    iget-object v3, v3, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_85

    .line 273
    :cond_2c
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3a

    .line 274
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_85

    .line 275
    :cond_3a
    instance-of v4, v3, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_46

    .line 276
    check-cast v3, Lcom/sun/mail/iap/AString;

    iget-object v3, v3, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_85

    .line 277
    :cond_46
    instance-of v4, v3, Lcom/sun/mail/iap/NString;

    if-eqz v4, :cond_52

    .line 278
    check-cast v3, Lcom/sun/mail/iap/NString;

    iget-object v3, v3, Lcom/sun/mail/iap/NString;->bytes:[B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->nstring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_85

    .line 279
    :cond_52
    instance-of v4, v3, [B

    if-eqz v4, :cond_5e

    .line 280
    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_85

    .line 281
    :cond_5e
    instance-of v4, v3, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_68

    .line 282
    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_85

    .line 283
    :cond_68
    instance-of v4, v3, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_72

    .line 284
    check-cast v3, Lcom/sun/mail/iap/Literal;

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_85

    .line 285
    :cond_72
    instance-of v4, v3, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_85

    const/16 v4, 0x28

    .line 286
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 287
    check-cast v3, Lcom/sun/mail/iap/Argument;

    invoke-virtual {v3, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    const/16 v3, 0x29

    .line 288
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    :cond_85
    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_88
    return-void
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/iap/Argument;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)Lcom/sun/mail/iap/Argument;
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeBytes([B)Lcom/sun/mail/iap/Argument;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4

    if-nez p1, :cond_e

    .line 139
    iget-object p1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v0, Lcom/sun/mail/iap/NString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 141
    :cond_e
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    return-object p0
.end method

.method public writeNString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_e

    .line 158
    iget-object p1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance p2, Lcom/sun/mail/iap/NString;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_e
    if-nez p2, :cond_14

    .line 160
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_22

    .line 162
    :cond_14
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    return-object p0
.end method

.method public writeNString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sun/mail/iap/Argument;
    .registers 5

    if-nez p1, :cond_e

    .line 177
    iget-object p1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance p2, Lcom/sun/mail/iap/NString;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_e
    if-nez p2, :cond_14

    .line 179
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_22

    .line 181
    :cond_14
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    return-object p0
.end method

.method public writeNumber(I)Lcom/sun/mail/iap/Argument;
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeNumber(J)Lcom/sun/mail/iap/Argument;
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 105
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_14

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    return-object p0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sun/mail/iap/Argument;
    .registers 5

    if-nez p2, :cond_6

    .line 122
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_14

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    return-object p0
.end method
