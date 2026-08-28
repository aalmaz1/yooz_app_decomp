.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 1

    .line 228
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDSet()[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object p0

    return-object p0
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .registers 9

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 84
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_55

    .line 85
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 86
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_53

    .line 89
    :cond_15
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    if-eqz p1, :cond_22

    .line 91
    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_53

    .line 94
    :cond_22
    new-instance v3, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v3}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 95
    iput v4, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    :goto_29
    add-int/lit8 v2, v2, 0x1

    .line 98
    array-length v5, p0

    if-ge v2, v5, :cond_4e

    .line 100
    aget-object v5, p0, v2

    check-cast v5, Lcom/sun/mail/imap/IMAPMessage;

    .line 102
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_29

    .line 104
    :cond_39
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    if-eqz p1, :cond_46

    .line 107
    invoke-interface {p1, v5}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_29

    :cond_46
    add-int/lit8 v5, v4, 0x1

    if-ne v6, v5, :cond_4c

    move v4, v6

    goto :goto_29

    :cond_4c
    add-int/lit8 v2, v2, -0x1

    .line 120
    :cond_4e
    iput v4, v3, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_53
    add-int/2addr v2, v1

    goto :goto_7

    .line 124
    :cond_55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/mail/imap/protocol/MessageSet;

    return-object p0
.end method

.method public static toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .registers 3

    .line 154
    invoke-virtual {p0}, [Ljavax/mail/Message;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/mail/Message;

    .line 155
    new-instance v0, Lcom/sun/mail/imap/Utility$1;

    invoke-direct {v0}, Lcom/sun/mail/imap/Utility$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 162
    invoke-static {p0, p1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p0

    return-object p0
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 11

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 177
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_46

    .line 178
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 179
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_44

    .line 182
    :cond_15
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    .line 184
    new-instance v5, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v5}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 185
    iput-wide v3, v5, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :goto_20
    add-int/lit8 v2, v2, 0x1

    .line 188
    array-length v6, p0

    if-ge v2, v6, :cond_3f

    .line 190
    aget-object v6, p0, v2

    check-cast v6, Lcom/sun/mail/imap/IMAPMessage;

    .line 192
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_30

    goto :goto_20

    .line 194
    :cond_30
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v8, v3

    cmp-long v8, v6, v8

    if-nez v8, :cond_3d

    move-wide v3, v6

    goto :goto_20

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    .line 206
    :cond_3f
    iput-wide v3, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 207
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44
    add-int/2addr v2, v1

    goto :goto_7

    .line 210
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4e

    const/4 p0, 0x0

    return-object p0

    .line 213
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object p0
.end method
