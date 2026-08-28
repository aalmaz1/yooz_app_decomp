.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 60
    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 84
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_34

    .line 85
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 86
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 89
    array-length v3, p0

    if-ge v1, v3, :cond_28

    .line 90
    aget-wide v3, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, p0, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_16

    :cond_28
    add-int/lit8 v1, v1, -0x1

    .line 93
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 97
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 98
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object p0
.end method

.method public static parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 111
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ",:"

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    :goto_11
    move-object p0, v0

    .line 116
    :goto_12
    :try_start_12
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 117
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz p0, :cond_11

    .line 120
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2a
    const-string v4, ":"

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_12

    .line 125
    :cond_33
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    if-eqz p0, :cond_3c

    .line 127
    iput-wide v3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    goto :goto_12

    .line 129
    :cond_3c
    new-instance v5, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v5, v3, v4, v3, v4}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>(JJ)V
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_41} :catch_43

    move-object p0, v5

    goto :goto_12

    :catch_43
    :cond_43
    if-eqz p0, :cond_48

    .line 136
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 138
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object p0
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_12

    .line 230
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_12

    aget-object v4, p0, v3

    .line 231
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    return-wide v0
.end method

.method private static size([Lcom/sun/mail/imap/protocol/UIDSet;J)J
    .registers 16

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2f

    .line 246
    array-length v2, p0

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_7
    if-ge v3, v2, :cond_2e

    aget-object v6, p0, v3

    cmp-long v7, p1, v0

    if-gez v7, :cond_15

    .line 248
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v6

    :goto_13
    add-long/2addr v4, v6

    goto :goto_2b

    .line 249
    :cond_15
    iget-wide v7, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    cmp-long v9, v7, p1

    if-gtz v9, :cond_2b

    .line 250
    iget-wide v9, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v6, v9, p1

    const-wide/16 v11, 0x1

    if-gez v6, :cond_27

    sub-long/2addr v9, v7

    add-long/2addr v9, v11

    add-long/2addr v4, v9

    goto :goto_2b

    :cond_27
    sub-long v6, p1, v7

    add-long/2addr v6, v11

    goto :goto_13

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2e
    move-wide v0, v4

    :cond_2f
    return-wide v0
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J
    .registers 11

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_4
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 189
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v2, v1, :cond_26

    aget-object v4, p0, v2

    .line 190
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :goto_14
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v7, v5, v7

    if-gtz v7, :cond_23

    add-int/lit8 v7, v3, 0x1

    .line 191
    aput-wide v5, v0, v3

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    move v3, v7

    goto :goto_14

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    return-object v0
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J
    .registers 13

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;J)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 210
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v2, v1, :cond_31

    aget-object v4, p0, v2

    .line 211
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :goto_14
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v7, v5, v7

    if-gtz v7, :cond_2e

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-ltz v7, :cond_25

    cmp-long v7, v5, p1

    if-lez v7, :cond_25

    goto :goto_2e

    :cond_25
    add-int/lit8 v7, v3, 0x1

    .line 214
    aput-wide v5, v0, v3

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    move v3, v7

    goto :goto_14

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_31
    return-object v0
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    const-string p0, ""

    return-object p0

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    array-length v1, p0

    const/4 v2, 0x0

    .line 159
    :goto_11
    aget-object v3, p0, v2

    iget-wide v4, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 160
    iget-wide v6, v3, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_29

    .line 163
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 165
    :cond_29
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_35

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    const/16 v3, 0x2c

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11
.end method


# virtual methods
.method public size()J
    .registers 5

    .line 69
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
