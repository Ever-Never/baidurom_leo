.class public Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;
.super Ljava/lang/Object;
.source "TaskDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public errorCode:I

.field public localPath:Ljava/lang/String;

.field public remotePath:Ljava/lang/String;

.field public status:I

.field public total:J

.field public transferred:J

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail$1;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail$1;-><init>()V

    .line 49
    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->uuid:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->localPath:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->remotePath:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->status:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->errorCode:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->action:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->transferred:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->total:J

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->localPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->remotePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->transferred:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/TaskDetail;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    return-void
.end method
