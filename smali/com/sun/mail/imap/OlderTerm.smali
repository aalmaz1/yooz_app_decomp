.class public final Lcom/sun/mail/imap/OlderTerm;
.super Ljavax/mail/search/SearchTerm;
.source "OlderTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x36d50d5ec274bd22L


# instance fields
.field private interval:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 67
    iput p1, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 108
    instance-of v0, p1, Lcom/sun/mail/imap/OlderTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 110
    :cond_6
    iget v0, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    check-cast p1, Lcom/sun/mail/imap/OlderTerm;

    iget p1, p1, Lcom/sun/mail/imap/OlderTerm;->interval:I

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getInterval()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 11

    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_1c

    if-nez p1, :cond_8

    return v0

    .line 99
    :cond_8
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget p1, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    int-to-long v5, p1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1c

    const/4 v0, 0x1

    :catch_1c
    :cond_1c
    return v0
.end method
