.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;
.super Ljava/lang/Object;
.source "AppRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseItem"
.end annotation


# instance fields
.field public mActiveSince:J

.field public mBackground:Z

.field public mCurSeq:I

.field public mCurSizeStr:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mDisplayLabel:Ljava/lang/CharSequence;

.field public final mIsProcess:Z

.field public mLabel:Ljava/lang/String;

.field public mNeedDivider:Z

.field public mPackageInfo:Landroid/content/pm/ApplicationInfo;

.field public mSize:J

.field public mSizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isProcess"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;->mIsProcess:Z

    .line 140
    return-void
.end method
