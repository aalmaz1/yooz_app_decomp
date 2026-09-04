.class Ljavax/mail/EventQueue$QueueElement;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueElement"
.end annotation


# instance fields
.field event:Ljavax/mail/event/MailEvent;

.field vector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "+",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/mail/event/MailEvent;",
            "Ljava/util/Vector<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 92
    iput-object p2, p0, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    return-void
.end method
