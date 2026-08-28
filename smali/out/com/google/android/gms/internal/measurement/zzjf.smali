.class final Lcom/google/android/gms/internal/measurement/zzjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzjc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzjc;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjc;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    .line 7
    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zzjf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzjc;)Lcom/google/android/gms/internal/measurement/zzjf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zzjf;

    if-eqz v0, :cond_7

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object p0

    .line 3
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjf;-><init>(Lcom/google/android/gms/internal/measurement/zzjc;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zza(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    return-void
.end method

.method public final zza(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ID)V

    return-void
.end method

.method public final zza(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IF)V

    return-void
.end method

.method public final zza(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)V

    return-void
.end method

.method public final zza(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzik;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzik;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzkt;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    .line 319
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    .line 320
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzku;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 321
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 322
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzku;->zza(Lcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_39
    return-void
.end method

.method public final zza(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v0, :cond_c

    .line 332
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ILcom/google/android/gms/internal/measurement/zzik;)V

    return-void

    .line 333
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method public final zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlc;

    const/4 v1, 0x3

    .line 233
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    .line 235
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznb;)V

    const/4 p2, 0x4

    .line 236
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILjava/lang/String;)V

    return-void
.end method

.method public final zza(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzik;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzlu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 239
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final zza(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzii;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzii;

    if-eqz p3, :cond_3b

    .line 14
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 16
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzii;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Z)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 19
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 20
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzii;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 24
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzii;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 25
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(I)Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 30
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 32
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 33
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Z)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 35
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 36
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 40
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 41
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zza(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IZ)V

    return-void
.end method

.method public final zzb(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    return-void
.end method

.method public final zzb(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(II)V

    return-void
.end method

.method public final zzb(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    .line 278
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IJ)V

    return-void
.end method

.method public final zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzlc;Lcom/google/android/gms/internal/measurement/zzlu;)V

    return-void
.end method

.method public final zzb(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzkj;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 490
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkj;

    .line 491
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 492
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(I)Ljava/lang/Object;

    move-result-object v2

    .line 493
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 494
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILjava/lang/String;)V

    goto :goto_25

    .line 495
    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzik;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    return-void

    .line 498
    :cond_29
    :goto_29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3d
    return-void
.end method

.method public final zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzlu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 327
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 328
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjf;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final zzb(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzje;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 53
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzje;

    if-eqz p3, :cond_3b

    .line 55
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 57
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzje;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 58
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzje;->zzb(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(D)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 60
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 61
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzje;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzje;->zzb(I)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 65
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzje;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 66
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzje;->zzb(I)D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 71
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 73
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(D)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 76
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 77
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 81
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 82
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzc(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)V

    return-void
.end method

.method public final zzc(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    .line 376
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 91
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz p3, :cond_3b

    .line 93
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 95
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 96
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 98
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 99
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result p3

    .line 101
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 104
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 105
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    .line 106
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 111
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 113
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 114
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 116
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 117
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 118
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 119
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 122
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 123
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzd(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    .line 336
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(II)V

    return-void
.end method

.method public final zzd(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(IJ)V

    return-void
.end method

.method public final zzd(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 130
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz p3, :cond_3b

    .line 132
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 134
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 135
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 137
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 138
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 139
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 142
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 143
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 148
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 150
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 151
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 153
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 154
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 155
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 158
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 159
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zze(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzk(II)V

    return-void
.end method

.method public final zze(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IJ)V

    return-void
.end method

.method public final zze(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 165
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz p3, :cond_3b

    .line 167
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 169
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 170
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 172
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 173
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 174
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 177
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 178
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 183
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 185
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 186
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 188
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 189
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 190
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 193
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 194
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzf(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(II)V

    return-void
.end method

.method public final zzf(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjs;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 200
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz p3, :cond_3b

    .line 202
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 204
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjs;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 205
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb(I)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(F)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 207
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 208
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjs;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 209
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb(I)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 212
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjs;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 213
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb(I)F

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 218
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 220
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 221
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(F)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 223
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 224
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 225
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 228
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 229
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 245
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz p3, :cond_3b

    .line 247
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 249
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 250
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 252
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 253
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 254
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 257
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 258
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 263
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 265
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 266
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 268
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 269
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 270
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 273
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 274
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzh(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 281
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz p3, :cond_3b

    .line 283
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 285
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 286
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 288
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 289
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 290
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    .line 291
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 294
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 295
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    .line 296
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 301
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 303
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 304
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 306
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 307
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 308
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 309
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 312
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 313
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 314
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzi(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 339
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz p3, :cond_3b

    .line 341
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 343
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 344
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzg(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 346
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 347
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 348
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result p3

    .line 349
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 352
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 353
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    .line 354
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 359
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 361
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 362
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzg(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 364
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 365
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 366
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 367
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 370
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 371
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 372
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 379
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz p3, :cond_3b

    .line 381
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 383
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 384
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 386
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 387
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 388
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    .line 389
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 392
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 393
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    .line 394
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 399
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 401
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 402
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 404
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 405
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 406
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 407
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 410
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 411
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 412
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzk(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 418
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz p3, :cond_3b

    .line 420
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 422
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 423
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 425
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 426
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 427
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzk(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 430
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 431
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzk(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 436
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 438
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 439
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 441
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 442
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 443
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzk(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 446
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 447
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzk(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 453
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz p3, :cond_3b

    .line 455
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 457
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 458
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 460
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 461
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 462
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 465
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 466
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 471
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 473
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 474
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 476
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 477
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 478
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 481
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 482
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzh(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzm(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 505
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjw;

    if-eqz p3, :cond_3b

    .line 507
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 509
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 510
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzj(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 512
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 513
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 514
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 517
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 518
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 523
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 525
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 526
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzj(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 528
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 529
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 530
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 533
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 534
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 540
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkn;

    if-eqz p3, :cond_3b

    .line 542
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 544
    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 545
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzg(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 547
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 548
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p1

    if-ge v2, p1, :cond_3a

    .line 549
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    return-void

    .line 552
    :cond_3b
    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p3

    if-ge v2, p3, :cond_4d

    .line 553
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    return-void

    :cond_4e
    if-eqz p3, :cond_8d

    .line 558
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(II)V

    move p1, v2

    move p3, p1

    .line 560
    :goto_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6f

    .line 561
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzg(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 563
    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(I)V

    .line 564
    :goto_74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 565
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8c
    return-void

    .line 568
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a5

    .line 569
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_a5
    return-void
.end method
