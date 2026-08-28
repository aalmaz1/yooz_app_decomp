.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_DELIMITER:C = '.'

.field private static final IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_DELIMITER:C = ':'

.field private static final IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2e

    .line 108
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    const/16 v0, 0x3a

    .line 109
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    const-string v0, "127.0.0.1"

    .line 110
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    const-string v0, "0.0.0.0"

    .line 111
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .registers 1

    .line 103
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addr"
        }
    .end annotation

    .line 388
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 390
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 982
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result p0

    return p0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hextets"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    .line 438
    :goto_5
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_21

    .line 439
    array-length v5, p0

    if-ge v1, v5, :cond_15

    aget v5, p0, v1

    if-nez v5, :cond_15

    if-gez v4, :cond_1e

    move v4, v1

    goto :goto_1e

    :cond_15
    if-ltz v4, :cond_1e

    sub-int v5, v1, v4

    if-le v5, v2, :cond_1d

    move v3, v4

    move v2, v5

    :cond_1d
    move v4, v0

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    const/4 v1, 0x2

    if-lt v2, v1, :cond_28

    add-int/2addr v2, v3

    .line 453
    invoke-static {p0, v3, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    :cond_28
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/16 v0, 0x3a

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 323
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_19
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 330
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1101
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1102
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_13

    .line 1103
    aget-byte v3, v0, v1

    if-nez v3, :cond_13

    const/4 v3, -0x1

    .line 1104
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_13
    if-ltz v1, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    const-string v4, "Decrementing %s would wrap."

    .line 1108
    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1110
    aget-byte p0, v0, v1

    sub-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 1111
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    .line 158
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "\'%s\' is not an IP string literal."

    .line 155
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostAddr"
        }
    .end annotation

    .line 535
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Not a valid URI IP literal: \'%s\'"

    .line 537
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostAddr"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 545
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "["

    .line 550
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    goto :goto_21

    :cond_20
    const/4 v0, 0x4

    .line 559
    :goto_21
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_30

    .line 560
    array-length v1, p0

    if-eq v1, v0, :cond_2b

    goto :goto_30

    .line 564
    :cond_2b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 1157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "isIpv6"
        }
    .end annotation

    .line 1042
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const-string v3, "BigInteger must be greater than or equal to 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_15

    const/16 p1, 0x10

    goto :goto_16

    :cond_15
    const/4 p1, 0x4

    .line 1046
    :goto_16
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1047
    new-array v3, p1, [B

    .line 1049
    array-length v4, v0

    sub-int/2addr v4, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1050
    array-length v5, v0

    sub-int/2addr v5, v4

    sub-int v6, p1, v5

    move v7, v2

    :goto_27
    if-ge v7, v4, :cond_42

    .line 1055
    aget-byte v8, v0, v7

    if-nez v8, :cond_30

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1059
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p0, v0, v1

    const-string p0, "BigInteger cannot be converted to InetAddress because it has more than %d bytes: %s"

    .line 1056
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 1064
    :cond_42
    invoke-static {v0, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1067
    :try_start_45
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_49
    .catch Ljava/net/UnknownHostException; {:try_start_45 .. :try_end_49} :catch_4a

    return-object p0

    :catch_4a
    move-exception p0

    .line 1069
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static fromIPv4BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet4Address;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1017
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    return-object p0
.end method

.method public static fromIPv6BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet6Address;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1028
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet6Address;

    return-object p0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1005
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1084
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1085
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1086
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1088
    :cond_12
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 656
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 658
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 920
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_7

    .line 921
    check-cast p0, Ljava/net/Inet4Address;

    return-object p0

    .line 925
    :cond_7
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1b

    .line 928
    aget-byte v5, v0, v2

    if-eqz v5, :cond_18

    move v2, v1

    goto :goto_1c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    move v2, v4

    :goto_1c
    if-eqz v2, :cond_25

    .line 933
    aget-byte v5, v0, v3

    if-ne v5, v4, :cond_25

    .line 934
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object p0

    :cond_25
    if-eqz v2, :cond_2e

    .line 935
    aget-byte v0, v0, v3

    if-nez v0, :cond_2e

    .line 936
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object p0

    .line 939
    :cond_2e
    check-cast p0, Ljava/net/Inet6Address;

    .line 941
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 942
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->hashCode()I

    move-result p0

    int-to-long v0, p0

    goto :goto_4e

    .line 945
    :cond_40
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 949
    :goto_4e
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32_fixed()Lcom/google/common/hash/HashFunction;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result p0

    const/high16 v0, -0x20000000

    or-int/2addr p0, v0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_61

    const/4 p0, -0x2

    .line 960
    :cond_61
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 626
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0xc

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 841
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 842
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0

    .line 845
    :cond_b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 846
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0

    .line 849
    :cond_16
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 850
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 853
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "\'%s\' has no embedded IPv4 address."

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 123
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 129
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    return-object p0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 807
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 809
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0xc

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 746
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 749
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    .line 751
    invoke-static {p0, v1}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v3, 0xa

    .line 754
    invoke-static {p0, v3}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x10

    .line 756
    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v3, 0x0

    .line 757
    :goto_3d
    array-length v4, p0

    if-ge v3, v4, :cond_49

    .line 759
    aget-byte v4, p0, v3

    not-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 761
    :cond_49
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    .line 763
    new-instance v3, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v3, v0, p0, v2, v1}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v3
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 825
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hextets"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 472
    :goto_a
    array-length v4, p0

    if-ge v2, v4, :cond_34

    .line 473
    aget v4, p0, v2

    if-ltz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    if-eqz v4, :cond_27

    if-eqz v3, :cond_1d

    const/16 v3, 0x3a

    .line 476
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    :cond_1d
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_27
    if-eqz v2, :cond_2b

    if-eqz v3, :cond_30

    :cond_2b
    const-string v3, "::"

    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_a

    .line 486
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1125
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    const/4 v3, 0x0

    if-ltz v1, :cond_14

    .line 1126
    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 1127
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_14
    if-ltz v1, :cond_17

    move v3, v2

    :cond_17
    const-string v4, "Incrementing %s would wrap."

    .line 1131
    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1133
    aget-byte p0, v0, v1

    add-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 1134
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipStringParam"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 185
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ge v1, v4, :cond_31

    .line 186
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2e

    const/4 v8, 0x1

    if-ne v4, v7, :cond_17

    move v2, v8

    goto :goto_2e

    :cond_17
    const/16 v7, 0x3a

    if-ne v4, v7, :cond_20

    if-eqz v2, :cond_1e

    return-object v5

    :cond_1e
    move v3, v8

    goto :goto_2e

    :cond_20
    const/16 v7, 0x25

    if-ne v4, v7, :cond_25

    goto :goto_32

    :cond_25
    const/16 v7, 0x10

    .line 197
    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ne v4, v6, :cond_2e

    return-object v5

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_31
    move v1, v6

    :goto_32
    if-eqz v3, :cond_48

    if-eqz v2, :cond_3d

    .line 205
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3d

    return-object v5

    :cond_3d
    if-eq v1, v6, :cond_43

    .line 211
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 213
    :cond_43
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_48
    if-eqz v2, :cond_52

    if-eq v1, v6, :cond_4d

    return-object v5

    .line 218
    :cond_4d
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_52
    return-object v5
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 645
    aget-byte v1, p0, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_12

    move v0, v1

    :cond_12
    return v0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 606
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0xc

    .line 607
    aget-byte v0, p0, v0

    const/4 v2, 0x1

    if-nez v0, :cond_28

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    if-nez v0, :cond_28

    const/16 v0, 0xe

    aget-byte v0, p0, v0

    if-nez v0, :cond_28

    const/16 v0, 0xf

    aget-byte p0, p0, v0

    if-eqz p0, :cond_27

    if-ne p0, v2, :cond_28

    :cond_27
    return v1

    :cond_28
    return v2
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 174
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 783
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 787
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0x8

    .line 789
    aget-byte v0, p0, v0

    const/4 v2, 0x3

    or-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    const/16 v0, 0x9

    .line 796
    aget-byte v0, p0, v0

    if-nez v0, :cond_2b

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_2b

    const/16 v0, 0xb

    aget-byte p0, p0, v0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 879
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 880
    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_28

    move v1, v0

    :goto_d
    const/16 v2, 0xa

    if-ge v1, v2, :cond_19

    .line 882
    aget-byte v2, p0, v1

    if-eqz v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    :goto_19
    const/16 v1, 0xc

    if-ge v2, v1, :cond_26

    .line 887
    aget-byte v1, p0, v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_23

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1146
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 1147
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_12

    aget-byte v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    return v1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 731
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 732
    aget-byte v1, p0, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    if-ne v2, v1, :cond_1b

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_1b

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    if-nez p0, :cond_1b

    move v0, v1

    :cond_1b
    return v0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 580
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static parseHextet(Ljava/lang/String;II)S
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ipString",
            "start",
            "end"
        }
    .end annotation

    sub-int v0, p2, p1

    if-lez v0, :cond_1c

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1c

    const/4 v0, 0x0

    :goto_8
    if-ge p1, p2, :cond_1a

    shl-int/lit8 v0, v0, 0x4

    .line 371
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_1a
    int-to-short p0, v0

    return p0

    .line 366
    :cond_1c
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method private static parseOctet(Ljava/lang/String;II)B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ipString",
            "start",
            "end"
        }
    .end annotation

    sub-int v0, p2, p1

    if-lez v0, :cond_40

    const/4 v1, 0x3

    if-gt v0, v1, :cond_40

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 343
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_13

    goto :goto_19

    .line 344
    :cond_13
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_19
    :goto_19
    const/4 v0, 0x0

    :goto_1a
    if-ge p1, p2, :cond_34

    mul-int/lit8 v0, v0, 0xa

    .line 349
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_2e

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 351
    :cond_2e
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_34
    const/16 p0, 0xff

    if-gt v0, p0, :cond_3a

    int-to-byte p0, v0

    return p0

    .line 356
    :cond_3a
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 339
    :cond_40
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 225
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_d

    return-object v1

    :cond_d
    new-array v0, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_2c

    const/16 v5, 0x2e

    .line 234
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_20

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 239
    :cond_20
    :try_start_20
    invoke-static {p0, v4, v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;II)B

    move-result v4

    aput-byte v4, v0, v3
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_26} :catch_2b

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catch_2b
    return-object v1

    :cond_2c
    return-object v0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 252
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_af

    const/16 v3, 0x8

    if-le v0, v3, :cond_10

    goto/16 :goto_af

    :cond_10
    const/4 v4, 0x1

    add-int/2addr v0, v4

    rsub-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 260
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    const/16 v10, 0x3a

    if-ge v7, v9, :cond_44

    .line 261
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_41

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_41

    if-eqz v8, :cond_31

    return-object v1

    :cond_31
    add-int/lit8 v5, v5, 0x1

    if-nez v7, :cond_37

    add-int/lit8 v5, v5, 0x1

    .line 270
    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    if-ne v7, v8, :cond_40

    add-int/lit8 v5, v5, 0x1

    :cond_40
    move v8, v4

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 275
    :cond_44
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_51

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_51

    return-object v1

    .line 278
    :cond_51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_68

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_68

    return-object v1

    :cond_68
    if-eqz v8, :cond_6d

    if-gtz v5, :cond_6d

    return-object v1

    :cond_6d
    if-nez v8, :cond_72

    if-eq v0, v3, :cond_72

    return-object v1

    :cond_72
    const/16 v0, 0x10

    .line 289
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 295
    :try_start_78
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_7f

    goto :goto_80

    :cond_7f
    move v4, v6

    .line 298
    :goto_80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_aa

    .line 299
    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_91

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 303
    :cond_91
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_a0

    move v3, v6

    :goto_98
    if-ge v3, v5, :cond_a7

    .line 306
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 310
    :cond_a0
    invoke-static {p0, v4, v2}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;II)S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_a7} :catch_af

    :cond_a7
    add-int/lit8 v4, v2, 0x1

    goto :goto_80

    .line 317
    :cond_aa
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :catch_af
    :cond_af
    :goto_af
    return-object v1
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 410
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_12

    .line 414
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 416
    :cond_12
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 417
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v0, :cond_34

    mul-int/lit8 v4, v3, 0x2

    .line 420
    aget-byte v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    invoke-static {v2, v2, v5, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 422
    :cond_34
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 423
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 995
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 509
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1e

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_1e
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
