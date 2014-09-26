.class Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;
.super Ljava/lang/Object;
.source "ThemeLocalFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .line 206
    .local v1, ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    .line 207
    .local v0, themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 209
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteTheme(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Ljava/util/ArrayList;)V

    .line 211
    const/4 v2, 0x1

    return v2
.end method
