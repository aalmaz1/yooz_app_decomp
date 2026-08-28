.class final Lcom/google/android/gms/internal/measurement/zzlw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzmk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmk<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 232
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    return-void
.end method

.method static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "*>;)I"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkk;

    if-eqz v0, :cond_b

    .line 93
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ILcom/google/android/gms/internal/measurement/zzkk;)I

    move-result p0

    return p0

    .line 94
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(ILcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzlu;)I

    move-result p0

    return p0
.end method

.method static zza(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ">;)I"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 10
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 11
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_21

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Lcom/google/android/gms/internal/measurement/zzik;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    return v0
.end method

.method static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzlc;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "*>;)I"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_19

    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ILcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzlu;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return v2
.end method

.method static zza(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p2, 0x1

    .line 5
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IZ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zza(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzmk;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzmk<",
            "**>;"
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    return-object v0
.end method

.method static zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmk;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "IITUB;",
            "Lcom/google/android/gms/internal/measurement/zzmk<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_6

    .line 229
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/measurement/zzmk;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_6
    int-to-long v0, p2

    .line 230
    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmk;->zzb(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method static zza(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzjx;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmk;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzjx;",
            "TUB;",
            "Lcom/google/android/gms/internal/measurement/zzmk<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_3

    return-object p4

    .line 205
    :cond_3
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3c

    .line 207
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v1, v0, :cond_32

    .line 209
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 210
    invoke-interface {p3, v3}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eq v1, v2, :cond_28

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 215
    :cond_2b
    invoke-static {p0, p1, v3, p4, p5}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmk;)Ljava/lang/Object;

    move-result-object p4

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_32
    if-eq v2, v0, :cond_5e

    .line 218
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_5e

    .line 220
    :cond_3c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 221
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 224
    invoke-static {p0, p1, v0, p4, p5}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmk;)Ljava/lang/Object;

    move-result-object p4

    .line 225
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_40

    :cond_5e
    :goto_5e
    return-object p4
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 256
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zznb;->zza(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Lcom/google/android/gms/internal/measurement/zzlu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 273
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 274
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;)V

    :cond_b
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 252
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 253
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zza(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzji;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/measurement/zzjo<",
            "TFT;>;>(",
            "Lcom/google/android/gms/internal/measurement/zzji<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzji;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjm;

    move-result-object p2

    .line 235
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzjm;->zza:Lcom/google/android/gms/internal/measurement/zzlv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzji;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjm;

    move-result-object p0

    .line 238
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjm;->zza(Lcom/google/android/gms/internal/measurement/zzjm;)V

    :cond_13
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzkv;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkv;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 241
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zzml;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzml;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 242
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 243
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/measurement/zzml;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzmk;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzmk<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmk;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzmk;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 247
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmk;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static zza(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 250
    const-class v0, Lcom/google/android/gms/internal/measurement/zzjt;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    return-void
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 306
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method static zzb(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 147
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 148
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzkj;

    if-eqz v2, :cond_2e

    .line 149
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkj;

    :goto_13
    if-ge v1, v0, :cond_49

    .line 151
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(I)Ljava/lang/Object;

    move-result-object v2

    .line 152
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v3, :cond_24

    .line 153
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Lcom/google/android/gms/internal/measurement/zzik;)I

    move-result v2

    goto :goto_2a

    .line 154
    :cond_24
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Ljava/lang/String;)I

    move-result v2

    :goto_2a
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2e
    :goto_2e
    if-ge v1, v0, :cond_49

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 159
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v3, :cond_3f

    .line 160
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Lcom/google/android/gms/internal/measurement/zzik;)I

    move-result v2

    goto :goto_45

    .line 161
    :cond_3f
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Ljava/lang/String;)I

    move-result v2

    :goto_45
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_49
    return p0
.end method

.method static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "*>;)I"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 98
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_d
    if-ge v1, v0, :cond_28

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 101
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzkk;

    if-eqz v3, :cond_1e

    .line 102
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Lcom/google/android/gms/internal/measurement/zzkk;)I

    move-result v2

    goto :goto_24

    .line 103
    :cond_1e
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzlu;)I

    move-result v2

    :goto_24
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_28
    return p0
.end method

.method static zzb(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzb(Ljava/util/List;)I

    move-result p1

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzb(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 24
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz v2, :cond_1d

    .line 25
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjw;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 27
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 297
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 298
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zznb;->zzb(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Lcom/google/android/gms/internal/measurement/zzlu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 283
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;)V

    :cond_b
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 258
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 259
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzb(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzc(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 38
    :cond_8
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzc(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 262
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzc(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzd(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-wide/16 v0, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(IJ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzd(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 265
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzd(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zze(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zze(Ljava/util/List;)I

    move-result p1

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zze(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 63
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz v2, :cond_1d

    .line 64
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjw;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 267
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 268
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zze(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzf(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzf(Ljava/util/List;)I

    move-result p2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static zzf(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 82
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz v2, :cond_1d

    .line 83
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkn;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 270
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 271
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzf(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzg(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzg(Ljava/util/List;)I

    move-result p1

    .line 110
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzg(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 115
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz v2, :cond_1d

    .line 116
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjw;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 122
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 276
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 277
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzg(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzh(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzh(Ljava/util/List;)I

    move-result p1

    .line 129
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzh(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 134
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz v2, :cond_1d

    .line 135
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkn;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 137
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 141
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 279
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 280
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzh(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzi(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzi(Ljava/util/List;)I

    move-result p1

    .line 168
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzi(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 173
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz v2, :cond_1d

    .line 174
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjw;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 176
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzj(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 180
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzj(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 285
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 286
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzi(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzj(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 186
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzj(Ljava/util/List;)I

    move-result p1

    .line 187
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzi(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzj(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 192
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz v2, :cond_1d

    .line 193
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkn;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_32

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzg(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 199
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzg(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 288
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 289
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzj(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 291
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 292
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzk(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 294
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 295
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzl(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 300
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 301
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzm(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zznb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zznb;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 303
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 304
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznb;->zzn(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method
