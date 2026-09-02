.class public Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;
.super Ljava/lang/Object;
.source "NotificationAppListEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appName:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private crudState:I

.field private id:I

.field private isChecked:Z

.field private isEnabled:Z

.field private isSynchronizeNetwork:Z

.field public mac:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    .line 52
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    .line 56
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appPackageName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    .line 61
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appPackageName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appName:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrudState()I
    .registers 2

    .line 67
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->crudState:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 75
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->id:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    .line 83
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->position:I

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    return v0
.end method

.method public isSynchronizeNetwork()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;
    .registers 2

    .line 103
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appPackageName:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked:Z

    return-void
.end method

.method public setCrudState(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->crudState:I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->id:I

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->position:I

    return-void
.end method

.method public setSynchronizeNetwork(Z)V
    .registers 2

    .line 120
    iput-boolean p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationAppListEntity{crudState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->crudState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSynchronizeNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
