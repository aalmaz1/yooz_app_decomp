.class public Lcn/baos/watch/sdk/entitiy/CallInfoEntity;
.super Ljava/lang/Object;
.source "CallInfoEntity.java"


# instance fields
.field private getmIncomingNumName:Ljava/lang/String;

.field private mIncomingNum:Ljava/lang/String;

.field private phoneState:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->mIncomingNum:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getmIncomingNumName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGetIncomingNumName()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getmIncomingNumName:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingNum()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->mIncomingNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneState()I
    .registers 2

    .line 22
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->phoneState:I

    return v0
.end method

.method public setGetIncomingNumName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getmIncomingNumName:Ljava/lang/String;

    return-void
.end method

.method public setIncomingNum(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->mIncomingNum:Ljava/lang/String;

    return-void
.end method

.method public setPhoneState(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->phoneState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallInfoEntity{mIncomingNum=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->mIncomingNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', getmIncomingNumName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getmIncomingNumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', phoneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->phoneState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
