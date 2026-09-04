.class public Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;
.super Ljava/lang/Object;
.source "NlpEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/NlpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleModel"
.end annotation


# instance fields
.field private circleExtra:I

.field private circleType:I

.field private dayOfMouth:I

.field private dayOfWeek:I

.field private mouthOfYear:I

.field private weekOfMouth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCircleExtra()I
    .locals 1

    .line 155
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->circleExtra:I

    return v0
.end method

.method public getCircleType()I
    .locals 1

    .line 147
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->circleType:I

    return v0
.end method

.method public getDayOfMouth()I
    .locals 1

    .line 171
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->dayOfMouth:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .line 163
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->dayOfWeek:I

    return v0
.end method

.method public getMouthOfYear()I
    .locals 1

    .line 187
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->mouthOfYear:I

    return v0
.end method

.method public getWeekOfMouth()I
    .locals 1

    .line 179
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->weekOfMouth:I

    return v0
.end method

.method public setCircleExtra(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->circleExtra:I

    return-void
.end method

.method public setCircleType(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->circleType:I

    return-void
.end method

.method public setDayOfMouth(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->dayOfMouth:I

    return-void
.end method

.method public setDayOfWeek(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->dayOfWeek:I

    return-void
.end method

.method public setMouthOfYear(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->mouthOfYear:I

    return-void
.end method

.method public setWeekOfMouth(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->weekOfMouth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CircleModel{circleType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->circleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", circleExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->circleExtra:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->dayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfMouth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->dayOfMouth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weekOfMouth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->weekOfMouth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mouthOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->mouthOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
