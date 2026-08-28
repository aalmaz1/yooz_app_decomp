.class Ljavax/mail/internet/InternetHeaders$MatchEnum;
.super Ljava/lang/Object;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchEnum"
.end annotation


# instance fields
.field private e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;"
        }
    .end annotation
.end field

.field private match:Z

.field private names:[Ljava/lang/String;

.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private want_line:Z


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    .line 186
    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    .line 187
    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    .line 188
    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->want_line:Z

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    return-void
.end method

.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .registers 5

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 228
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 231
    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-nez v2, :cond_16

    goto :goto_0

    .line 235
    :cond_16
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    if-nez v2, :cond_21

    .line 236
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v1, v0

    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    .line 239
    :goto_22
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    .line 240
    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 241
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 251
    :cond_3b
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_40
    return-object v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 198
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_a

    .line 199
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 200
    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .line 207
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_a

    .line 208
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 210
    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 215
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->want_line:Z

    if-eqz v1, :cond_18

    .line 216
    iget-object v0, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-object v0

    .line 218
    :cond_18
    new-instance v1, Ljavax/mail/Header;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 211
    :cond_26
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more headers"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
