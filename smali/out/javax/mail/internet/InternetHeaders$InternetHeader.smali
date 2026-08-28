.class public final Ljavax/mail/internet/InternetHeaders$InternetHeader;
.super Ljavax/mail/Header;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "InternetHeader"
.end annotation


# instance fields
.field line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    .line 120
    invoke-direct {p0, v0, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_14

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    goto :goto_1f

    :cond_14
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    .line 128
    :goto_1f
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    .line 138
    invoke-direct {p0, p1, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_21

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_24

    :cond_21
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :goto_24
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 4

    .line 150
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d

    .line 152
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-object v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 155
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 156
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_d

    const/16 v2, 0x9

    if-eq v1, v2, :cond_d

    const/16 v2, 0xd

    if-eq v1, v2, :cond_d

    const/16 v2, 0xa

    if-eq v1, v2, :cond_d

    .line 160
    :cond_2d
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
