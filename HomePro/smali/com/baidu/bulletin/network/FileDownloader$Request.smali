.class public Lcom/baidu/bulletin/network/FileDownloader$Request;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public MusciFileFlag:Z

.field public StreamingFileFlag:Z

.field public downloadUrl:Ljava/lang/String;

.field public imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field public obj:Ljava/lang/Object;

.field public songid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
