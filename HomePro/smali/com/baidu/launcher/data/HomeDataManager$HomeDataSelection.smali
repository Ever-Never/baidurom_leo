.class public Lcom/baidu/launcher/data/HomeDataManager$HomeDataSelection;
.super Ljava/lang/Object;
.source "HomeDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/HomeDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeDataSelection"
.end annotation


# static fields
.field public static final SELECT_ALL:Ljava/lang/String; = "isPreset<1 or isPreset is null"

.field public static final SELECT_DISABLE_ICON:Ljava/lang/String; = "(itemType=20) and (container< 0 ) and (isPreset<1 or isPreset is null)"

.field public static final SELECT_ICON:Ljava/lang/String; = "(itemType=0 or itemType=1) and (isPreset<1 or isPreset is null)"

.field public static final SELECT_WIDGET:Ljava/lang/String; = "(itemType=4 or itemType=5) and (isPreset<1 or isPreset is null)"


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$HomeDataSelection;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
