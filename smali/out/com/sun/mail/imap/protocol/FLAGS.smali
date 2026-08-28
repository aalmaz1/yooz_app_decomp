.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;
.source "FLAGS.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C

.field private static final serialVersionUID:J = 0x617d1827c5428feL


# instance fields
.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 55
    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x46s
        0x4cs
        0x41s
        0x47s
        0x53s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I

    .line 69
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 70
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9c

    const/4 v0, 0x0

    move v1, v0

    .line 72
    :goto_14
    array-length v2, p1

    if-ge v1, v2, :cond_9c

    .line 73
    aget-object v2, p1, v1

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_95

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_95

    const/4 v3, 0x1

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_8f

    const/16 v5, 0x41

    if-eq v3, v5, :cond_89

    const/16 v5, 0x44

    const/16 v6, 0x52

    if-eq v3, v5, :cond_5f

    const/16 v4, 0x46

    if-eq v3, v4, :cond_59

    if-eq v3, v6, :cond_53

    const/16 v4, 0x53

    if-eq v3, v4, :cond_4d

    .line 102
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    goto :goto_98

    .line 77
    :cond_4d
    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 80
    :cond_53
    sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 96
    :cond_59
    sget-object v2, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 83
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_85

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_7f

    const/16 v3, 0x45

    if-ne v2, v3, :cond_73

    goto :goto_7f

    :cond_73
    const/16 v3, 0x72

    if-eq v2, v3, :cond_79

    if-ne v2, v6, :cond_98

    .line 88
    :cond_79
    sget-object v2, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 86
    :cond_7f
    :goto_7f
    sget-object v2, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 90
    :cond_85
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    goto :goto_98

    .line 93
    :cond_89
    sget-object v2, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 99
    :cond_8f
    sget-object v2, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_98

    .line 106
    :cond_95
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    :cond_98
    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :cond_9c
    return-void
.end method
