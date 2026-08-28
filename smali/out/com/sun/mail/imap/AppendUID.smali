.class public Lcom/sun/mail/imap/AppendUID;
.super Ljava/lang/Object;
.source "AppendUID.java"


# instance fields
.field public uid:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    .line 59
    iput-wide p3, p0, Lcom/sun/mail/imap/AppendUID;->uid:J

    return-void
.end method
