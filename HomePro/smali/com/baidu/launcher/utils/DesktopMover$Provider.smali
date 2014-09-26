.class public Lcom/baidu/launcher/utils/DesktopMover$Provider;
.super Ljava/lang/Object;
.source "DesktopMover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/DesktopMover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field public appLabel:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public grantReadPermission:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public packageName:Ljava/lang/String;

.field public readPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
