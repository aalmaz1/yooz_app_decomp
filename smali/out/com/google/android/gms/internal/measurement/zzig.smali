.class final Lcom/google/android/gms/internal/measurement/zzig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"


# static fields
.field private static volatile zza:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static zza([BI)D
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzd([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zza(I[BIILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_4a

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 p0, 0x5

    if-ne v0, p0, :cond_17

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 214
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    :cond_1c
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_21
    if-ge p2, p3, :cond_30

    .line 207
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p2

    .line 208
    iget v0, p4, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-eq v0, p0, :cond_30

    .line 210
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I[BIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p2

    goto :goto_21

    :cond_30
    if-gt p2, p3, :cond_35

    if-ne v0, p0, :cond_35

    return p2

    .line 212
    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzg()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 202
    :cond_3a
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p0

    .line 203
    iget p1, p4, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    add-int/2addr p0, p1

    return p0

    :cond_42
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 198
    :cond_45
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzig;->zzd([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p0

    return p0

    .line 194
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method static zza(I[BIILcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzij;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzij;",
            ")I"
        }
    .end annotation

    .line 145
    check-cast p4, Lcom/google/android/gms/internal/measurement/zzjw;

    .line 146
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p2

    .line 147
    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    :goto_b
    if-ge p2, p3, :cond_1f

    .line 149
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result v0

    .line 150
    iget v1, p5, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-ne p0, v1, :cond_1f

    .line 151
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p2

    .line 152
    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    goto :goto_b

    :cond_1f
    return p2
.end method

.method static zza(I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzij;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_a7

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_99

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_64

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 p3, 0x5

    if-ne v0, p3, :cond_22

    .line 86
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 115
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 100
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzd()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    and-int/lit8 v2, p0, -0x8

    or-int/lit8 v8, v2, 0x4

    .line 103
    iget v2, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    add-int/2addr v2, v1

    iput v2, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    .line 104
    iget v2, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    const/4 v2, 0x0

    :goto_3a
    if-ge p2, p3, :cond_52

    .line 106
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result v4

    .line 107
    iget p2, p5, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    move v2, p2

    if-eq p2, v8, :cond_51

    move-object v3, p1

    move v5, p3

    move-object v6, v0

    move-object v7, p5

    .line 109
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzij;)I

    move-result v2

    move v9, v2

    move v2, p2

    move p2, v9

    goto :goto_3a

    :cond_51
    move p2, v4

    .line 110
    :cond_52
    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    sub-int/2addr p1, v1

    iput p1, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    if-gt p2, p3, :cond_5f

    if-ne v2, v8, :cond_5f

    .line 113
    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(ILjava/lang/Object;)V

    return p2

    .line 112
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzg()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 90
    :cond_64
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p2

    .line 91
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-ltz p3, :cond_86

    .line 94
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_81

    if-nez p3, :cond_78

    .line 97
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(ILjava/lang/Object;)V

    goto :goto_7f

    .line 98
    :cond_78
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzik;->zza([BII)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(ILjava/lang/Object;)V

    :goto_7f
    add-int/2addr p2, p3

    return p2

    .line 95
    :cond_81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzi()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 93
    :cond_86
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzf()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 88
    :cond_8b
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzd([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 83
    :cond_99
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zzd([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 84
    iget-wide p2, p5, Lcom/google/android/gms/internal/measurement/zzij;->zzb:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(ILjava/lang/Object;)V

    return p1

    .line 79
    :cond_a7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method static zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzmk;Lcom/google/android/gms/internal/measurement/zzij;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzlc;",
            "Lcom/google/android/gms/internal/measurement/zzmk<",
            "Lcom/google/android/gms/internal/measurement/zzmj;",
            "Lcom/google/android/gms/internal/measurement/zzmj;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzij;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 p6, p0, 0x3

    .line 15
    iget-object v0, p7, Lcom/google/android/gms/internal/measurement/zzij;->zzd:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 16
    invoke-virtual {v0, p5, p6}, Lcom/google/android/gms/internal/measurement/zzjg;->zza(Lcom/google/android/gms/internal/measurement/zzlc;I)Lcom/google/android/gms/internal/measurement/zzjt$zzf;

    move-result-object p5

    if-nez p5, :cond_18

    .line 19
    invoke-static {p4}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzij;)I

    move-result p0

    return p0

    .line 21
    :cond_18
    check-cast p4, Lcom/google/android/gms/internal/measurement/zzjt$zzd;

    .line 22
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzjm;

    .line 24
    iget-object p0, p4, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzjm;

    .line 25
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method

.method static zza(I[BILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 5

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 122
    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    .line 124
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 127
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 129
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 132
    aget-byte p2, p1, p2

    if-ltz p2, :cond_30

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    .line 134
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    return v0

    :cond_30
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 137
    aget-byte v0, p1, v0

    if-ltz v0, :cond_41

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 139
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    return p2

    :cond_41
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_46
    add-int/lit8 v0, p2, 0x1

    .line 142
    aget-byte p2, p1, p2

    if-ltz p2, :cond_4f

    .line 143
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    return v0

    :cond_4f
    move p2, v0

    goto :goto_46
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlu;I[BIILcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzij;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzlu;",
            "I[BII",
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzij;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzlu;[BIIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p3

    .line 35
    iget-object v1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/measurement/zzkc;->add(Ljava/lang/Object;)Z

    :goto_13
    if-ge p3, p4, :cond_2c

    .line 37
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result v3

    .line 38
    iget v1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-ne p1, v1, :cond_2c

    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzlu;[BIIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p3

    .line 40
    iget-object v1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/measurement/zzkc;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2c
    return p3
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzlu;[BIIILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zza()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 28
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;[BIIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 29
    invoke-interface {p0, v7}, Lcom/google/android/gms/internal/measurement/zzlu;->zzd(Ljava/lang/Object;)V

    .line 30
    iput-object v7, p5, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zza()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 45
    invoke-interface {p0, v6}, Lcom/google/android/gms/internal/measurement/zzlu;->zzd(Ljava/lang/Object;)V

    .line 46
    iput-object v6, p4, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;[BIIILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlg;

    .line 172
    iget p1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    .line 173
    iget p1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 176
    iget p2, p6, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    .line 177
    iput-object p0, p6, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    .line 179
    aget-byte p3, p2, p3

    if-gez p3, :cond_c

    .line 181
    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I[BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result v0

    .line 182
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    :cond_c
    move v3, v0

    if-ltz p3, :cond_2f

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_2f

    .line 185
    iget p4, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    .line 186
    iget p4, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    invoke-static {p4}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    .line 187
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzij;)V

    .line 188
    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Lcom/google/android/gms/internal/measurement/zzij;->zze:I

    .line 189
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    return p3

    .line 184
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzi()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method static zza([BILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 4
    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-ltz v0, :cond_20

    .line 7
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    if-nez v0, :cond_13

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    return p1

    .line 12
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza([BII)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 8
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzi()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0

    .line 6
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzf()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method static zza([BILcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzij;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzij;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    .line 59
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 60
    iget v0, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    .line 62
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 63
    iget v1, p3, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    .line 65
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzi()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method private static zza(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    .line 217
    sget v0, Lcom/google/android/gms/internal/measurement/zzig;->zza:I

    if-ge p0, v0, :cond_5

    return-void

    .line 218
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzh()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method static zzb([BI)F
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzlu;I[BIILcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzij;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzij;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p3

    .line 50
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge p3, p4, :cond_1d

    .line 52
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result v0

    .line 53
    iget v1, p6, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-ne p1, v1, :cond_1d

    .line 54
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p3

    .line 55
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return p3
.end method

.method static zzb([BILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    .line 67
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc([BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p1

    .line 68
    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    if-ltz v0, :cond_17

    if-nez v0, :cond_f

    const-string p0, ""

    .line 72
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    return p1

    .line 74
    :cond_f
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzmp;->zzb([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzij;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 70
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkb;->zzf()Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p0

    throw p0
.end method

.method static zzc([BI)I
    .registers 4

    .line 26
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zzc([BILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    .line 116
    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    .line 118
    iput p1, p2, Lcom/google/android/gms/internal/measurement/zzij;->zza:I

    return v0

    .line 120
    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I[BILcom/google/android/gms/internal/measurement/zzij;)I

    move-result p0

    return p0
.end method

.method static zzd([BILcom/google/android/gms/internal/measurement/zzij;)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    .line 155
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    .line 157
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzij;->zzb:J

    return v0

    :cond_e
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 161
    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_1c
    if-gez v0, :cond_2c

    add-int/lit8 v0, p1, 0x1

    .line 165
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_1c

    .line 168
    :cond_2c
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzij;->zzb:J

    return p1
.end method

.method static zzd([BI)J
    .registers 9

    .line 215
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
