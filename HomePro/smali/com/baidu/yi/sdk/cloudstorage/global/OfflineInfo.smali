.class public Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
.super Ljava/lang/Object;
.source "OfflineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ctime:J

.field public filesize:J

.field public finishsize:J

.field public ftime:J

.field public result:I

.field public status:I

.field public stime:J

.field public taskid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo$1;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo$1;-><init>()V

    .line 49
    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->taskid:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->result:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->status:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->filesize:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->finishsize:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->ctime:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->stime:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->ftime:J

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
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->taskid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->filesize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->finishsize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->ctime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->stime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->ftime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    return-void
.end method
