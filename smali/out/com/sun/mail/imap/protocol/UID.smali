.class public Lcom/sun/mail/imap/protocol/UID;
.super Ljava/lang/Object;
.source "UID.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field public seqnum:I

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 53
    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/UID;->name:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x55s
        0x49s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    .line 66
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/UID;->uid:J

    return-void
.end method
