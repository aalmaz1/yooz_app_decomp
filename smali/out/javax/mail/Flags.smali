.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Flags$Flag;
    }
.end annotation


# static fields
.field private static final ANSWERED_BIT:I = 0x1

.field private static final DELETED_BIT:I = 0x2

.field private static final DRAFT_BIT:I = 0x4

.field private static final FLAGGED_BIT:I = 0x8

.field private static final RECENT_BIT:I = 0x10

.field private static final SEEN_BIT:I = 0x20

.field private static final USER_BIT:I = -0x80000000

.field private static final serialVersionUID:J = 0x56a5b06539097bc4L


# instance fields
.field private system_flags:I

.field private user_flags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 218
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 219
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
    .registers 4

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 209
    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 198
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 199
    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz p1, :cond_19

    .line 200
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    iput-object p1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4

    .line 237
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    .line 238
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 239
    :cond_c
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljavax/mail/Flags$Flag;)V
    .registers 3

    .line 228
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public add(Ljavax/mail/Flags;)V
    .registers 6

    .line 249
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 251
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_35

    .line 252
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_17

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 255
    :cond_17
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 257
    :goto_1d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 258
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_35
    return-void
.end method

.method public clearSystemFlags()V
    .registers 2

    const/4 v0, 0x0

    .line 490
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public clearUserFlags()V
    .registers 2

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 510
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 514
    :goto_8
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_14

    .line 515
    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_14
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    .line 358
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 361
    :cond_6
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljavax/mail/Flags$Flag;)Z
    .registers 3

    .line 348
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public contains(Ljavax/mail/Flags;)Z
    .registers 5

    .line 374
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_9

    return v2

    .line 378
    :cond_9
    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz p1, :cond_29

    .line 379
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    return v2

    .line 381
    :cond_12
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 383
    :cond_16
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 384
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v2

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 400
    instance-of v0, p1, Ljavax/mail/Flags;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 403
    :cond_6
    check-cast p1, Ljavax/mail/Flags;

    .line 406
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v2, p0, Ljavax/mail/Flags;->system_flags:I

    if-eq v0, v2, :cond_f

    return v1

    .line 410
    :cond_f
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 411
    :goto_19
    iget-object v2, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v2, :cond_1f

    move v2, v1

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    :goto_23
    if-nez v0, :cond_29

    if-nez v2, :cond_29

    const/4 p1, 0x1

    return p1

    .line 414
    :cond_29
    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v3, :cond_42

    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v3, :cond_42

    if-ne v2, v0, :cond_42

    .line 415
    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_42
    return v1
.end method

.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
    .registers 4

    .line 443
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 444
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    .line 445
    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 446
    :cond_10
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 447
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 448
    :cond_1b
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    .line 449
    sget-object v1, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 450
    :cond_26
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_31

    .line 451
    sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 452
    :cond_31
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3c

    .line 453
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 454
    :cond_3c
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_47

    .line 455
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 456
    :cond_47
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_53

    .line 457
    sget-object v1, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 459
    :cond_53
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Flags$Flag;

    .line 460
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getUserFlags()[Ljava/lang/String;
    .registers 4

    .line 471
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 472
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_1b

    .line 473
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 475
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 476
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d

    .line 479
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .line 427
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 428
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_1c

    .line 429
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 430
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 431
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_a

    :cond_1c
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .line 279
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_d

    .line 280
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public remove(Ljavax/mail/Flags$Flag;)V
    .registers 3

    .line 270
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public remove(Ljavax/mail/Flags;)V
    .registers 4

    .line 290
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 292
    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz p1, :cond_25

    .line 293
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_11

    return-void

    .line 296
    :cond_11
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 297
    :goto_15
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 298
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_25
    return-void
.end method

.method public retainAll(Ljavax/mail/Flags;)Z
    .registers 8

    .line 314
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_d

    .line 316
    iput v1, p0, Ljavax/mail/Flags;->system_flags:I

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v3

    .line 322
    :goto_e
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_48

    iget v4, p1, Ljavax/mail/Flags;->system_flags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_48

    .line 323
    iget-object v4, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v4, :cond_3c

    .line 324
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 325
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 326
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    iget-object v4, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 328
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_21

    .line 334
    :cond_3c
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result p1

    if-lez p1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    move v0, v2

    :cond_48
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const-string v1, "\\Answered "

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_10
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    const-string v1, "\\Deleted "

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_1b
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    const-string v1, "\\Draft "

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_26
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_31

    const-string v1, "\\Flagged "

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_31
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3c

    const-string v1, "\\Recent "

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_3c
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-eqz v1, :cond_48

    const-string v1, "\\Seen "

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_48
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v4, -0x80000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_54

    const-string v1, "\\* "

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_54
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_74

    .line 543
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    move v4, v2

    .line 545
    :goto_5d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_75

    if-eqz v4, :cond_67

    const/4 v4, 0x0

    goto :goto_6a

    .line 549
    :cond_67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    :goto_6a
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_74
    move v4, v2

    :cond_75
    if-eqz v4, :cond_85

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_85

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 557
    :cond_85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
