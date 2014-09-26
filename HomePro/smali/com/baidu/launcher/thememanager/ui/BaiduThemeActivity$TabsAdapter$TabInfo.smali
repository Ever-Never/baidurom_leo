.class final Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "BaiduThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;

.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "_tag"
    .parameter
    .parameter "_args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p3, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;->this$1:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;->tag:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 222
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 223
    return-void
.end method
