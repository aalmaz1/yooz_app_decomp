.class public Ljavax/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field private static final serialVersionUID:J = -0x690b2c48c7581fd5L


# instance fields
.field private next:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object p2, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method private final superToString()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextException()Ljava/lang/Exception;
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextException(Ljava/lang/Exception;)Z
    .locals 2

    monitor-enter p0

    move-object v0, p0

    .line 131
    :goto_0
    :try_start_0
    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Ljavax/mail/MessagingException;

    iget-object v0, v0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    goto :goto_0

    .line 137
    :cond_0
    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Ljavax/mail/MessagingException;

    iput-object p1, v0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 141
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 153
    monitor-exit p0

    return-object v0

    .line 154
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, ";\n  nested exception is:\n\t"

    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    instance-of v0, v1, Ljavax/mail/MessagingException;

    if-eqz v0, :cond_2

    .line 158
    check-cast v1, Ljavax/mail/MessagingException;

    .line 159
    invoke-direct {v1}, Ljavax/mail/MessagingException;->superToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
