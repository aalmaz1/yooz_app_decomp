.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field private flags:Ljavax/mail/Flags;

.field private set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 79
    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    .line 80
    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 155
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 157
    :cond_6
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 158
    iget-boolean v0, p1, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v0, v2, :cond_19

    iget-object p1, p1, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public getFlags()Ljavax/mail/Flags;
    .registers 2

    .line 89
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 166
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    goto :goto_12

    :cond_b
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_12
    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 7

    const/4 v0, 0x0

    .line 111
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object p1

    .line 112
    iget-boolean v1, p0, Ljavax/mail/search/FlagTerm;->set:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 113
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v2

    :cond_13
    return v0

    .line 123
    :cond_14
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v1

    move v3, v0

    .line 126
    :goto_1b
    array-length v4, v1

    if-ge v3, v4, :cond_2a

    .line 127
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v4

    if-eqz v4, :cond_27

    return v0

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 132
    :cond_2a
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v1

    move v3, v0

    .line 135
    :goto_31
    array-length v4, v1

    if-ge v3, v4, :cond_40

    .line 136
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z

    move-result v4
    :try_end_3a
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_3a} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_3a} :catch_41

    if-eqz v4, :cond_3d

    return v0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_40
    return v2

    :catch_41
    return v0
.end method
