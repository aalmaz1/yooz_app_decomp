.class Lcom/sun/mail/pop3/Response;
.super Ljava/lang/Object;
.source "Protocol.java"


# instance fields
.field bytes:Ljava/io/InputStream;

.field data:Ljava/lang/String;

.field ok:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/sun/mail/pop3/Response;->ok:Z

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    return-void
.end method
