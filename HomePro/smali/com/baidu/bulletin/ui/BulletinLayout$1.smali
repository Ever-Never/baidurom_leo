.class Lcom/baidu/bulletin/ui/BulletinLayout$1;
.super Ljava/lang/Object;
.source "BulletinLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/BulletinLayout;->initBulletinScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/BulletinLayout;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/BulletinLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinLayout$1;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method
