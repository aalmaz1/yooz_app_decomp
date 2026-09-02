.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private volatile transportListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/TransportListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const/4 p1, 0x0

    .line 367
    iput-object p1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 124
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static send(Ljavax/mail/Message;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 174
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 202
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "No recipient addresses"

    if-eqz v0, :cond_173

    .line 209
    array-length v4, v0

    if-eqz v4, :cond_173

    .line 216
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 220
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    .line 224
    :goto_23
    array-length v10, v0

    if-ge v9, v10, :cond_5a

    .line 226
    aget-object v10, v0, v9

    invoke-virtual {v10}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 227
    aget-object v10, v0, v9

    invoke-virtual {v10}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 228
    aget-object v11, v0, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 231
    :cond_44
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    aget-object v11, v0, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    aget-object v11, v0, v9

    invoke-virtual {v11}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 237
    :cond_5a
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v9

    if-eqz v9, :cond_16d

    .line 241
    iget-object v3, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    const/4 v10, 0x0

    if-eqz v3, :cond_68

    iget-object v3, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_70

    .line 242
    :cond_68
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-static {v3, v10}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v3

    :goto_70
    const/4 v11, 0x1

    if-ne v9, v11, :cond_90

    .line 249
    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v3

    if-eqz v2, :cond_81

    move-object/from16 v4, p3

    .line 252
    :try_start_7d
    invoke-virtual {v3, v2, v4}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 254
    :cond_81
    invoke-virtual {v3}, Ljavax/mail/Transport;->connect()V

    .line 255
    :goto_84
    invoke-virtual {v3, v1, v0}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_8b

    .line 257
    invoke-virtual {v3}, Ljavax/mail/Transport;->close()V

    return-void

    :catchall_8b
    move-exception v0

    invoke-virtual {v3}, Ljavax/mail/Transport;->close()V

    .line 258
    throw v0

    .line 269
    :cond_90
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v8

    move-object v14, v10

    :cond_9a
    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 270
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v12, v9, [Ljavax/mail/Address;

    .line 271
    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 274
    aget-object v4, v12, v8

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v4

    if-nez v4, :cond_c2

    move v4, v8

    :goto_b8
    if-ge v4, v9, :cond_9a

    .line 278
    aget-object v13, v12, v4

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    .line 282
    :cond_c2
    :try_start_c2
    invoke-virtual {v4}, Ljavax/mail/Transport;->connect()V

    .line 283
    invoke-virtual {v4, v1, v12}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_c8
    .catch Ljavax/mail/SendFailedException; {:try_start_c2 .. :try_end_c8} :catch_db
    .catch Ljavax/mail/MessagingException; {:try_start_c2 .. :try_end_c8} :catch_ce
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_cc

    .line 317
    invoke-virtual {v4}, Ljavax/mail/Transport;->close()V

    goto :goto_9a

    :catchall_cc
    move-exception v0

    goto :goto_119

    :catch_ce
    move-exception v0

    if-nez v14, :cond_d3

    move-object v14, v0

    goto :goto_d6

    .line 315
    :cond_d3
    :try_start_d3
    invoke-virtual {v14, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_cc

    .line 317
    :cond_d6
    :goto_d6
    invoke-virtual {v4}, Ljavax/mail/Transport;->close()V

    move v0, v11

    goto :goto_9a

    :catch_db
    move-exception v0

    if-nez v14, :cond_e0

    move-object v14, v0

    goto :goto_e3

    .line 290
    :cond_e0
    :try_start_e0
    invoke-virtual {v14, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 293
    :goto_e3
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v9

    if-eqz v9, :cond_f5

    move v12, v8

    .line 295
    :goto_ea
    array-length v13, v9

    if-ge v12, v13, :cond_f5

    .line 296
    aget-object v13, v9, v12

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_ea

    .line 299
    :cond_f5
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v9

    if-eqz v9, :cond_107

    move v12, v8

    .line 301
    :goto_fc
    array-length v13, v9

    if-ge v12, v13, :cond_107

    .line 302
    aget-object v13, v9, v12

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_fc

    .line 305
    :cond_107
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_d6

    move v9, v8

    .line 307
    :goto_10e
    array-length v12, v0

    if-ge v9, v12, :cond_d6

    .line 308
    aget-object v12, v0, v9

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_116
    .catchall {:try_start_e0 .. :try_end_116} :catchall_cc

    add-int/lit8 v9, v9, 0x1

    goto :goto_10e

    .line 317
    :goto_119
    invoke-virtual {v4}, Ljavax/mail/Transport;->close()V

    .line 318
    throw v0

    :cond_11d
    if-nez v0, :cond_12d

    .line 322
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12c

    goto :goto_12d

    :cond_12c
    return-void

    .line 326
    :cond_12d
    :goto_12d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13e

    .line 327
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    .line 328
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v15, v0

    goto :goto_13f

    :cond_13e
    move-object v15, v10

    .line 330
    :goto_13f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_151

    .line 331
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    .line 332
    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v16, v0

    goto :goto_153

    :cond_151
    move-object/from16 v16, v10

    .line 334
    :goto_153
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_162

    .line 335
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Ljavax/mail/Address;

    .line 336
    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_162
    move-object/from16 v17, v10

    .line 338
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v13, "Sending failed"

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    .line 239
    :cond_16d
    new-instance v0, Ljavax/mail/SendFailedException;

    invoke-direct {v0, v3}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_173
    new-instance v0, Ljavax/mail/SendFailedException;

    invoke-direct {v0, v3}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3

    monitor-enter p0

    .line 379
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 380
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 381
    :cond_c
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 382
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .registers 14

    .line 417
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    .line 420
    :cond_5
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 422
    iget-object p1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, p1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3

    monitor-enter p0

    .line 394
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 395
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 396
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
