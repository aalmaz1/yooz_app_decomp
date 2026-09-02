.class public Lcom/sun/mail/imap/Rights;
.super Ljava/lang/Object;
.source "Rights.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Rights$Right;
    }
.end annotation


# instance fields
.field private rights:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    .line 78
    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 4

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    .line 78
    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 199
    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights;)V
    .registers 5

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    .line 78
    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 180
    iget-object p1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    .line 78
    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v0, 0x0

    .line 189
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/Rights;->add(Lcom/sun/mail/imap/Rights$Right;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public add(Lcom/sun/mail/imap/Rights;)V
    .registers 5

    const/4 v0, 0x0

    .line 218
    :goto_1
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 219
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_f

    .line 220
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 325
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/Rights;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_16

    const/16 v0, 0x80

    :try_start_9
    new-array v0, v0, [Z

    .line 326
    iput-object v0, v1, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 327
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_17

    :catch_15
    move-object v0, v1

    :catch_16
    move-object v1, v0

    :goto_17
    return-object v1
.end method

.method public contains(Lcom/sun/mail/imap/Rights$Right;)Z
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    aget-boolean p1, v0, p1

    return p1
.end method

.method public contains(Lcom/sun/mail/imap/Rights;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 263
    :goto_2
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 264
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 278
    instance-of v0, p1, Lcom/sun/mail/imap/Rights;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 281
    :cond_6
    check-cast p1, Lcom/sun/mail/imap/Rights;

    move v0, v1

    .line 283
    :goto_9
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 284
    aget-boolean v2, v2, v0

    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v3, v3, v0

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method public getRights()[Lcom/sun/mail/imap/Rights$Right;
    .registers 5

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 312
    :goto_6
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 313
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_17

    int-to-char v2, v1

    .line 314
    invoke-static {v2}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 315
    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights$Right;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/Rights$Right;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 298
    :goto_2
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_10

    .line 299
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    return v1
.end method

.method public remove(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public remove(Lcom/sun/mail/imap/Rights;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 239
    :goto_2
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 240
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_f

    .line 241
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aput-boolean v0, v2, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 337
    :goto_6
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 338
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_13

    int-to-char v2, v1

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 340
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
