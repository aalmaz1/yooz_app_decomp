.class abstract Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    .line 519
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    :goto_5
    if-lt p1, p2, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    add-int/lit8 v0, p1, 0x1

    .line 530
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-gez p1, :cond_84

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_2a

    if-lt v0, p2, :cond_1b

    return p1

    :cond_1b
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_29

    .line 542
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_29
    :goto_29
    return v2

    :cond_2a
    const/16 v4, -0x10

    if-ge p1, v4, :cond_58

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_38

    sub-int/2addr p2, v0

    .line 550
    invoke-static {p0, p1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_38
    add-int/lit8 v4, v0, 0x1

    .line 553
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v3, :cond_57

    const/16 v5, -0x60

    if-ne p1, v1, :cond_46

    if-lt v0, v5, :cond_57

    :cond_46
    const/16 v1, -0x13

    if-ne p1, v1, :cond_4c

    if-ge v0, v5, :cond_57

    .line 560
    :cond_4c
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_53

    goto :goto_57

    :cond_53
    add-int/lit8 v4, v4, 0x1

    move p1, v4

    goto :goto_5

    :cond_57
    :goto_57
    return v2

    :cond_58
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_62

    sub-int/2addr p2, v0

    .line 568
    invoke-static {p0, p1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_62
    add-int/lit8 v1, v0, 0x1

    .line 572
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v3, :cond_83

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_83

    add-int/lit8 p1, v1, 0x1

    .line 580
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v3, :cond_83

    add-int/lit8 v0, p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_84

    :cond_83
    return v2

    :cond_84
    :goto_84
    move p1, v0

    goto/16 :goto_5
.end method


# virtual methods
.method final decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 604
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 605
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 606
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 607
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 610
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract decodeUtf8([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method final decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 624
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c3

    add-int v0, p2, p3

    .line 634
    new-array p3, p3, [C

    move v3, v1

    :goto_12
    if-ge p2, v0, :cond_28

    .line 640
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 641
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_28

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 645
    invoke-static {v4, p3, v3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v3, v5

    goto :goto_12

    :cond_28
    :goto_28
    move v8, v3

    :goto_29
    if-ge p2, v0, :cond_bd

    add-int/lit8 v3, p2, 0x1

    .line 649
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    .line 650
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-eqz v4, :cond_55

    add-int/lit8 v4, v8, 0x1

    .line 651
    invoke-static {p2, p3, v8}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_3c
    if-ge v3, v0, :cond_52

    .line 655
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    .line 656
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_52

    :cond_49
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 660
    invoke-static {p2, p3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v4, v5

    goto :goto_3c

    :cond_52
    :goto_52
    move p2, v3

    move v8, v4

    goto :goto_29

    .line 662
    :cond_55
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v4

    if-eqz v4, :cond_70

    if-ge v3, v0, :cond_6b

    add-int/lit8 v4, v3, 0x1

    .line 667
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 666
    invoke-static {p2, v3, p3, v8}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_29

    .line 664
    :cond_6b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 668
    :cond_70
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v4

    if-eqz v4, :cond_93

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_8e

    add-int/lit8 v4, v3, 0x1

    .line 674
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    .line 675
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 672
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_29

    .line 670
    :cond_8e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_93
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_b8

    add-int/lit8 v4, v3, 0x1

    .line 684
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    .line 685
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    .line 686
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    .line 682
    invoke-static/range {v3 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_29

    .line 680
    :cond_b8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 694
    :cond_bd
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 625
    :cond_c3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method abstract encodeUtf8(Ljava/lang/String;[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "offset",
            "length"
        }
    .end annotation
.end method

.method final encodeUtf8(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .line 747
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 748
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 749
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->encode(Ljava/lang/String;[BII)I

    move-result p1

    sub-int/2addr p1, v0

    .line 750
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    goto :goto_2d

    .line 751
    :cond_20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_2d

    .line 754
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :goto_2d
    return-void
.end method

.method final encodeUtf8Default(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .line 766
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 767
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1c

    .line 776
    :try_start_d
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_1c

    add-int v3, v1, v2

    int-to-byte v4, v4

    .line 777
    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    if-ne v2, v0, :cond_24

    add-int v0, v1, v2

    .line 781
    invoke-static {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    return-void

    :cond_24
    add-int/2addr v1, v2

    :goto_25
    if-ge v2, v0, :cond_c3

    .line 787
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_33

    int-to-byte v4, v4

    .line 790
    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_31} :catch_c7

    goto/16 :goto_bd

    :cond_33
    const/16 v5, 0x800

    if-ge v4, v5, :cond_4e

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 795
    :try_start_3e
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 796
    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_48} :catch_4b

    move v1, v5

    goto/16 :goto_bd

    :catch_4b
    move v1, v5

    goto/16 :goto_c7

    :cond_4e
    const v5, 0xd800

    if-lt v4, v5, :cond_a1

    const v5, 0xdfff

    if-ge v5, v4, :cond_59

    goto :goto_a1

    :cond_59
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_9b

    .line 811
    :try_start_5d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 815
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_6b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_6b} :catch_99

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 816
    :try_start_72
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_75
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_72 .. :try_end_75} :catch_95

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 817
    :try_start_7d
    invoke-virtual {p2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_80} :catch_99

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 818
    :try_start_88
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 819
    invoke-virtual {p2, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_92} :catch_95

    move v1, v4

    move v2, v5

    goto :goto_bd

    :catch_95
    move v1, v4

    goto :goto_99

    :cond_97
    move v2, v5

    goto :goto_9b

    :catch_99
    :goto_99
    move v2, v5

    goto :goto_c7

    .line 812
    :cond_9b
    :goto_9b
    :try_start_9b
    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v3
    :try_end_a1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9b .. :try_end_a1} :catch_c7

    :cond_a1
    :goto_a1
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 802
    :try_start_a8
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_ab
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a8 .. :try_end_ab} :catch_4b

    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 803
    :try_start_b3
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 804
    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_bd
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25

    .line 824
    :cond_c3
    invoke-static {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V
    :try_end_c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b3 .. :try_end_c6} :catch_c7

    return-void

    .line 830
    :catch_c7
    :goto_c7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v0, p2

    .line 831
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed writing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method abstract encodeUtf8Direct(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation
.end method

.method final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final isValidUtf8([BII)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "index",
            "limit"
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "state",
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    .line 406
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 407
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 408
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1

    .line 409
    :cond_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 410
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 412
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract partialIsValidUtf8(I[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "bytes",
            "index",
            "limit"
        }
    .end annotation
.end method

.method final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "state",
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    if-eqz p1, :cond_92

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1e

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1d

    add-int/lit8 p1, p3, 0x1

    .line 447
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    goto :goto_1d

    :cond_1a
    move p3, p1

    goto/16 :goto_92

    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    const/16 v4, -0x10

    if-ge v0, v4, :cond_4f

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_38

    add-int/lit8 p1, p3, 0x1

    .line 456
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-lt p1, p4, :cond_35

    .line 458
    invoke-static {v0, p3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_35
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_38
    if-gt p1, v3, :cond_4e

    const/16 v4, -0x60

    if-ne v0, v1, :cond_40

    if-lt p1, v4, :cond_4e

    :cond_40
    const/16 v1, -0x13

    if-ne v0, v1, :cond_46

    if-ge p1, v4, :cond_4e

    :cond_46
    add-int/lit8 p1, p3, 0x1

    .line 467
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    :cond_4e
    return v2

    :cond_4f
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_64

    add-int/lit8 p1, p3, 0x1

    .line 477
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt p1, p4, :cond_62

    .line 479
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_62
    const/4 p3, 0x0

    goto :goto_6a

    :cond_64
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_6a
    if-nez p3, :cond_7c

    add-int/lit8 p3, p1, 0x1

    .line 485
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-lt p3, p4, :cond_79

    .line 487
    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_79
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_7c
    if-gt v1, v3, :cond_91

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_91

    if-gt p3, v3, :cond_91

    add-int/lit8 p3, p1, 0x1

    .line 504
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_92

    :cond_91
    return v2

    .line 511
    :cond_92
    :goto_92
    invoke-static {p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "state",
            "buffer",
            "index",
            "limit"
        }
    .end annotation
.end method
