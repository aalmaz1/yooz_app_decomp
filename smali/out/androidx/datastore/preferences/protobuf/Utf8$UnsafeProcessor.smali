.class final Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;
.super Landroidx/datastore/preferences/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1169
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .line 1172
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .registers 11

    .line 1774
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :goto_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    .line 1783
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_9

    :cond_19
    move-wide p0, v4

    :cond_1a
    if-nez p2, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 p2, p2, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    if-nez p2, :cond_29

    return v1

    :cond_29
    add-int/lit8 p2, p2, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p0

    .line 1800
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p0, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_64

    const/4 v6, 0x2

    if-ge p2, v6, :cond_46

    .line 1808
    invoke-static {p0, p1, v1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_46
    add-int/lit8 p2, p2, -0x2

    add-long v6, p0, v2

    .line 1812
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gt p0, v4, :cond_63

    const/16 p1, -0x60

    if-ne v1, v0, :cond_56

    if-lt p0, p1, :cond_63

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p0, p1, :cond_63

    :cond_5c
    add-long/2addr v2, v6

    .line 1819
    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    :cond_63
    return v5

    :cond_64
    const/4 v0, 0x3

    if-ge p2, v0, :cond_6c

    .line 1827
    invoke-static {p0, p1, v1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_6c
    add-int/lit8 p2, p2, -0x3

    add-long v6, p0, v2

    .line 1831
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gt p0, v4, :cond_8e

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1e

    if-nez p0, :cond_8e

    add-long p0, v6, v2

    .line 1839
    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v4, :cond_8e

    add-long/2addr v2, p0

    .line 1841
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    :cond_8e
    return v5
.end method

.method private static partialIsValidUtf8([BJI)I
    .registers 12

    .line 1700
    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :goto_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    .line 1709
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_9

    :cond_19
    move-wide p1, v4

    :cond_1a
    if-nez p3, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    if-nez p3, :cond_29

    return v1

    :cond_29
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p1

    .line 1726
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p1, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_64

    const/4 v6, 0x2

    if-ge p3, v6, :cond_46

    .line 1733
    invoke-static {p0, v1, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_46
    add-int/lit8 p3, p3, -0x2

    add-long v6, p1, v2

    .line 1738
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_63

    const/16 p2, -0x60

    if-ne v1, v0, :cond_56

    if-lt p1, p2, :cond_63

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p1, p2, :cond_63

    :cond_5c
    add-long/2addr v2, v6

    .line 1744
    invoke-static {p0, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    :cond_63
    return v5

    :cond_64
    const/4 v0, 0x3

    if-ge p3, v0, :cond_6c

    .line 1751
    invoke-static {p0, v1, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_6c
    add-int/lit8 p3, p3, -0x3

    add-long v6, p1, v2

    .line 1756
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_8e

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_8e

    add-long p1, v6, v2

    .line 1763
    invoke-static {p0, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v4, :cond_8e

    add-long/2addr v2, p1

    .line 1765
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    :cond_8e
    return v5
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .registers 9

    const/16 v0, 0x10

    if-ge p2, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    move v2, v0

    :goto_e
    if-lez v2, :cond_1f

    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    .line 1683
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1b

    sub-int/2addr v0, v2

    return v0

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v3

    goto :goto_e

    :cond_1f
    sub-int v0, p2, v0

    :goto_21
    if-lt v0, v1, :cond_39

    .line 1693
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_21

    :cond_39
    sub-int/2addr p2, v0

    return p2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .registers 8

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ge p3, v0, :cond_6

    return v1

    :cond_6
    :goto_6
    if-ge v1, p3, :cond_16

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    .line 1660
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v2

    goto :goto_6

    :cond_16
    return p3
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .registers 6

    if-eqz p3, :cond_27

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    .line 1871
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1870
    invoke-static {p2, p3, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1873
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1868
    :cond_1e
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    invoke-static {p2, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1866
    :cond_27
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 1857
    invoke-static {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    .line 1856
    invoke-static {p1, p4, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1859
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1854
    :cond_1e
    invoke-static {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    invoke-static {p1, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1852
    :cond_27
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 1369
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c9

    add-int v0, p2, p3

    .line 1379
    new-array p3, p3, [C

    move v3, v1

    :goto_f
    if-ge p2, v0, :cond_26

    int-to-long v4, p2

    .line 1385
    invoke-static {p1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    .line 1386
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_26

    :cond_1d
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 1390
    invoke-static {v4, p3, v3}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_26
    :goto_26
    move v8, v3

    :goto_27
    if-ge p2, v0, :cond_c3

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 1394
    invoke-static {p1, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    .line 1395
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-eqz v4, :cond_55

    add-int/lit8 v4, v8, 0x1

    .line 1396
    invoke-static {p2, p3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_3b
    if-ge v3, v0, :cond_52

    int-to-long v5, v3

    .line 1400
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    .line 1401
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_52

    :cond_49
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 1405
    invoke-static {p2, p3, v4}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v4, v5

    goto :goto_3b

    :cond_52
    :goto_52
    move p2, v3

    move v8, v4

    goto :goto_27

    .line 1407
    :cond_55
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v4

    if-eqz v4, :cond_71

    if-ge v3, v0, :cond_6c

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1412
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 1411
    invoke-static {p2, v3, p3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_27

    .line 1409
    :cond_6c
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1413
    :cond_71
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v4

    if-eqz v4, :cond_96

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_91

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1419
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 1420
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 1417
    invoke-static {p2, v3, v4, p3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_27

    .line 1415
    :cond_91
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_96
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_be

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1429
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 1430
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 1431
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    .line 1427
    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_27

    .line 1425
    :cond_be
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1439
    :cond_c3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1370
    :cond_c9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 1371
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

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    .line 1446
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_d4

    .line 1450
    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    int-to-long v7, v1

    add-long/2addr v7, v5

    .line 1455
    new-array v0, v1, [C

    move v1, v3

    :goto_1c
    cmp-long v2, v5, v7

    const-wide/16 v15, 0x1

    if-gez v2, :cond_35

    .line 1461
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    .line 1462
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_35

    :cond_2d
    add-long/2addr v5, v15

    add-int/lit8 v9, v1, 0x1

    .line 1466
    invoke-static {v2, v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v9

    goto :goto_1c

    :cond_35
    :goto_35
    move v14, v1

    :goto_36
    cmp-long v1, v5, v7

    if-gez v1, :cond_ce

    add-long v1, v5, v15

    .line 1470
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    .line 1471
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-eqz v5, :cond_65

    add-int/lit8 v5, v14, 0x1

    .line 1472
    invoke-static {v9, v0, v14}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_4b
    cmp-long v6, v1, v7

    if-gez v6, :cond_62

    .line 1476
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1477
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_5a

    goto :goto_62

    :cond_5a
    add-long/2addr v1, v15

    add-int/lit8 v9, v5, 0x1

    .line 1481
    invoke-static {v6, v0, v5}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v5, v9

    goto :goto_4b

    :cond_62
    :goto_62
    move v14, v5

    move-wide v5, v1

    goto :goto_36

    .line 1483
    :cond_65
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v5

    if-eqz v5, :cond_81

    cmp-long v5, v1, v7

    if-gez v5, :cond_7c

    add-long v5, v1, v15

    .line 1488
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-int/lit8 v2, v14, 0x1

    .line 1487
    invoke-static {v9, v1, v0, v14}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v14, v2

    goto :goto_36

    .line 1485
    :cond_7c
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1489
    :cond_81
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v5

    if-eqz v5, :cond_a6

    sub-long v5, v7, v15

    cmp-long v5, v1, v5

    if-gez v5, :cond_a1

    add-long v5, v1, v15

    .line 1495
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-long v10, v5, v15

    .line 1496
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    add-int/lit8 v5, v14, 0x1

    .line 1493
    invoke-static {v9, v1, v2, v0, v14}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v14, v5

    move-wide v5, v10

    goto :goto_36

    .line 1491
    :cond_a1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a6
    const-wide/16 v5, 0x2

    sub-long v5, v7, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_c9

    add-long v5, v1, v15

    .line 1505
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v10

    add-long v1, v5, v15

    .line 1506
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    add-long v5, v1, v15

    .line 1507
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    add-int/lit8 v1, v14, 0x1

    move-object v13, v0

    .line 1503
    invoke-static/range {v9 .. v14}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/2addr v1, v4

    goto/16 :goto_35

    .line 1501
    :cond_c9
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1515
    :cond_ce
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1447
    :cond_d4
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1448
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1522
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_144

    .line 1523
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_144

    const/4 v2, 0x0

    :goto_1a
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_2f

    .line 1532
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 1533
    invoke-static {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-ne v2, v8, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v8, :cond_142

    .line 1541
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_4a

    cmp-long v14, v4, v6

    if-gez v14, :cond_4a

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 1543
    invoke-static {v1, v4, v5, v13}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    move v11, v3

    goto/16 :goto_fc

    :cond_4a
    const/16 v14, 0x800

    if-ge v13, v14, :cond_74

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_74

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 1545
    invoke-static {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 1546
    invoke-static {v1, v14, v15, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v19, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v19

    goto/16 :goto_fc

    :cond_74
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_7e

    if-ge v3, v13, :cond_af

    :cond_7e
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v15, v4, v15

    if-gtz v15, :cond_af

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 1549
    invoke-static {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 1550
    invoke-static {v1, v14, v15, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v14, 0x1

    add-long v17, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 1551
    invoke-static {v1, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v12, v17

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_fc

    :cond_af
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    if-gtz v11, :cond_10f

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_107

    .line 1556
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 1559
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 1560
    invoke-static {v1, v4, v5, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 1561
    invoke-static {v1, v13, v14, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 1562
    invoke-static {v1, v4, v5, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 1563
    invoke-static {v1, v14, v15, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    move v2, v3

    :goto_fc
    add-int/lit8 v2, v2, 0x1

    move v3, v11

    move-wide/from16 v19, v4

    move-wide v4, v12

    move-wide/from16 v11, v19

    goto/16 :goto_33

    :cond_106
    move v2, v3

    .line 1557
    :cond_107
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_10f
    if-gt v14, v13, :cond_127

    if-gt v13, v3, :cond_127

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_121

    .line 1566
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_127

    .line 1568
    :cond_121
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1571
    :cond_127
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_142
    long-to-int v0, v4

    return v0

    .line 1525
    :cond_144
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    .line 1526
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1581
    invoke-static/range {p2 .. p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1582
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1583
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1584
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_15a

    const/4 v9, 0x0

    :goto_24
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_3a

    .line 1594
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_3a

    add-long v12, v4, v13

    int-to-byte v14, v15

    .line 1595
    invoke-static {v4, v5, v14}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_24

    :cond_3a
    if-ne v9, v8, :cond_42

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 1599
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_42
    :goto_42
    if-ge v9, v8, :cond_14f

    .line 1604
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_5e

    cmp-long v16, v4, v6

    if-gez v16, :cond_5e

    add-long v16, v4, v13

    int-to-byte v15, v15

    .line 1606
    invoke-static {v4, v5, v15}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v19, v6

    move v1, v9

    move v9, v12

    move-wide/from16 v4, v16

    move-wide/from16 v17, v2

    goto/16 :goto_107

    :cond_5e
    const/16 v12, 0x800

    if-ge v15, v12, :cond_89

    const-wide/16 v17, 0x2

    sub-long v17, v6, v17

    cmp-long v12, v4, v17

    if-gtz v12, :cond_89

    move-wide/from16 v17, v2

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 1608
    invoke-static {v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v1, v13

    and-int/lit8 v5, v15, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    .line 1609
    invoke-static {v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v3

    :goto_82
    move-wide/from16 v19, v6

    move v1, v9

    const/16 v9, 0x80

    goto/16 :goto_107

    :cond_89
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_95

    if-ge v1, v15, :cond_bf

    :cond_95
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_bf

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 1612
    invoke-static {v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v1, v13

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    .line 1613
    invoke-static {v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v1, v3, v13

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v12

    int-to-byte v5, v5

    .line 1614
    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v1

    goto :goto_82

    :cond_bf
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_11c

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_114

    .line 1619
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 1622
    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move-wide/from16 v19, v6

    add-long v6, v4, v13

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 1623
    invoke-static {v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v6, v13

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v9, 0x80

    or-int/2addr v5, v9

    int-to-byte v5, v5

    .line 1624
    invoke-static {v6, v7, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v5, v3, v13

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v9

    int-to-byte v7, v7

    .line 1625
    invoke-static {v3, v4, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v5, v13

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v9

    int-to-byte v2, v2

    .line 1626
    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v3

    :goto_107
    add-int/lit8 v1, v1, 0x1

    move v12, v9

    move-wide/from16 v2, v17

    move-wide/from16 v6, v19

    move v9, v1

    move-object/from16 v1, p2

    goto/16 :goto_42

    :cond_113
    move v9, v1

    .line 1620
    :cond_114
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_11c
    if-gt v2, v15, :cond_134

    if-gt v15, v1, :cond_134

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_12e

    .line 1629
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_134

    .line 1631
    :cond_12e
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1634
    :cond_134
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14f
    move-wide/from16 v17, v2

    sub-long v4, v4, v17

    long-to-int v0, v4

    move-object/from16 v1, p2

    .line 1639
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 1587
    :cond_15a
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    .line 1588
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method partialIsValidUtf8(I[BII)I
    .registers 16

    or-int v0, p3, p4

    .line 1178
    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_a8

    int-to-long v2, p3

    int-to-long p3, p4

    if-eqz p1, :cond_a1

    cmp-long v0, v2, p3

    if-ltz v0, :cond_11

    return p1

    :cond_11
    int-to-byte v0, p1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge v0, v4, :cond_2b

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2a

    add-long/2addr v7, v2

    .line 1204
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_27

    goto :goto_2a

    :cond_27
    move-wide v2, v7

    goto/16 :goto_a1

    :cond_2a
    :goto_2a
    return v5

    :cond_2b
    const/16 v9, -0x10

    if-ge v0, v9, :cond_5f

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_45

    add-long v9, v2, v7

    .line 1213
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v1, v9, p3

    if-ltz v1, :cond_44

    .line 1215
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_44
    move-wide v2, v9

    :cond_45
    if-gt p1, v6, :cond_5e

    const/16 v1, -0x60

    if-ne v0, v4, :cond_4d

    if-lt p1, v1, :cond_5e

    :cond_4d
    const/16 v4, -0x13

    if-ne v0, v4, :cond_53

    if-ge p1, v1, :cond_5e

    :cond_53
    add-long v0, v2, v7

    .line 1224
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_5c

    goto :goto_5e

    :cond_5c
    move-wide v2, v0

    goto :goto_a1

    :cond_5e
    :goto_5e
    return v5

    :cond_5f
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_76

    add-long v9, v2, v7

    .line 1234
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    cmp-long p1, v9, p3

    if-ltz p1, :cond_74

    .line 1236
    invoke-static {v0, v4}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_74
    move-wide v2, v9

    goto :goto_79

    :cond_76
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_79
    if-nez v1, :cond_8b

    add-long v9, v2, v7

    .line 1242
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    cmp-long p1, v9, p3

    if-ltz p1, :cond_8a

    .line 1244
    invoke-static {v0, v4, v1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_8a
    move-wide v2, v9

    :cond_8b
    if-gt v4, v6, :cond_a0

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_a0

    if-gt v1, v6, :cond_a0

    add-long v0, v2, v7

    .line 1261
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_5c

    :cond_a0
    return v5

    :cond_a1
    :goto_a1
    sub-long/2addr p3, v2

    long-to-int p1, p3

    .line 1267
    invoke-static {p2, v2, v3, p1}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    return p1

    .line 1179
    :cond_a8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 1180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 15

    or-int v0, p3, p4

    .line 1274
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_b2

    .line 1278
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v2

    if-eqz p1, :cond_ab

    cmp-long p4, v2, p2

    if-ltz p4, :cond_1b

    return p1

    :cond_1b
    int-to-byte p4, p1

    const/16 v0, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge p4, v0, :cond_35

    const/16 p1, -0x3e

    if-lt p4, p1, :cond_34

    add-long/2addr v6, v2

    .line 1301
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_31

    goto :goto_34

    :cond_31
    move-wide v2, v6

    goto/16 :goto_ab

    :cond_34
    :goto_34
    return v4

    :cond_35
    const/16 v8, -0x10

    if-ge p4, v8, :cond_69

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_4f

    add-long v8, v2, v6

    .line 1310
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    cmp-long v1, v8, p2

    if-ltz v1, :cond_4e

    .line 1312
    invoke-static {p4, p1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_4e
    move-wide v2, v8

    :cond_4f
    if-gt p1, v5, :cond_68

    const/16 v1, -0x60

    if-ne p4, v0, :cond_57

    if-lt p1, v1, :cond_68

    :cond_57
    const/16 v0, -0x13

    if-ne p4, v0, :cond_5d

    if-ge p1, v1, :cond_68

    :cond_5d
    add-long v0, v2, v6

    .line 1321
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_66

    goto :goto_68

    :cond_66
    move-wide v2, v0

    goto :goto_ab

    :cond_68
    :goto_68
    return v4

    :cond_69
    shr-int/lit8 v0, p1, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_80

    add-long v8, v2, v6

    .line 1331
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    cmp-long p1, v8, p2

    if-ltz p1, :cond_7e

    .line 1333
    invoke-static {p4, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_7e
    move-wide v2, v8

    goto :goto_83

    :cond_80
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_83
    if-nez v1, :cond_95

    add-long v8, v2, v6

    .line 1339
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    cmp-long p1, v8, p2

    if-ltz p1, :cond_94

    .line 1341
    invoke-static {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_94
    move-wide v2, v8

    :cond_95
    if-gt v0, v5, :cond_aa

    shl-int/lit8 p1, p4, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_aa

    if-gt v1, v5, :cond_aa

    add-long v0, v2, v6

    .line 1358
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_66

    :cond_aa
    return v4

    :cond_ab
    :goto_ab
    sub-long/2addr p2, v2

    long-to-int p1, p2

    .line 1364
    invoke-static {v2, v3, p1}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    return p1

    .line 1275
    :cond_b2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1276
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
