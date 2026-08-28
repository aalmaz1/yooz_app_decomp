.class public Lcn/yoozworld/watch/utils/notifi/CustomNotification;
.super Ljava/lang/Object;
.source "CustomNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mIsCollapsible:Z

.field mIsOverride:Z

.field mIsPin:Z

.field mPriority:I

.field mTimeout:I

.field mType:I

.field mView:Lcn/yoozworld/watch/utils/notifi/NotificationView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/yoozworld/watch/utils/notifi/NotificationView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/CustomNotification$1;

    invoke-direct {v0}, Lcn/yoozworld/watch/utils/notifi/CustomNotification$1;-><init>()V

    sput-object v0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mTimeout:I

    .line 40
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsOverride:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mTimeout:I

    .line 40
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsOverride:Z

    const/4 v2, -0x1

    .line 48
    iput v2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mTimeout:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_22

    move v2, v1

    goto :goto_23

    :cond_22
    move v2, v0

    :goto_23
    iput-boolean v2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsPin:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v1

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    iput-boolean v2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsCollapsible:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_37

    move v0, v1

    :cond_37
    iput-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsOverride:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    return-void
.end method

.method public static cancel(I)V
    .registers 2

    .line 183
    invoke-static {}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->getInstance()Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->cancel(I)V

    return-void
.end method

.method private checkArgument()V
    .registers 3

    .line 177
    iget v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 178
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type should be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 153
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mView:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getNotificationView()Lcn/yoozworld/watch/utils/notifi/NotificationView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/yoozworld/watch/utils/notifi/NotificationView<",
            "TT;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mView:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 136
    iget v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 132
    iget v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mTimeout:I

    return v0
.end method

.method public isCollapsible()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsCollapsible:Z

    return v0
.end method

.method public isOverride()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsOverride:Z

    return v0
.end method

.method public isPin()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsPin:Z

    return v0
.end method

.method public setCollapsible(Z)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsCollapsible:Z

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;Z)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mData:Ljava/lang/Object;

    if-eqz p2, :cond_b

    .line 122
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getNotificationView()Lcn/yoozworld/watch/utils/notifi/NotificationView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->bindNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    :cond_b
    return-object p0
.end method

.method public setNotificationView(Lcn/yoozworld/watch/utils/notifi/NotificationView;)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/yoozworld/watch/utils/notifi/NotificationView<",
            "TT;>;)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mView:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    return-object p0
.end method

.method public setOverride(Z)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 105
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsOverride:Z

    return-object p0
.end method

.method public setPin(Z)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsPin:Z

    return-object p0
.end method

.method public setPriority(I)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iput p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    return-object p0
.end method

.method public setTimeOut(I)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iput p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mTimeout:I

    return-object p0
.end method

.method public setType(I)Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation

    .line 95
    iput p1, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    return-object p0
.end method

.method public show()V
    .registers 2

    .line 166
    invoke-direct {p0}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->checkArgument()V

    .line 167
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mView:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {v0, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->bindNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    .line 170
    :cond_a
    invoke-static {}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->getInstance()Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->notify(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 66
    iget p2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget p2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean p2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsPin:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-boolean p2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsCollapsible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-boolean p2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsOverride:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget p2, p0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
