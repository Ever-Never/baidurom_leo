.class public Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;
.super Ljava/lang/Object;
.source "RawAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentItem"
.end annotation


# instance fields
.field public allDownload:Ljava/lang/String;

.field public docid:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconhigh:Ljava/lang/String;

.field public iconlow:Ljava/lang/String;

.field public packagename:Ljava/lang/String;

.field public refapptopicid:I

.field public score:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public sname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
