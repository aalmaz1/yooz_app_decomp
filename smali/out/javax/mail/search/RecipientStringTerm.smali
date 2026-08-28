.class public final Ljavax/mail/search/RecipientStringTerm;
.super Ljavax/mail/search/AddressStringTerm;
.source "RecipientStringTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x7318a6c781f26a21L


# instance fields
.field private type:Ljavax/mail/Message$RecipientType;


# direct methods
.method public constructor <init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0, p2}, Ljavax/mail/search/AddressStringTerm;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 120
    instance-of v0, p1, Ljavax/mail/search/RecipientStringTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 122
    :cond_6
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientStringTerm;

    .line 123
    iget-object v0, v0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    iget-object v2, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-super {p0, p1}, Ljavax/mail/search/AddressStringTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public getRecipientType()Ljavax/mail/Message$RecipientType;
    .registers 2

    .line 85
    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 131
    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/AddressStringTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5

    const/4 v0, 0x0

    .line 101
    :try_start_1
    iget-object v1, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_1b

    if-nez p1, :cond_a

    return v0

    :cond_a
    move v1, v0

    .line 109
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 110
    aget-object v2, p1, v1

    invoke-super {p0, v2}, Ljavax/mail/search/AddressStringTerm;->match(Ljavax/mail/Address;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_1b
    :cond_1b
    return v0
.end method
