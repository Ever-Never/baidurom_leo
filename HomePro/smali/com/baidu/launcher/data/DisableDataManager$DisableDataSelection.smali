.class public Lcom/baidu/launcher/data/DisableDataManager$DisableDataSelection;
.super Ljava/lang/Object;
.source "DisableDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/DisableDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisableDataSelection"
.end annotation


# static fields
.field public static final SELECT_ALL:Ljava/lang/String; = "isDisable != 0 "

.field public static final SELECT_NOT_DISABLE:Ljava/lang/String; = "isDisable = 0 "


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/DisableDataManager;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/data/DisableDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/launcher/data/DisableDataManager$DisableDataSelection;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
