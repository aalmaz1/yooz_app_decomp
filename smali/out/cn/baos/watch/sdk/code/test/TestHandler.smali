.class public Lcn/baos/watch/sdk/code/test/TestHandler;
.super Landroid/os/Handler;
.source "TestHandler.java"

# static fields
.field private static instance:Lcn/baos/watch/sdk/code/test/TestHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1
    new-instance v0, Lcn/baos/watch/sdk/code/test/TestHandler;
    invoke-direct {v0}, Lcn/baos/watch/sdk/code/test/TestHandler;-><init>()V
    sput-object v0, Lcn/baos/watch/sdk/code/test/TestHandler;->instance:Lcn/baos/watch/sdk/code/test/TestHandler;
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;
    .registers 1
    sget-object v0, Lcn/baos/watch/sdk/code/test/TestHandler;->instance:Lcn/baos/watch/sdk/code/test/TestHandler;
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    return-void
.end method
