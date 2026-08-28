.class final Lcom/google/android/gms/internal/measurement/zzmq;
.super Lcom/google/android/gms/internal/measurement/zzmr;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I[BII)I
    .registers 11

    :goto_0
    if-ge p3, p4, :cond_9

    .line 38
    aget-byte p1, p2, p3

    if-ltz p1, :cond_9

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    if-lt p3, p4, :cond_d

    return p1

    :cond_d
    :goto_d
    if-lt p3, p4, :cond_10

    return p1

    :cond_10
    add-int/lit8 v0, p3, 0x1

    .line 43
    aget-byte p3, p2, p3

    if-gez p3, :cond_76

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p3, v1, :cond_2b

    if-lt v0, p4, :cond_20

    return p3

    :cond_20
    const/16 v1, -0x3e

    if-lt p3, v1, :cond_2a

    add-int/lit8 p3, v0, 0x1

    .line 47
    aget-byte v0, p2, v0

    if-le v0, v3, :cond_d

    :cond_2a
    return v2

    :cond_2b
    const/16 v4, -0x10

    if-ge p3, v4, :cond_51

    add-int/lit8 v4, p4, -0x1

    if-lt v0, v4, :cond_38

    .line 51
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/zzmp;->zza([BII)I

    move-result p1

    return p1

    :cond_38
    add-int/lit8 v4, v0, 0x1

    .line 52
    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_50

    const/16 v5, -0x60

    if-ne p3, v1, :cond_44

    if-lt v0, v5, :cond_50

    :cond_44
    const/16 v1, -0x13

    if-ne p3, v1, :cond_4a

    if-ge v0, v5, :cond_50

    :cond_4a
    add-int/lit8 p3, v4, 0x1

    aget-byte v0, p2, v4

    if-le v0, v3, :cond_d

    :cond_50
    return v2

    :cond_51
    add-int/lit8 v1, p4, -0x2

    if-lt v0, v1, :cond_5a

    .line 55
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/zzmp;->zza([BII)I

    move-result p1

    return p1

    :cond_5a
    add-int/lit8 v1, v0, 0x1

    .line 56
    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_75

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p3, v0

    shr-int/lit8 p3, p3, 0x1e

    if-nez p3, :cond_75

    add-int/lit8 p3, v1, 0x1

    aget-byte v0, p2, v1

    if-gt v0, v3, :cond_75

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_76

    :cond_75
    return v2

    :cond_76
    move p3, v0

    goto :goto_d
.end method

.method final zza(Ljava/lang/String;[BII)I
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1a

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 6
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p3, v0

    return p3

    :cond_1e
    add-int/2addr p3, v1

    :goto_1f
    if-ge v1, v0, :cond_fd

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p3, p4, :cond_31

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 14
    aput-byte v3, p2, p3

    :goto_2e
    move p3, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4b

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 16
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 17
    aput-byte v3, p2, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_55

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_75

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 19
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 20
    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 21
    aput-byte v3, p2, p3

    goto :goto_2e

    :cond_75
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 25
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 26
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 27
    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 28
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 29
    aput-byte v1, p2, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 24
    :cond_ba
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmt;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzmt;-><init>(II)V

    throw p1

    :cond_c2
    if-gt v5, v3, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p2, v1, 0x1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    .line 33
    :cond_d8
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmt;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzmt;-><init>(II)V

    throw p1

    .line 34
    :cond_de
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Failed writing "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fd
    return p3
.end method

.method final zza([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    or-int v0, p2, p3

    .line 59
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_aa

    add-int v0, p2, p3

    .line 64
    new-array p3, p3, [C

    move v3, v1

    :goto_f
    if-ge p2, v0, :cond_23

    .line 67
    aget-byte v4, p1, p2

    if-ltz v4, :cond_17

    move v5, v2

    goto :goto_18

    :cond_17
    move v5, v1

    :goto_18
    if-eqz v5, :cond_23

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 72
    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_23
    move v8, v3

    :goto_24
    if-ge p2, v0, :cond_a4

    add-int/lit8 v3, p2, 0x1

    .line 75
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2e

    move v4, v2

    goto :goto_2f

    :cond_2e
    move v4, v1

    :goto_2f
    if-eqz v4, :cond_4d

    add-int/lit8 v4, v8, 0x1

    .line 79
    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(B[CI)V

    :goto_36
    if-ge v3, v0, :cond_4a

    .line 81
    aget-byte p2, p1, v3

    if-ltz p2, :cond_3e

    move v5, v2

    goto :goto_3f

    :cond_3e
    move v5, v1

    :goto_3f
    if-eqz v5, :cond_4a

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 86
    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(B[CI)V

    move v4, v5

    goto :goto_36

    :cond_4a
    move p2, v3

    move v8, v4

    goto :goto_24

    :cond_4d
    const/16 v4, -0x20

    if-ge p2, v4, :cond_64

    if-ge v3, v0, :cond_5f

    add-int/lit8 v4, v3, 0x1

    .line 92
    aget-byte v3, p1, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_24

    .line 91
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    throw p1

    :cond_64
    const/16 v4, -0x10

    if-ge p2, v4, :cond_81

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7c

    add-int/lit8 v4, v3, 0x1

    .line 97
    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_24

    .line 96
    :cond_7c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    throw p1

    :cond_81
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_9f

    add-int/lit8 v4, v3, 0x1

    .line 100
    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzmo;->zza(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto :goto_24

    .line 99
    :cond_9f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p1

    throw p1

    .line 103
    :cond_a4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 60
    :cond_aa
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 61
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
