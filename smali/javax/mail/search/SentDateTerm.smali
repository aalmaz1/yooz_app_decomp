.class public final Ljavax/mail/search/SentDateTerm;
.super Ljavax/mail/search/DateTerm;
.source "SentDateTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x4e60db46f5385c7fL


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Ljavax/mail/search/DateTerm;-><init>(ILjava/util/Date;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 94
    instance-of v0, p1, Ljavax/mail/search/SentDateTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 3

    const/4 v0, 0x0

    .line 78
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_d

    if-nez p1, :cond_8

    return v0

    .line 86
    :cond_8
    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->match(Ljava/util/Date;)Z

    move-result p1

    return p1

    :catch_d
    return v0
.end method
