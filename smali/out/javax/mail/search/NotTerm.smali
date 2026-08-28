.class public final Ljavax/mail/search/NotTerm;
.super Ljavax/mail/search/SearchTerm;
.source "NotTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x63420cc8aadc1008L


# instance fields
.field private term:Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 62
    iput-object p1, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 85
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_6
    check-cast p1, Ljavax/mail/search/NotTerm;

    .line 88
    iget-object p1, p1, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getTerm()Ljavax/mail/search/SearchTerm;
    .registers 2

    .line 71
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 96
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 3

    .line 77
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
