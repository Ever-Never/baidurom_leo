.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullGridListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(I)V
    .locals 3
    .parameter "tab_index"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[I

    move-result-object v1

    aget v1, v1, p1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x9

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->requestThemeList(III)V
    invoke-static {v0, p1, v1, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;III)V

    .line 115
    return-void
.end method
