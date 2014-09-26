.class public Lcom/baidu/bulletin/ui/detail/CommonGenerateTime;
.super Ljava/lang/Object;
.source "CommonGenerateTime.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/IGenerateTime;


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/baidu/bulletin/ui/detail/CommonGenerateTime;->mTime:J

    .line 12
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 16
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v3, p0, Lcom/baidu/bulletin/ui/detail/CommonGenerateTime;->mTime:J

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 18
    .local v0, curDate:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, dateString:Ljava/lang/String;
    return-object v1
.end method
