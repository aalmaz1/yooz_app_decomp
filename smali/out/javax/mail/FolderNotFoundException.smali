.class public Ljavax/mail/FolderNotFoundException;
.super Ljavax/mail/MessagingException;
.source "FolderNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x68f0e358302dafbL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/Folder;)V
    .registers 3

    .line 111
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 112
    iput-object p2, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 72
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .registers 3

    .line 84
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 99
    invoke-direct {p0, p2, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .registers 2

    .line 122
    iget-object v0, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
