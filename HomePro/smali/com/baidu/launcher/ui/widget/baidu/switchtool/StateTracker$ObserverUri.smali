.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObserverUri"
.end annotation


# instance fields
.field mIsSecure:Z

.field mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "aUri"
    .parameter "aIsSecure"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;->mUri:Ljava/lang/String;

    .line 54
    iput-boolean p2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;->mIsSecure:Z

    .line 55
    return-void
.end method
