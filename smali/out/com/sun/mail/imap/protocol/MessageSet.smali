.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;
.source "MessageSet.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 58
    iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    return-void
.end method

.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
    .registers 6

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 80
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_2d

    .line 81
    new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 82
    aget v3, p0, v1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 85
    array-length v3, p0

    if-ge v1, v3, :cond_21

    .line 86
    aget v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_12

    :cond_21
    add-int/lit8 v1, v1, -0x1

    .line 89
    aget v3, p0, v1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 93
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/mail/imap/protocol/MessageSet;

    return-object p0
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 139
    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 140
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_35

    .line 103
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_35

    .line 107
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    array-length v1, p0

    const/4 v2, 0x0

    .line 112
    :goto_d
    aget-object v3, p0, v2

    iget v4, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 113
    iget v3, v3, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    if-le v3, v4, :cond_23

    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 118
    :cond_23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_26
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_2f

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const/16 v3, 0x2c

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public size()I
    .registers 3

    .line 67
    iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
