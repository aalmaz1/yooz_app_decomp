.class public Ljavax/mail/internet/AddressException;
.super Ljavax/mail/internet/ParseException;
.source "AddressException.java"


# static fields
.field private static final serialVersionUID:J = 0x7ec48f3eab5368f0L


# instance fields
.field protected pos:I

.field protected ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Ljavax/mail/internet/AddressException;->pos:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 91
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 104
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 105
    iput p3, p0, Ljavax/mail/internet/AddressException;->pos:I

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .line 125
    iget v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    return v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    invoke-super {p0}, Ljavax/mail/internet/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in string ``"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I

    if-gez v1, :cond_1

    return-object v0

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
