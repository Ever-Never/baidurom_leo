.class Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
.super Ljava/lang/Object;
.source "AppDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/AppDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field private mId:J

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/AppDownloadManager;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-wide p2, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mId:J

    .line 182
    iput-object p4, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mPkgName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mId:J

    return-wide v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mPkgName:Ljava/lang/String;

    return-object v0
.end method
