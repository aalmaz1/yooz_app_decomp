.class public abstract Ljavax/mail/search/AddressTerm;
.super Ljavax/mail/search/SearchTerm;
.source "AddressTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x1bd4a1b9715ebffcL


# instance fields
.field protected address:Ljavax/mail/Address;


# direct methods
.method protected constructor <init>(Ljavax/mail/Address;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 63
    iput-object p1, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 90
    instance-of v0, p1, Ljavax/mail/search/AddressTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_6
    check-cast p1, Ljavax/mail/search/AddressTerm;

    .line 93
    iget-object p1, p1, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Ljavax/mail/Address;
    .registers 2

    .line 72
    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 101
    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected match(Ljavax/mail/Address;)Z
    .registers 3

    .line 82
    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
