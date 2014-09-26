.class Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;
.super Ljava/lang/Object;
.source "BaiduThemeActivity.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;->this$1:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 237
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 239
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 240
    return-object v0
.end method
