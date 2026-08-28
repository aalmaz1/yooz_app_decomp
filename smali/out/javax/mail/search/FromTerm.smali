.class public final Ljavax/mail/search/FromTerm;
.super Ljavax/mail/search/AddressTerm;
.source "FromTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x485e7192407c3469L


# direct methods
.method public constructor <init>(Ljavax/mail/Address;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Ljavax/mail/search/AddressTerm;-><init>(Ljavax/mail/Address;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 94
    instance-of v0, p1, Ljavax/mail/search/FromTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5

    const/4 v0, 0x0

    .line 75
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_19

    if-nez p1, :cond_8

    return v0

    :cond_8
    move v1, v0

    .line 83
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 84
    aget-object v2, p1, v1

    invoke-super {p0, v2}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_19
    :cond_19
    return v0
.end method
